<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Avis extends JsonResource
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
        'image' => $this->image,
        'titre' => $this->titre,
        'contenu' => strip_tags($this->contenu),
        'updated_at' =>  date("d/m/Y", strtotime($this->updated_at)) ,
        
    ];
    }
}