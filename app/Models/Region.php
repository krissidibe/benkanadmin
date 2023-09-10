<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    use HasFactory;

     public function cercles()
    {
        return $this->hasMany(Cercle::class);
        // note: we can also include comment model like: 'App\Models\Comment'
    }
}