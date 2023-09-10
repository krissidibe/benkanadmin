<?php

namespace App\Http\Controllers;

use App\Models\Adhesion;
use Illuminate\Http\Request;

class AdhesionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $adhesions = Adhesion::all();
         return view('pages.adhesion.index',compact("adhesions"));

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
     * @param  \App\Models\Adhesion  $adhesion
     * @return \Illuminate\Http\Response
     */
    public function show(Adhesion $adhesion)
    {
        return view('pages.adhesion.show',compact("adhesion"));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Adhesion  $adhesion
     * @return \Illuminate\Http\Response
     */
    public function edit(Adhesion $adhesion)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Adhesion  $adhesion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Adhesion $adhesion)
    {
        //
     $val =    Adhesion::where('id',$request->id)->update($request->except("id","_method","_token"));
     return redirect('adhesion-index')->with('success', "Modification Effectué ($val->nom $val->prenom $val->numero) ");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Adhesion  $adhesion
     * @return \Illuminate\Http\Response
     */
    public function destroy($adhesion)
    {
        Adhesion::destroy($adhesion);
        return redirect('adhesion-index')->with('danger', 'Profile Supprimé ');;
    }
}
