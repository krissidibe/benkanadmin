<?php

namespace App\Http\Controllers;

use App\Models\EnqUser;
use Illuminate\Http\Request;

class EnquserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $enqUsers = EnqUser::all();
       

         return view('pages.user.index',compact("enqUsers"));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
         $enqUser = new EnqUser();
        
      return view('pages.user.create',compact("enqUser"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        if($request->action == "Supprimer"){
          
            $this->destroy($request->id);
            return redirect()->route("admin.enquser.index");
         
        }elseif ($request->action == "Modifier") {
           $userUpdate = EnqUser::find($request->id);

           
            $userUpdate->update($request->except(["_method","_token","action","id"]));
            return redirect()->route("admin.enquser.index")->with('edit',"l'enquêteur avec identifiant $request->id  est modifier");
        }
        elseif ($request->action == "Ajouter") {
          $enqUser  = new EnqUser();
            $enqUser->create($request->except(["_method","_token","action","id"]));
           return redirect()->back()->with('success',"l'enquêteur $request->nom $request->prenom est enregister dans la base de données");
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $enqUser =EnqUser::findOrFail($id);
    
        return view('pages.user.create',compact("enqUser"));
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
       $enqUser = EnqUser::find($id);

        $enqUser->delete();
        
        return redirect()->route("admin.enquser.index")->with('delete',"l'enquêteur avec identifiant $id est supprimer");
    }
}