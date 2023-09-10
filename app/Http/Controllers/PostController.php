<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Facade\FlareClient\Stacktrace\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

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
            return redirect()->route("admin.post.index")->with('edit',"l'article avec le titre $request->id est modifier");
        }
        elseif ($request->action == "Ajouter") {

        /*      $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]); */
            
        $post  = new Post();
       
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