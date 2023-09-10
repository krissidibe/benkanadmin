@extends("admin.template")
@section("content")
 
<div class="row">
    <div class="col-md-12">
         <div class="x_panel">
								<div class="x_title">
									<h2>Ajouter un Communiqué </h2>
									 
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
									<form action="{{ route("admin.avis.store") }}" method="post" encType="multipart/form-data"  id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
@method("post")
@csrf
<input type="hidden" name="id" value="{{$post->id}}" >
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Titre du communiqué<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input value="{{$post->titre}}" name="titre" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
									 
										<div class="x_panel">
<div class=" ">
	<div class="x_panel">
							   <div class="x_title">
								   <h2>Photo de l'article</h2>
									
								   <div class="clearfix"></div>
							   <div class="x_content">
								   <br>
							   <input type="file" name="image" id="">
							   </div>
							   </div>
							   <div class="x_content">
								   <br>
								
							   </div>
	   </div>
</div>
	
							 
						 <textarea name="contenu"   > {{$post->contenu}} </textarea>
						</div>
									 

                                       

									 
										<div class="item form-group">
											<div class="col-md-6 col-sm-6 offset-md-3">
											 
												<button class="btn btn-primary" type="reset">Rénitialiser</button>
											@if ($post->id)
												<input type="submit" name="action"   class="btn btn-danger" value="Supprimer" />
												@endif
												<input type="submit" name="action"   class="btn btn-success" value="{{$post->id ? "Modifier" : "Ajouter"}} " >
											</div>
										</div>

									</form>
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