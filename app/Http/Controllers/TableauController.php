<?php

namespace App\Http\Controllers;

use App\Http\Controllers\EnqUserController;
use App\Models\Adhesion;
use App\Models\CoorBase;
use App\Models\CoorCercle;
use App\Models\CoorCom;
use App\Models\CoorRegion;
use App\Models\EnqUser;
use App\Models\Region;
use Illuminate\Http\Request;

class TableauController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
      
       # $datas = Region::orderBy('classement', 'asc')->get();
       $datas = Region::orderBy('id', 'asc')->get();
        return view('pages.tableau.index',compact("datas"));
    }
    public function info($region)
    {
     
     $enqUser =   EnqUser::where('region',"=", $region)->count();
    
     $adhesion =   Adhesion::where('region',"=", $region)->count();
     $cercles =   CoorCercle::where('region',"=", $region)->count();
     $regions =   CoorRegion::where('region',"=", $region)->count();
     $bases =   CoorBase::where('region',"=", $region)->count();
     $communes =   CoorCom::where('region',"=", $region)->count();
    
     $regionInfo =   Region::where('nom',"=", $region)->first();

     
    
        return view('pages.tableau.info',compact(
        "region",
        "enqUser",
        "adhesion",
        "cercles",
        "regions",
        "bases",
        "communes",
        "regionInfo",
        
    ));
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}