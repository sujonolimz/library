<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class peminjaman extends Model
{
     // Table Name
     protected $table = 'peminjaman';
     // Primary Key
     protected $primaryKey ='ID_Peminjaman';
     public $incrementing = false;
     // Timestamps
     public $timestamps = true;

     protected $fillable = [
          'ID_Mahasiswa','ID_Buku','ID_Pekerja','Status',
      ];
}
