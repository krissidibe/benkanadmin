<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Benkan | Test  </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div style="margin-top: 200px">
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="{{ route("admin.tableau.index")}}" method="get">
              <h1>Benkan Connexion</h1>
              <div>
                <input type="text" class="form-control" placeholder="email" required="" />
              </div>
              <div>
                <input type="password" class="form-control" placeholder="Mot de passe" required="" />
              </div>
              <div style="margin-left:75px ">
                <input type="submit" class="btn btn-default submit" value="Connexion" />
                
              </div>

              <div class="clearfix"></div>

             
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            
          </section>
        </div>
      </div>
    </div>
  </body>
</html><!DOCTYPE html>
<html lang="en">
   