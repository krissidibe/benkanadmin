@extends("admin.template")
@section("content")
 
 <div class="x_panel">
  @if ($message = Session::get('edit'))
<div class="alert alert-success alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                     <strong>{{ $message }}</strong>
                  </div>
@endif
  @if ($message = Session::get('delete'))
<div class="alert alert-danger alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                     <strong>{{ $message }}</strong>
                  </div>
@endif

                  <div class="x_title">
                    <h2>Liste des Enquêteurs</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    
              <table id="datatable-buttons" class="table table-striped table-bordered dataTable no-footer dtr-inline" style="width: 100%;" role="grid" aria-describedby="datatable-buttons_info">
                      <thead>
                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 165px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Identifiant</th><th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 253px;" aria-label="Position: activate to sort column ascending">Nom</th>
                            <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 126px;" aria-label="Office: activate to sort column ascending">Prénom</th>
                          <th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 126px;" aria-label="Office: activate to sort column ascending">Rôle</th><th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 63px;" aria-label="Age: activate to sort column ascending">Numéro</th><th class="sorting" tabindex="0" aria-controls="datatable-buttons" rowspan="1" colspan="1" style="width: 121px;" aria-label="Start date: activate to sort column ascending">Action</th></tr>
                      </thead>


                      <tbody>
                        
                     @foreach ($enqUsers as $user )
                        <tr role="row" class="odd">
                          <td>{{$user->id}}</td>
                          <td tabindex="0" class="sorting_1">{{$user->nom}}</td>
                          <td>{{$user->prenom}}</td>
                          <td>{{$user->role}}</td>
                          <td>{{$user->telephone}}</td>
                          <td> <a href="{{ route('admin.enquser.show', ['id'=>$user->id]) }}">Modifier</a> </td>
                         
                        </tr> 
                     @endforeach
                      </tbody>
                    </table> <div class="dataTables_paginate paging_simple_numbers" id="datatable-buttons_paginate"></div></div>
                  </div>
                </div>
              </div>
            </div>
                </div>

@endsection