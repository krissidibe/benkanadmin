@extends("admin.template")
@section("content")

<div class="row">
    <div class="col-md-7">

         <div class="x_panel">
								<div class="x_title">
									<h2>Information </h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br>
									<form action="{{ route("admin.adhesion.update") }}" method="post" id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
										@method("POST")
										@csrf
										<input  type="hidden" name="id" value="{{$adhesion->id}}" >
										<div class="item form-group">
											<label  class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Nom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->nom}}" name="nom" type="text" id="first-name" required="required" class="form-control ">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Prenom <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->prenom}}" name="prenom" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Organisation <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->inOrganisation}}" name="inOrganisation" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">NINA <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->nina}}" name="nina" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Carte Electeur <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->carteElec}}" name="carteElec" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>




										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Email <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->email}}" name="email" type="email" id="last-name" required="required" class="form-control">
											</div>
										</div>
										    <div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Numero de téléphone <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->numero}}" name="numero" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>
										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Region <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->region}}" name="region" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>

										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Cerlce / Comune <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->cercleComune}}" name="cercleComune" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>

										<div class="item form-group">
											<label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Adresse physique <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 ">
												<input  value="{{$adhesion->adresse}}" name="adresse" type="text" id="last-name" required="required" class="form-control">
											</div>
										</div>


                                            <button class="btn btn-secondary">Modifier</button>
                                            <br>
                                            <br>
                                            <br>
                                            <a href={{ route("admin.adhesion.delete",$adhesion->id) }} class="btn btn-danger">Supprimer</a>



									</form>
								</div>
		</div>
</div>
<div class="col-md-5">
    <div class="carte" id="srceenshot" style="background-color:white;max-width: 439px;min-width: 439px;max-height: 280px;max-height: 280px;">
		<div class="carte__header">
			<img style="width:100%;height:100px;object-fit:contain;" src="{{asset("assets/images/carte.jpg")}}" alt="" srcset="">
			<div style="background-color:#c6c6c6;margin-top: -4px;text-align: center;">
				<h6 style="color:black;padding:2px">CARTE DE MEMBRE</h6>
			</div>
		</div>
		<div class="carte__content" style="display:flex;flex-direction: row;justify-content: space-between;padding:10px">
<div class="left">
	<p style="
    margin-bottom: 4px;
" > <span>Prénom(s) :  </span> {{$adhesion->prenom}} </p>
<p style="
    margin-bottom: 4px;
" > <span>Nom :  </span> {{$adhesion->nom}} </p>
<p style="
    margin-bottom: 4px;
" > <span>Date d'adhesion :  </span> {{date('d-m-Y', strtotime($adhesion->created_at))}} </p>
<p style="
    margin-bottom: 4px;
" > <span>Localite :  </span> {{$adhesion->region}} /  {{$adhesion->cercleComune}} </p>
<p style="
    margin-bottom: 4px;
" > <span>Contact :  </span> {{$adhesion->numero}}  </p>
</div>
<div class="rigth">
<div class="carte__img" >
	<img style="width:100px;height:100px;object-fit:cover;" src="https://www.gestion-benkan.ml/{{$adhesion->photo}}" alt="" srcset="">
</div>
</div>
		</div>
	</div>
<br>
	<button id="generate">Génerer la carte</button>
</div>
</div>

@if ($message = Session::get('success'))
<div class="alert alert-success alert-dismissible " role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                     <strong>{{ $message }}</strong>
                  </div>
@endif



@push('footer')

<!-- Scripts -->
<script src="../build/js/html2canvas.js"></script> 
<script>
	const btn = document.getElementById("generate")



btn.onclick = function(){
    const srceenshot = document.getElementById("srceenshot")
	html2canvas(srceenshot).then((canvas)=>{
		const base64img = canvas.toDataURL("image/png")
		var archor = document.createElement("a")
		archor.setAttribute("href",base64img)
		archor.setAttribute("download","user.png")
		archor.click()
		archor.remove()
	});
}
</script>
@endpush


@endsection
