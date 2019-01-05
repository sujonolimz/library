<?php

namespace App\Transformers;

use App\peminjaman;
use League\Fractal\TransformerAbstract;

class PeminjamanTransformer extends TransformerAbstract
{
    public function transform(peminjaman $data)
    {
        return [
            'Id_Mahasiswa'          => $data->ID_Mahasiswa,
            'Id_Buku'               => $data->ID_Buku,
            'Id_Pekerja'            => $data->ID_Pekerja,
            'Tanggal_Peminjaman'    => $data->Tanggal_Pinjam,
            // 'Deadline_Pengembalian' => $data->Deadline_Pengembalian,
            'Status'                => $data->Status,
        ];
    }
}