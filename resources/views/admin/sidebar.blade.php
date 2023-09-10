 <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0; background-color:#e95234">
              <a href="index.html" class="site_title"> <span>Benkan Admin</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="{{asset('assets/images/img.jpg')}}" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Bienvenue,</span>
                <h2>Admin</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu" style="text-align:center">
                     <li><a href="{{route("admin.tableau.index")}}"><i class="fa fa-home"></i> Tableau de board  </a>
                     
                  <li><a><i class="fa fa-home"></i> Gestion des articles </a>
                    <ul class="nav child_menu">
                      <li><a href="{{route("admin.post.create")}}">Publier un article</a></li>
                      <li><a href="{{route("admin.post.index")}}">Liste des articles</a></li> 
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> Gestion des Communiqués </a>
                    <ul class="nav child_menu">
                      <li><a href="{{route("admin.avis.create")}}">Publier un Communiqué</a></li>
                      <li><a href="{{route("admin.avis.index")}}">Liste des Communiqués</a></li> 
                    </ul>
                  </li>
                  <hr>
                  <li><a><i class="fa fa-home"></i> Gestion des enquêteurs </a>
                    <ul class="nav child_menu">
                      <li><a href="{{route("admin.enquser.index")}}">Liste des enquêteurs</a></li> 
                      <li><a href="{{route("admin.enquser.create")}}">Ajouter un enquêteur</a></li>
                    </ul>
                  </li>
                
                    
                  </li>
                  <hr>
                   <li><a><i class="fa fa-home"></i> Gestion des adhésions </a>
                    <ul class="nav child_menu">
                     
                      <li><a href="{{route("admin.adhesion.index")}}">Liste des adhérents</a></li> 
                      <li><a href="#">Ajouter un adhérent</a></li> 
                    </ul>
                    <li><a href="{{route("admin.calendar.index",["day" => Carbon\Carbon::now()])}}"><i class="fa fa-calendar"></i> Calendrier </a>
                  {{--   <li><a><i class="fa fa-home"></i> Gestion des comités de base </a>
                    <ul class="nav child_menu">
                     
                      <li><a href="{{route("admin.coorbase.index")}}">Liste des comités de base</a></li> 
                       <li><a href="#">Ajouter un comité de base</a></li> 
                    </ul>
                  </li>

                   <li><a><i class="fa fa-home"></i> Gestion des coordinations communale </a>
                    <ul class="nav child_menu">
                     
                      <li><a href="{{route("admin.coorcom.index")}}">Liste des coordinations communale</a></li> 
                        <li><a href="#">Ajouter une coordination communale</a></li> 
                    </ul>
                  </li>
                   <li><a><i class="fa fa-home"></i> Gestion des coordinations de cercle </a>
                    <ul class="nav child_menu">
                     
                      <li><a href="{{route("admin.coorcercle.index")}}">Liste des coordinations de cercle</a></li> 
                       <li><a href="#">Ajouter une coordination cercle</a></li> 
                    </ul>
                  </li>
                   <li><a><i class="fa fa-home"></i> Gestion des coordinations regionales </a>
                    <ul class="nav child_menu">
                     
                      <li><a href="{{route("admin.coorregion.index")}}">Liste des coordinations regionales</a></li> 
                       <li><a href="#">Ajouter une coordination regionale</a></li>
                    </ul>
                  </li>  --}}
                 {{--  <li><a><i class="fa fa-home"></i> Gestion des résultats</a>
                    <ul class="nav child_menu">
                        <li><a href="index2.html">Liste des résultats</a></li> 
                      
                    </ul>
                  </li> --}}
                   
                  
                </ul>
              </div>
             
            </div>
            <!-- /sidebar menu -->

         
          </div>
        </div>
