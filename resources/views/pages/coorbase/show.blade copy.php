@extends("admin.template")
@section("content")
 
<div class="row">
    <div class="col-md-9">
		
         <div class="x_panel">
								<div class="x_title">
									<h2>Ajouter un enquêteur </h2>
									
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
									<form action="{{ route("admin.adhesion.store") }}" method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
										@method("POST")
										@csrf
										<input type="hidden" name="id" value="{{$adhesion->id}}" >
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->nom}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Prenom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->prenom}}" name="prenom" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Email <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->email}}" name="email" type="email" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Mot de passe <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->numero}}" name="password" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Adresse <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->adresse}}" name="adresse" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
									 
									 

                                        <div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Numero de téléphone <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$adhesion->numero}}" name="telephone" type="number" id="last-name" required="required" class="form-control">
											</div>
										</div>

									 
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
											
												<button class="btn btn-primary" type="reset">Rénitialiser</button>
												@if ($adhesion->id)
												<input type="submit" name="action"   class="btn btn-danger" value="Supprimer" />
												@endif
												<input type="submit" name="action"   class="btn btn-success" value="{{$adhesion->id ? "Modifier" : "Ajouter"}} " >
											</div>
										</div>

									</form>
								</div>
		</div>
</div>
<div class="col-md-3">
     <div class="x_panel">
								<div class="x_title">
									<h2>Photo</h2>
									 
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
								 
								</div>
		</div>
</div>
</div>

@if ($message = Session::get('success'))
<div class="alert alert-success alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                     <strong>{{ $message }}</strong>
                  </div>
@endif



@endsection