<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CoorCom;
use Illuminate\Http\Request;

class CoorComController extends Controller
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
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $credentials = request(["numCoor","region", "cercle","commune","prenom","nom","titre","numero","email","password"]);
        $comBase = new CoorCom();
        $comBase->create($credentials);
        return json_encode("Ajout effectuer"); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CoorCom  $coorCom
     * @return \Illuminate\Http\Response
     */
    public function show(CoorCom $coorCom)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CoorCom  $coorCom
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CoorCom $coorCom)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CoorCom  $coorCom
     * @return \Illuminate\Http\Response
     */
    public function destroy(CoorCom $coorCom)
    {
        //
    }
}