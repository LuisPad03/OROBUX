<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Inicio_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Orobux</title>

    <!-- Bootstrap core CSS
-->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>

    <!-- Page level plugin CSS-->
    <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin.css" rel="stylesheet"/>

     <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

   

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin.min.js"></script>
</head>
<body class="bg-dark">
    <form id="form1" runat="server">
        <div class="container">

                            <!-- Mensaje en popup -->
                        <div class="modal fade" id="modMensaje" style="z-index: 10000">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="lblModalMensajeTitulo">
                                            
                                                Modal title
                                            
                                        </h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        
                                    </div>
                                    <div class="modal-body">
                                        <p id="lblModalMensajeTexto">One fine body&hellip;</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>

      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Iniciar Sesión</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div class="form-label-group">
              <!--  <input type="email" id="inputEmail" runat="server" class="form-control" placeholder="Email address" required="required" autofocus="autofocus"> -->
                  <asp:TextBox runat="server" ID="txt_correo" class="form-control" placeholder="Email address" required="required" autofocus="autofocus"></asp:TextBox>
                <label for="inputEmail">Correo / Usuario</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
               <!-- <input type="password" id="inputPassword" runat="server" class="form-control" placeholder="Password" required="required"> -->
                  <asp:TextBox TextMode="Password" runat="server"  ID="txt_contraseña" class="form-control" placeholder="Password" required="required"></asp:TextBox>
                <label for="inputPassword">Contraseña</label>
              </div>
            </div>
            <div class="form-group">
             <!--  <div class="checkbox">
               <label> <br />
            
                  <input type="checkbox" value="remember-me">
                  Recordar Contraseña
                </label> -->
              </div>
            </div>
            <a id="btnIniciar" class="btn btn-primary btn-block" >Inicio</a>
            <asp:Button ID="btnSesion" runat="server" Text="Inicio" OnClick="btnIniciar_Click" Style="display:none"  />
              <script type="text/javascript">
                  $("#btnIniciar").click(function () {
                      $("#btnSesion").click();
                  });
              </script>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="registrar.aspx">Crear una Cuenta</a>
            <a class="d-block small" href="recupera_contraseña.aspx">Olvide mi Contraseña?</a>
          </div>
        </div>
      </div>
    </div>
    <div id="progressModal" class="modal col-lg-offset-3 col-md-offset-3 col-sm-offset-4 col-xs-offset-5" style="z-index: 10000" 
	tabindex="-1" role="dialog" aria-hidden="true"> 
	<div id="progressModalDet" class="modal-dialog modal-sm"> 
	<div id="progressModalContent" class="modal-content" style="background-color: transparent;"> 
	<img src="../images/ajax-loader.gif" alt="" style="max-height: 60px; max-width: 60px;" /> 
	</div> 
	</div> 
	</div> 
	<script type="text/javascript"> 
	$('form').submit(function (event) { 
	var options = { 
	"backdrop": "static" 
	, "keyboard": "false" 
	} 
	$('#progressModalContent').css("-webkit-box-shadow", 'rgba(0, 0, 0, 0.5) 0px 0px 0px 0px'); 
	$('#progressModalContent').css("border-width", "0px"); 
	$('#progressModal').modal(options); 
	
	}); 
	$("#txtAlias").focus(); 
	
	$('.mnuManual').click(function () { 
	OpenInNewTab('./Documento/FHL WMS Movil.pdf'); 
	}); 
    </script>
    </form>
      
</body>
</html>
