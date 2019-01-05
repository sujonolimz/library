<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mahasiswa extends Model
{
     // Table Name
     protected $table = 'mahasiswa';
     // Primary Key
     protected $primaryKey ='ID_Mahasiswa';
     public $incrementing = false;
     // Timestamps
     public $timestamps = true;

     protected $fillable = [
          'NPM','Nama','Password','Alamat','api_token',
      ];
}
