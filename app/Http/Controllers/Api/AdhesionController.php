<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
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
        return 10;
    }

    public function checkEmail($email)
    {
        $enqUser = Adhesion::where('email', '=', $email)->first();

        if ($enqUser) {
            return 'true';
        } else {
            return 'false';
        }
    }
    public function checkNumber($numero)
    {
        $enqUser = Adhesion::where('numero', '=', $numero)->first();

        if ($enqUser) {
            return 'true';
        } else {
            return 'false';
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
        $credentials = request([
            'nom',
            'prenom',
            'inOrganisation',
            'nina',
            'carteElec',
            'numero',
            'email',
            'region',
            'adresse',
            'cercleComune',
            'photo',
            'idEnq',
        ]);

        $imageName =
            time() . '.' . $request->photo->getClientOriginalExtension();

        $request->photo->move(public_path('adhesion'), $imageName);
        $credentials['photo'] = 'adhesion/' . $imageName;
        $adhesion = new Adhesion();
        $adhesion->create($credentials);
        return $adhesion->id;
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
