@extends("admin.template")
@section("content")
 
<div class="row">
    <div class="col-md-9">
		
         <div class="x_panel">
								<div class="x_title">
									<h2>Information </h2>
									
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
									<form  method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
										@method("POST")
										@csrf
										<input readonly type="hidden" name="id" value="{{$data->id}}" >
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Numéro de coordination <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->numCoor}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Region <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->region}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Cercle <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->cercle}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										 
									 
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Prenom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->prenom}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->nom}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Titre <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->titre}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Numero <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->numero}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Email <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input readonly value="{{$data->email}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
								 
 

									</form>
								</div>
		</div>
</div>
 
</div>
 



@endsection