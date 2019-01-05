<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Transformers\UserTransformer;
use App\Transformers\AdminTransformer;
use Auth;

class UserApiController extends Controller
{
    public function get(user $data)
    {
        $result = $data->all();

        return fractal()
            ->collection($result)
            ->transformWith(new UserTransformer)
            ->toArray();
    }

    public function profile(Request $request, User $data)
    {
        $data = $data->find(Auth::user()->id);

        return fractal()
            ->item($data)
            ->transformWith(new UserTransformer)
            ->toArray();
    }

    //Register new user
    public function register(Request $request, User $data)
    {
        $this->validate($request,[
            'npm' => 'required|unique:users,npm',
            'name'  => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'nohp' => 'required',
            'alamat' => 'required',
        ]);

        $result = $data->create([
            'npm' => $request->npm,
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
            'nohp' => $request->nohp,
            'alamat' => $request->alamat,
            'api_token' => bcrypt($request->email),

        ]);
        
        $response = fractal()
            ->item($result)
            ->transformWith(new UserTransformer)
            ->addmeta([
                'token' => $result->api_token,
            ])
            ->toArray();
        
        return response()->json($response,201);
    }

     //Register new admin
     public function registeradmin(Request $request, User $data)
     {
         $this->validate($request,[
             'nip' => 'required|unique:users,nip',
             'name'  => 'required',
             'email' => 'required|email|unique:users',
             'password' => 'required|min:6',
             'nohp' => 'required',
             'alamat' => 'required',
             'status' => 'required',
         ]);
 
         $result = $data->create([
             'nip' => $request->nip,
             'name' => $request->name,
             'email' => $request->email,
             'password' => bcrypt($request->password),
             'nohp' => $request->nohp,
             'alamat' => $request->alamat,
             'api_token' => bcrypt($request->email),
             'status' => $request->status,
         ]);
         
         $response = fractal()
             ->item($result)
             ->transformWith(new AdminTransformer)
             ->addmeta([
                 'token' => $result->api_token,
             ])
             ->toArray();
         
         return response()->json($response,201);
     }

    //Login
    public function login(Request $request, User $data)
    {
        //normal auth
        if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return response()->json(['error' => 'Your credential is wrong'],401);
        }

        
        $data = $data->find(Auth::user()->id);

        return fractal()
            ->item($data)
            ->transformWith(new UserTransformer)
            ->addmeta([
                'token' => $data->api_token,
                'admin' => $data->admin,
            ])
            ->toArray();

        // if (Auth::guard('admin')->attempt(['nama' => $name, 'password' => $password])) {
        //     $details = Auth::guard('admin')->user();
        //     $user = $details['original'];
        //     return $user;
        // } else {
        //     return 'auth fail';
        // }
    }
}
