<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class buku extends Model
{
    // Table Name
    protected $table = 'buku';
    // Primary Key
    protected $primaryKey ='ID_Buku';
    public $incrementing = false;
    // Timestamps
    public $timestamps = true;
}
