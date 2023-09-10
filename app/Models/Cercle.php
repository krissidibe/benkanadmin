<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cercle extends Model
{
    use HasFactory;
      public function communes()
    {
        return $this->hasMany(Commune::class);
        // note: we can also include comment model like: 'App\Models\Comment'
    }

        public function region()
    {
        return $this->belongsTo(Region::class);
    }

   
}