<?php

namespace App\Http\Controllers;

use App\Models\Calendar;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CalendarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($day)
    {
       $dayPick = date('Y-m-d',strtotime($day));
        //
      //  $enqUsers = EnqUser::all();
         $calendars = Calendar::whereDate("day",$dayPick)->get();
 
        return view('pages.calendar.index',compact("calendars"));
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
     *  $posts = Post::all();
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
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
                    'isCompleted' => 0,
                   
                    
                ]
            );
            return redirect()->back()->with('success',"l'evenement avec le titre $request->titre est créer");
           
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Calendar  $calendar
     * @return \Illuminate\Http\Response
     */
    public function show(Calendar $calendar)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Calendar  $calendar
     * @return \Illuminate\Http\Response
     */
    public function edit(Calendar $calendar)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Calendar  $calendar
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Calendar $calendar)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Calendar  $calendar
     * @return \Illuminate\Http\Response
     */
    public function destroy(Calendar $calendar)
    {
        //
    }
}
