<?php

namespace App\Http\Controllers\Api;

use App\Models\Calendar;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Resources\Calendar as CalendarResource;
class CalendarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
 

    public function index()
    {
       
        $calendars = Calendar::all();
      return  CalendarResource::collection($calendars);
      
    }
    public function show($dayPick)
    {
        
        //2023-06-01
      
        $calendars = Calendar::whereDate("day",$dayPick)->orderBy('startedAt', 'asc')->get();
       
        return  CalendarResource::collection($calendars);
    }


    /**
     * Store a newly created resource in storage.
     *  $posts = Post::all();
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $calendar = Calendar::create($request->all());
        return [
            "status" => 1,
            "data" => $calendar
        ];
        //
       
   

            /*      $request->validate([
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]); */
                
            $calendar  = new Calendar();
           
         
            
          
           
            
            $calendar->create(
                [
                   
                    'titre' => $request->titre,
                 
                    'startedAt' =>  date('H:i:s',strtotime($request->startedAt)),
                    'endedAt' => $request->endedAt == null ? $request->endedAt :  date('H:i:s',strtotime($request->endedAt)),
                    'day' => $request->date,
                   
                    
                ]
            );
            return redirect()->back()->with('success',"l'evenement avec le titre $request->titre est créer");
           
    
    }

 

    public function update($id)
    {
        //

        $data =    Calendar::find($id) ;
        $data->isCompleted = 1;
        $data->update();
        return [
            "status" => 10,
            
        ];
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

     $data =    Calendar::find($id) ;
      
$data->delete();
        return [
            "status" => 1,
            
        ];

    }
}
