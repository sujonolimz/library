<?php

namespace App\Transformers;

use App\User;
use League\Fractal\TransformerAbstract;

class UserTransformer extends TransformerAbstract
{
    public function transform(User $data)
    {
        return [
            'id'                => $data->id,
            'npm'               => $data->npm,
            'name'              => $data->name,
            'email'             => $data->email,
            'nohp'              => $data->nohp,
            'alamat'            => $data->alamat,
            'created_at'        => $data->created_at->diffForHumans(),
            'admin'        => $data->admin,
        ];
    }
}