<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
            $posts = Post::all();
         return view('pages.post.index',compact("posts"));
    
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() 
    {
         $post = new Post();
        
      return view('pages.post.create',compact("post"));
     
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
            return redirect()->route("admin.post.index");
         
        }elseif ($request->action == "Modifier") {
           $postUpdate = Post::find($request->id);

           
            $postUpdate->update($request->except(["_method","_token","action","id"]));
            return redirect()->route("admin.post.index")->with('edit',"l'article avec le titre $request->titre est modifier");
        }
        elseif ($request->action == "Ajouter") {
        $post  = new Post();
        $post->create($request->except(["_method","_token","action","id"]));
        return redirect()->back()->with('success',"l'article avec le titre $request->titre est publier");
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
        $post =Post::findOrFail($id);
    
        return view('pages.post.create',compact("post"));
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
        $post = Post::find($id);

        $post->delete();
        
        return redirect()->route("admin.post.index")->with('delete',"l'enquêteur avec identifiant $id est supprimer");;
    }
}