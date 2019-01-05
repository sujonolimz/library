<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\pekerja;

class PekerjaController extends Controller
{
    public function getdata(pekerja $data)
    {
        $datas = $data->all();

        return response()->json($datas);
    }
}
