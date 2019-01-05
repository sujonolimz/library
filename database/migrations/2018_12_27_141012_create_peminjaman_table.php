<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePeminjamanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peminjaman', function (Blueprint $table) {
            $table->increments('ID_Peminjaman');
            $table->integer('ID_Mahasiswa')->unsigned();
            $table->integer('ID_Buku')->unsigned();
            $table->integer('ID_Pekerja')->unsigned();
            $table->datetime('Tanggal_Pinjam');
            $table->datetime('Deadline_Pengembalian');
            $table->timestamps();
            $table->string('Status',20);
            $table->foreign('ID_Mahasiswa')
            ->references('ID_Mahasiswa')
            ->on('mahasiswa');
            $table->foreign('ID_Buku')
            ->references('ID_Buku')
            ->on('buku');
            $table->foreign('ID_Pekerja')
            ->references('ID_Pekerja')
            ->on('pekerja');            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('peminjaman');
    }
}
