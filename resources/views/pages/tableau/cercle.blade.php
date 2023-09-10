@extends("admin.template")
@section("content")

<div class="row">
    <div class="col-md-12">
         <div class="x_panel">
			 <h4>Les statistiques de la region de {{$nameRegion}}</h4>
		 </div>
		 
	</div>
    <div class="col-md-9">
        <div class="x_title">
                    <h2>Liste des membres dans la coordination regionale</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    
              <table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer dtr-inline" style="width: 100%;" role="grid" aria-describedby="datatable-buttons_info">
                      <thead>
                        <tr role="row">
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">Nom</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">Prénom</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">Email</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">titre</th> 
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">Numéro</th><th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 121px;" aria-label="Start date: activate to sort column ascending">Action</th></tr>
                      </thead>


                      <tbody>
                        
                     @foreach ($datas as $item )
                        <tr role="row" class="odd">
                       
                          <td tabindex="0" class="sorting_1">{{$item->nom}}</td>
                          <td>{{$item->prenom}}</td>
                          <td>{{$item->email}}</td>
                          <td>{{$item->titre}}</td>
                        
                          <td>{{$item->numero}}</td>
                          <td> <a >Afficher</a> </td>
                         
                        </tr> 
                     @endforeach
                      </tbody>
                    </table> <div class="dataTables_paginate paging_simple_numbers" id="datatable-buttons_paginate"></div></div>
                  </div>
                </div>
              </div> 
		 
	</div>
    
    <div class="col-md-3">
         <div class="x_panel">
			  
			{{--   <h6>Nombre de coordination de cercle :</h6>
			 <p>{{$adhesion}}</p>
			  <hr>  --}}
			 <h6>Nombre de membre dans les coordinations de cercle de {{$nameRegion}}</h6>
		 
             <hr>
             @foreach ($cercles as $item)
                <div > <a style="display:flex; justify-content:space-between" href="{{route("admin.tableau.commune.show",[$nameRegion,$item->non])}}">{{$item->non}} <span>{{countInCercle($item)}}</span></a> </div>
                @endforeach
                <hr>
                <div style="display:flex; justify-content:space-between"> <a href="">Total</a> <span>{{$cerclesTotal}}</span> </div>
			 
			 
			 
			{{--   <h6>Nombre enquêteur :</h6>
			 <p>{{$enqUser}}</p>  --}}
			 
		 </div>
		 
	</div>



</div>

@endsection




 