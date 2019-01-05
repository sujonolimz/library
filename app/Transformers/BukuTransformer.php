<?php

namespace App\Transformers;

use App\buku;
use League\Fractal\TransformerAbstract;

class BukuTransfomer extends TransformerAbstract
{
    public function transform(buku $data)
    {
        return [
            'Judul'         => $buku->judul,
            'Penerbit'      => $buku->penerbit,
            'Qty'           => $buku->jml_Stock,
            'Created_At'    => $buku->Created_at->diffForHumans(),
        ];
    }
}