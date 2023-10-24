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
        $array = explode(",", $this->files);
        $imageArray = array();
        foreach ($array as $file) {
            
           if ($this->files != null) {
            array_push($imageArray,strip_tags(config('app.url')."/images/".$file));
            # code...
           }
           // $fileModel->size = $filesize;
           // $fileModel->location = 'storage/'.$filename;
            
        }
      
        return [
        'titre' => $this->titre,
        'contenu' => strip_tags($this->contenu),
        'image' => strip_tags(config('app.url')."/images/".$this->image),
        'updated_at' =>  date("d/m/Y", strtotime($this->updated_at)) ,
        'files' =>  implode(",",$imageArray),
        
    ];
    }
}