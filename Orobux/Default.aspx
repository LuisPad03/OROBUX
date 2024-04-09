<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Orobux</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="vendor/bootstrap/css/carousel.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
     <header>
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Orobux</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
           <form class="form-inline mt-2 mt-md-0">
              <ul class="navbar-nav border-left"> 
                <li class="nav-item">
                  <a class="nav-link" href="/Inicio/Default.aspx">Iniciar Sesión | </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/Inicio/registrar.aspx">Registrar |</a>
                </li>   
              </ul>
            </form>
        </div>
      </nav>
    </header>

        <main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="images/c1.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Perfil Metacognitivo</h1>
                <p>Dime con quien te juntas y te dire quie eres.</p>
                <p><a class="btn btn-lg btn-primary" href="#personalidad" role="button">Leer mas</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="images/c4.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>Perfil Cognitivo</h1>
                <p>Como piensas</p>
                <p><a class="btn btn-lg btn-primary" href="#personalidad2" role="button">Leer mas</a></p>
              </div>
            </div>
          </div>
     
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>



      <div  class="container marketing">
          
           <div id="personalidad" class="col-md-7">
            <h1>Perfil Metacognitivo </h1>
           </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Inventario Metacgnitivo (IM)<span class="text-muted">.</span></h2>
            <p class="lead">Instrucciones y descripcion del test.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="images/e5.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Actividad Metacognitiva (AM) <span class="text-muted">.</span></h2>
            <p class="lead">Instrucciones y descripccion del test.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="images/e2.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Sistamas de Representacion (SR) <span class="text-muted">.</span></h2>
            <p class="lead">Instrucciones y descripcion del test.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="images/e11.jpg" alt="Generic placeholder image">
          </div>
        </div>

          <hr class="featurette-divider">

          <div id="personalidad2" class="col-md-7">
            <h1>Perfil Cognitivo </h1>
          </div>
        

          <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Inteligencias Multiples (MI) <span class="text-muted">.</span></h2>
            <p class="lead">Instrucciones y descripcion del test.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="images/e1.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Inteligencia Emocional (IE) <span class="text-muted">.</span></h2>
            <p class="lead">Instrucciones y descripccion del test.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="images/e8.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">


      </div><!-- /.container -->


      <!-- FOOTER -->
      <footer class="container">
        <p class="float-right"><a href="#">Back to top</a></p>
        <p>&copy; 2018 Orobux, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </main>

    </form>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="jquery/jquery.slim.min.js"><\/script>')</script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/bootstrap/js/popper.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    
    <script src="vendor/bootstrap/js/holder.min.js"></script>
</body>
</html>
