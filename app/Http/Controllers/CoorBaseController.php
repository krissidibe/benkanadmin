<?php

namespace App\Http\Controllers;

use App\Models\CoorBase;
use Illuminate\Http\Request;

class CoorBaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    $datas = CoorBase::all();
    return view('pages.coorbase.index',compact("datas"));
   
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
 
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
     * @param  \App\Models\CoorBase  $coorBase
     * @return \Illuminate\Http\Response
     */
    public function show(CoorBase $coorBase)
    {
     
        $data = $coorBase->first() ;
          return view('pages.coorbase.show',compact("data"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CoorBase  $coorBase
     * @return \Illuminate\Http\Response
     */
    public function edit(CoorBase $coorBase)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CoorBase  $coorBase
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CoorBase $coorBase)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CoorBase  $coorBase
     * @return \Illuminate\Http\Response
     */
    public function destroy(CoorBase $coorBase)
    {
        //
    }
}