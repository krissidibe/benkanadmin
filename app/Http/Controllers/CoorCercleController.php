<?php

namespace App\Http\Controllers;

use App\Models\CoorCercle;
use Illuminate\Http\Request;

class CoorCercleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $datas = CoorCercle::all();
    return view('pages.coorcercle.index',compact("datas"));
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
        
        $credentials = request(["numCoor","region", "cercle","prenom","nom","titre","numero","email"]);
        $comBase = new CoorCercle();
        $comBase->create($credentials);
        return json_encode("Ajout effectuer"); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\CoorCercle  $coorCercle
     * @return \Illuminate\Http\Response
     */
    public function show(CoorCercle $coorCercle)
    {
       $data = $coorCercle->first() ;
          return view('pages.coorcercle.show',compact("data"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\CoorCercle  $coorCercle
     * @return \Illuminate\Http\Response
     */
    public function edit(CoorCercle $coorCercle)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\CoorCercle  $coorCercle
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CoorCercle $coorCercle)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\CoorCercle  $coorCercle
     * @return \Illuminate\Http\Response
     */
    public function destroy(CoorCercle $coorCercle)
    {
        //
    }
}