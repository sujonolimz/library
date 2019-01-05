<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Users
Route::get('user/get','UserApiController@get');
Route::get('user/profile','UserApiController@profile')->middleware('auth:api');
Route::post('user/register','UserApiController@register');
Route::post('user/login','UserApiController@login');

Route::post('user/registeradmin','UserApiController@registeradmin');


//Get Peminjaman Data
Route::get('peminjaman/get','PeminjamanController@Get');
//Insert Peminjaman Data
Route::post('peminjaman/insert','PeminjamanController@Insert')->middleware('auth:api');
//update
Route::put('peminjaman/{peminjaman}','PeminjamanController@update')->middleware('auth:api');
//cancel
Route::put('peminjaman/cancel/{peminjaman}','PeminjamanController@cancel')->middleware('auth:api');



// //Get Mahasiswa Data
// Route::get('mahasiswa/getdata','MahasiswaController@GetData');
// //Insert Mahasiswa Data
// Route::post('mahasiswa/insert','MahasiswaController@InsertData');

// Route::post('mahasiswa/login','MahasiswaController@login');

// //Get Pekerja Data
// Route::get('pekerja/getdata','PekerjaController@getdata');
