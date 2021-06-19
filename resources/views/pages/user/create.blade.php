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
									<form action="{{ route("admin.enquser.store") }}" method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
										@method("POST")
										@csrf
										<input type="hidden" name="id" value="{{$enqUser->id}}" >
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->nom}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Prenom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->prenom}}" name="prenom" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Email <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->email}}" name="email" type="email" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Mot de passe <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->password}}" name="password" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Adresse <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->adresse}}" name="adresse" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										 
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Sexe</label>
											<div class="col-md-6 col-sm-6 ">
												<div id="gender" class="btn-group" data-toggle="buttons">
													<label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input   type="radio" name="sexe" value="homme" class="join-btn" data-parsley-multiple="gender"> &nbsp; Homme &nbsp;
													</label>
													<label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
														<input  type="radio" name="sexe" value="felle" class="join-btn" data-parsley-multiple="gender"> Femme
													</label>
												</div>
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align">Date de naissance<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->dateNaissance}}" name="dateNaissance" id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="date" required="required" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
												<script>
													function timeFunctionLong(input) {
														setTimeout(function() {
															input.type = 'text';
														}, 60000);
													}
												</script>
											</div>
										</div>

                                        <div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Numero de téléphone <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$enqUser->telephone}}" name="telephone" type="number" id="last-name" required="required" class="form-control">
											</div>
										</div>

									 
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
											
												<button class="btn btn-primary" type="reset">Rénitialiser</button>
												@if ($enqUser->id)
												<input type="submit" name="action"   class="btn btn-danger" value="Supprimer" />
												@endif
												<input type="submit" name="action"   class="btn btn-success" value="{{$enqUser->id ? "Modifier" : "Ajouter"}} " >
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