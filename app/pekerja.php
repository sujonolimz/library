<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pekerja extends Model
{
     // Table Name
     protected $table = 'pekerja';
     // Primary Key
     protected $primaryKey ='ID_Pekerja';
     public $incrementing = false;
     // Timestamps
     public $timestamps = true;
}
