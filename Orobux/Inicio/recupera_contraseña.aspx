<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recupera_contraseña.aspx.cs" Inherits="Inicio_recupera_contraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Recuperar Contraseña</title>

    <!-- Bootstrap core CSS-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">
    <form id="form1" runat="server">
        <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Restablecer la contraseña</div>
        <div class="card-body">
          <div class="text-center mb-4">
            <h4>¿Olvidaste tu contraseña?</h4>
            <p>Ingrese su dirección de correo electrónico y le enviaremos instrucciones sobre cómo restablecer su contraseña.</p>
          </div>
          <form>
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus">
                <label for="inputEmail">Introducir la dirección de correo electrónico</label>
              </div>
            </div>
            <a class="btn btn-primary btn-block" href="Default.aspx">Resetablecer Contraseña</a>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="registrar.aspx">Crear una Cuenta</a>
            <a class="d-block small" href="Default.aspx">Pagina de Inicio</a>
          </div>
        </div>
      </div>
    </div>
    </form>
     <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>
