<?php

namespace App\Http\Controllers\Api;

use App\Models\CoorBase;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CoorBaseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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

        
        $credentials = request(["region", "cercle","commune","quartier","prenom","nom","titre","numero","email","password"]);
        
      
       
       
     
        $comBase = new CoorBase();
        $comBase->create($credentials);
        return json_encode("Ajout effectuer"); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CoorBase  $coorBase
     * @return \Illuminate\Http\Response
     */
    public function show(CoorBase $coorBase)
    {
        //
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