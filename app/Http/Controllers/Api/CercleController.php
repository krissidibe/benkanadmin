<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cercle;
use App\Http\Resources\Region as ResourcesRegion;
use App\Models\Region;
use Illuminate\Http\Request;

class CercleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
  
          
    public function index(Cercle $cercle)
    {
       
    }
   

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cercle  $cercle
     * @return \Illuminate\Http\Response
     */
    public function show($id) 
    {
        $id_region = Region::where('nom', "=", $id)->first();
        
        $cercle = Cercle::where('region_id', "=", $id_region->id)->get();
        
       return  $cercle; 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cercle  $cercle
     * @return \Illuminate\Http\Response
     */
    public function edit(Cercle $cercle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cercle  $cercle
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cercle $cercle)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cercle  $cercle
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cercle $cercle)
    {
        //
    }
}