<?php

namespace App\Http\Controllers;
 
use App\Models\Cercle;
use App\Http\Resources\Region as ResourcesRegion;
use App\Models\Commune;
use App\Models\CoorCercle;
use App\Models\CoorCom;
use App\Models\Region;
use Illuminate\Http\Request;
use App\Models\CoorRegion;
use CoorComs;

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

        $nameRegion = $id;
        
     $cerclesTotal =   CoorCercle::where('region',"=", $id)->count();
        $cercles = Cercle::where('region_id', "=", $id_region->id)->get();
         $datas = CoorRegion::where("region","=",$id)->get();
       return  view('pages.tableau.cercle',compact("datas","cercles","nameRegion","cerclesTotal")); 
    }
    public function showCommune($nameRegion,$nameCercle)
    {
        
      
       /*  $id_region = Region::where('nom', "=", $id)->first();

         
        
         */
        $cercles = Cercle::where('non', "=", $nameCercle)->first();

        $communes = Commune::where("cercle_id","=",$cercles->id)->get();
       
         $datas = CoorCercle::where("cercle","=",$nameCercle)->get();
          $communeTotal =    CoorCom::where('cercle',"=", $nameCercle)->count();
          
       return  view('pages.tableau.commune',compact("datas","nameRegion","nameCercle","communes","communeTotal")); 
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