<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Calendar extends JsonResource
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
        'id' => $this->id,
        'titre' => $this->titre,
        'day' => $this->day,
        'startedAt' => $this->startedAt,
        'endedAt' => $this->endedAt,
        'isCompleted' => $this->isCompleted,
        
     /*    'contenu' => strip_tags($this->contenu),
        'image' => strip_tags(config('app.url')."/images/".$this->image),
        'updated_at' =>  date("d/m/Y", strtotime($this->updated_at)) , */
        
    ];
    }
}