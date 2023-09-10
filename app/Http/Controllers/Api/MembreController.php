<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CoorBase;
use App\Models\CoorCercle;
use App\Models\CoorCom;
use App\Models\CoorRegion;
use Enquser;
use Illuminate\Http\Request;

class MembreController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
        public function login(Request $request,$type)
    {
        
        $credentials = request(['email', 'password']);
    if ($type == "regionnal") {
        $membre = CoorRegion::where('email', '=', $credentials["email"])->where('password', '=', $credentials["password"])->first();
          if ($membre) {
        return [
        "status" => 'success',
        "data" => $membre
     ];
     }
     else{
          return [
        "status" => 'false',
         
     ];
     }
   
     }

else if ($type == "cercle") {
       $membre = CoorCercle::where('email', '=', $credentials["email"])->where('password', '=', $credentials["password"])->first();
         if ($membre) {
        return [
        "status" => 'success',
        "data" => $membre
     ];
     }
     else{
          return [
        "status" => 'false',
         
     ];
     }
     }
else if ($type == "commune") {
       $membre = CoorCom::where('email', '=', $credentials["email"])->where('password', '=', $credentials["password"])->first();
         if ($membre) {
        return [
        "status" => 'success',
        "data" => $membre
     ];
     }
     else{
          return [
        "status" => 'false',
         
     ];
     }
     }
else if ($type == "base") {
       $membre = CoorBase::where('email', '=', $credentials["email"])->where('password', '=', $credentials["password"])->first();
       if ($membre) {
        return [
        "status" => 'success',
        "data" => $membre
     ];
     }
     else{
          return [
        "status" => 'false',
         
     ];
     }
     }

     
      else{
          return [
        "status" => 'false',
         
     ];
     }
    
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