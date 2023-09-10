<?php

namespace App\Http\Controllers;

use App\Models\Avis;
use Illuminate\Http\Request;

class AvisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $posts = Avis::all();
         return view('pages.avis.index',compact("posts"));
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
   public function create() 
    {
         $post = new Avis(); 
        
      return view('pages.avis.create',compact("post"));
     
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
     {
       // dd($request->all());
     

        if($request->action == "Supprimer"){
          
            $this->destroy($request->id);
            return redirect()->route("admin.avis.index");
         
        }elseif ($request->action == "Modifier") {
           $postUpdate = Avis::find($request->id);

           
            $postUpdate->update($request->except(["_method","_token","action","id"]));
            return redirect()->route("admin.avis.index")->with('edit',"l'article avec le titre $request->id est modifier");
        }
        elseif ($request->action == "Ajouter") {
        $post  = new Avis();
        
        if($request->image){
             
            $imageName = time().'.'.$request->image->getClientOriginalExtension();
       
            $request->image->move(public_path('images'), $imageName);
             // $path = $request->image->move("/home/gestionb/public_html/images", $imageName);
         $post->create(
            [
                'image' => $imageName,
                'titre' => $request->titre,
                
                'contenu' => strip_tags(htmlspecialchars_decode(html_entity_decode($request->contenu)))
                
            ]
        );
        //$post->create($request->except(["_method","_token","action","id"]));
        return redirect()->back()->with('success',"l'article avec le titre $request->titre est publier");
        }else{
             
      
       
      
         $post->create(
            [
               
                'titre' => $request->titre,
                
                'contenu' => strip_tags(htmlspecialchars_decode(html_entity_decode($request->contenu)))
                
            ]
        );
        //$post->create($request->except(["_method","_token","action","id"]));
        return redirect()->back()->with('success',"l'article avec le titre $request->titre est publier");
        }
        }



    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Avis  $avis
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $post =Avis::findOrFail($id);
    
        return view('pages.avis.create',compact("post"));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Avis  $avis
     * @return \Illuminate\Http\Response
     */
    public function edit(Avis $avis)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Avis  $avis
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Avis $avis)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Avis  $avis
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
   {
        $post = Avis::find($id);

        $post->delete();
        
        return redirect()->route("admin.post.index")->with('delete',"l'enquêteur avec identifiant $id est supprimer");;
    }
}