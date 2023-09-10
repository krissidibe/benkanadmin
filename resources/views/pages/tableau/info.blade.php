@extends("admin.template")
@section("content")

<div class="row">
    <div class="col-md-12">
         <div class="x_panel">
			 <h4>Les statistiques de la region de {{$region}} </h4>
		 </div>
		 
	</div>
    <div class="col-md-9">
         <div class="x_panel">
			  
			<div class="image view view-first">
			<img style="width: 100%; display: block;" src='{{ asset("regions/$region.png") }}' alt="image">
			
			</div>
 
		 </div>
		 <p>Electeurs : {{$regionInfo->electeurs}}</p>
		 <p>Pourcentage de Benkan : {{calculePourcentage($adhesion,$regions,$cercles,$communes,$bases,$regionInfo->electeurs)}} %</p>
		 
	</div>
    <div class="col-md-3">
         <div class="x_panel">
			  
			{{--   <h6>Nombre de coordination de cercle :</h6>
			 <p>{{$adhesion}}</p>
			  <hr>  --}}
			 <h6>Nombre d'adhérents :</h6>
			 <p>{{$adhesion}}</p>
			<hr>
			<a href="{{route("admin.tableau.cercles.show",$region)}}">
				 <h6>Nombre de membre dans la coordination regionale :</h6>
			 <p>{{$regions}}</p>
			</a>
			 
			{{--   <h6>Nombre de membre dans les coordinations de cercle :</h6>
			 <p>{{$cercles}}</p>
			  <hr>
			 <h6>Nombre de membre dans la comités de base :</h6>
			 <p>{{$bases}}</p>
			  <hr>  --}}
			 
			 
			{{--   <h6>Nombre enquêteur :</h6>
			 <p>{{$enqUser}}</p>  --}}
			 
		 </div>
		 
	</div>



</div>

@endsection




 