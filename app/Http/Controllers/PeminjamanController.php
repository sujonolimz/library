<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\peminjaman;
use App\User;
use App\Transformers\PeminjamanTransformer;
use Auth;
use DB;
class PeminjamanController extends Controller
{
     //Get peminjaman Data Return to JSON File API
     public function Get(peminjaman $data)
     {
         $data = $data->all();
 
         return fractal()
             ->collection($data)
             ->transformWith(new PeminjamanTransformer)
             ->toArray();
     }

     //Insert Peminjaman Data Return to JSON File API
    public function Insert(Request $request, peminjaman $data)
    {
        $this->validate($request,[
            'buku'           =>'required',
            // 'pekerja'        =>'required',
            'status'         =>'required',
        ]);

        $insertdata = $data->create([
            'ID_Mahasiswa'      => Auth::user()->id,
            'ID_Buku'           => $request->buku,
            // 'ID_Pekerja'        => $request->pekerja,
            'Status'            => $request->status,
        ]);

        $result = fractal()
            ->item($insertdata)
            ->transformWith(new PeminjamanTransformer)
            ->toArray();
        return response()->json($result,201);
    }

    //Update Data API by admin
    public function Update(Request $request, $id, Peminjaman $data)
    {
        $this->validate($request,[
            'status'         =>'required',
        ]);
        
        if(Auth::check())
        {
            $check = User::find(Auth::user()->id);
            $auth = $check->admin;
           
           if($auth !== 1)
           {
                return response()->json([
                'message' => 'User not Authentication',
                ]);
           }
           else
           {
               $checkstatus = $check->status;
               echo $checkstatus;
            //    if($checkstatus = "Approved")
            //    {
            //         return response()->json([
            //             'message' => 'Already updated',
            //             ]);
            //    }
            //    else if($checkstatus ="Canceled")
            //    {
            //        return response()->json([
            //            'message' => 'Already updated',
            //            ]);
            //    }
            //    else if($checkstatus == "Request")
            //    {
                $data = peminjaman::find($id);
                $data->status = $request->input('status');
                $data->ID_Pekerja = Auth::user()->id;
                $data->save();

                return response()->json([
                'message' => 'Updated',
                ]);
            //  / }
           }
        }
    }

    //Update Data API by user(cancel request)
    public function cancel(Request $request, $id)
    {
        $this->validate($request,[
            'status'         =>'required',
        ]);

        if(Auth::check())
        {
            $check = User::find(Auth::user()->id);
            $auth = $check->admin;
           
           if($auth !== 1)
           {
                return response()->json([
                'message' => 'User not Authentication',
                ]);
           }
           else
           {
                $checkstatus = $check->status;
                if($checkstatus = "Canceled")
                {
                    return response()->json([
                        'message' => 'Already updated',
                        ]);
                }
                else if($checkstatus ="Approved")
                {
                    return response()->json([
                        'message' => 'Already updated',
                        ]);
                }
                else
                {
                    $data = peminjaman::find($id);
                    $data->status = $request->input('status');
                    $data->save();

                    return response()->json([
                        'message' => 'canceled',
                    ]);
                }
            }
        }
    }

    //Delete Data API
    public function Delete($id)
    {
        $data = Peminjaman::find($id);
        $data->delete();

        return response()->json([
            'message' => 'Deleted',
        ]);
    }
}
