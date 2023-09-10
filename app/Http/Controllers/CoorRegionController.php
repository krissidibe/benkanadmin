<?php

namespace App\Http\Controllers;

use App\Models\CoorRegion;
use Illuminate\Http\Request;

class CoorRegionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $datas = CoorRegion::all();
    return view('pages.coorregion.index',compact("datas"));
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
     
      
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CoorRegion  $coorRegion
     * @return \Illuminate\Http\Response
     */
    public function show(CoorRegion $coorRegion)
    {
        $data = $coorRegion->first() ;
          return view('pages.coorregion.show',compact("data"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CoorRegion  $coorRegion
     * @return \Illuminate\Http\Response
     */
    public function edit(CoorRegion $coorRegion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CoorRegion  $coorRegion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CoorRegion $coorRegion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CoorRegion  $coorRegion
     * @return \Illuminate\Http\Response
     */
    public function destroy(CoorRegion $coorRegion)
    {
        //
    }
}