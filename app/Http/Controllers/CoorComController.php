<?php

namespace App\Http\Controllers;
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
        $datas = CoorCom::all();
    return view('pages.coorcom.index',compact("datas"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $credentials = request(["numCoor","region", "cercle","commune","prenom","nom","titre","numero","email"]);
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
      $data = $coorCom->first() ;
          return view('pages.coorcom.show',compact("data"));
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