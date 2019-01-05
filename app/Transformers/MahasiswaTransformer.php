<?php

namespace App\Transformers;

use App\mahasiswa;
use League\Fractal\TransformerAbstract;

class MahasiswaTransformer extends TransformerAbstract
{
    public function transform(mahasiswa $data)
    {
        return [
            'NPM'           => $data->NPM,
            'Nama'          => $data->Nama,
            'No HP'         => $data->NoHp,
            'Created_At'    => $data->created_at,
        ];
    }
}