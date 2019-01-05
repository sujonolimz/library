<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\mahasiswa;
use App\Transformers\MahasiswaTransformer;
use Auth;

class MahasiswaController extends Controller
{
    //Get Mahasiswa Data Return to JSON File
    public function GetData(mahasiswa $data)
    {
        $result = $data->all();

        return fractal()
            ->collection($result)
            ->transformWith(new MahasiswaTransformer)
            ->toArray();
    }

    //Insert Mahasiswa Data Return to JSON File
    public function InsertData(Request $request, mahasiswa $data)
    {
        $this->validate($request,[
            'npm'       =>'required|unique:mahasiswa,NPM',
            'nama'      =>'required',
            'password'  =>'required|min:6',
            'alamat'    =>'required',
        ]);

        $insertdata = $data->create([
            'NPM'       => $request->npm,
            'Nama'      => $request->nama,
            'Password'  => bcrypt($request->password),
            'api_token' => bcrypt($request->npm),
            'Alamat'    => $request->alamat
        ]);

        $result = fractal()
            ->item($insertdata)
            ->transformWith(new MahasiswaTransformer)
            ->toArray();
        return response()->json($result,201);
    }

    public function login(Request $request, mahasiswa $data)
    {
        if ($data->NPM !== $request->npm) {
            return response()->json(['error' => 'Your credential is wrong'], 401);
        }
        // if (!Auth::attempt(['NPM' => $request->npm, 'Password' =>$request->password])) {
        //     return response()->json(['error' => 'Your credential is wrong', 401]);
        // }

         //$result = $data->find(Auth::user()->id);

        // return fractal()
        //     ->item($result)
        //     ->transformWith(new MahasiswaTransformer)
        //     ->toArray();
    }
}
