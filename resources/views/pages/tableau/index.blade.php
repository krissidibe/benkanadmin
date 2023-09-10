@extends("admin.template")
@section("content")
 
<div class="row">
 

  @foreach ($datas as $data )
    <div class="col-md-3">
    <a href="{{route("admin.tableau.info",$data->nom)}}">
      <div class="jumbotron">
    <h3>{{$data->nom}}</h3> 
    </div>
    </a>
  </div>

  @endforeach

  



</div>

@endsection