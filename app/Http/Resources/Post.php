<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Post extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
        'titre' => $this->titre,
        'contenu' => strip_tags($this->contenu),
        'updated_at' => $this->updated_at ,
    ];
    }
}