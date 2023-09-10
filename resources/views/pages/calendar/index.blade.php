@extends("admin.template")
@push('head')
<!-- Styles -->
  
<link href="{{ asset('build/css/calendar.css')}}" rel="stylesheet">
 
<!-- Scripts -->
 
@endpush
@section("content") 
<div class="container">
  <div class="left">
    <div class="calendar">
      <div class="month">
        <i class="fas fa-angle-left prev"></i>
        <div class="date">december 2015</div>
        <i class="fas fa-angle-right next"></i>
      </div>
      <div class="weekdays">
        <div>Dimanche</div>
        <div>Lundi</div>
        <div>Mardi</div>
        <div>Mercredi</div>
        <div>Jeudi</div>
        <div>Vendredi</div>
        <div>Samedi</div>
      </div>
      <div class="days"></div>
      <div class="goto-today">
        <div class="goto">
          <input type="text" placeholder="mm/yyyy" class="date-input" />
          <button class="goto-btn">Go</button>
        </div>
        <button class="today-btn">Aujourd'hui</button>
      </div>
    </div>
  </div>
  <div class="right">
    <div class="today-date">
      <div class="event-day">wed</div>
      <div class="event-date">12th december 2022</div>
    </div>
    <div class="events">
{{--       @foreach ($calendars as $item)
                          
      <div class="event">
        <div class="title">
          <i class="fas fa-circle"></i>
          <h3 class="event-title">{{$item->titre}}</h3>
        </div>
        <div class="event-time">
          <span class="event-time">{{$item->startedAt}} à {{$item->endedAt}}</span>
        </div>
    </div>        
    
         
         
        </tr>
          @endforeach --}}
    
    </div>
    <div   class="add-event-wrapper">
      @method("post") 
@csrf
      <div class="add-event-header">
        <div class="title">Ajouter un RDV</div>
        <i class="fas fa-times close"></i>
      </div>
      <div class="add-event-body">
        <div class="add-event-input">
          <input type="text" name="titre" placeholder="Titre" class="event-name" />
        </div>
        <input
        type="hidden"
        name="date"
        placeholder="Heure du debut"
        class="date-pick"
      />
        <div class="add-event-input">
          <input
           type="time"
            name="startedAt"
            placeholder="Heure du debut"
            class="event-time-from"
          />
        </div>
        <div class="add-event-input">
          <input
           type="time"
            name="endedAt"
            placeholder="Heure de fin"
            class="event-time-to"
          />
        </div>
      </div>
      <div class="add-event-footer">
        
      {{--   <input type="button" name="action" class="add-event-btn" value="Ajouter" /> --}}
       <button class="add-event-btn">Ajouter</button> 
      </div>
    </div>
  </div>
  <button class="add-event">
    <i class="fas fa-plus"></i>
  </button>
</div>






@push('footer')

<!-- Scripts -->
<script src="../build/js/calendar.js"></script>
@endpush

@endsection
