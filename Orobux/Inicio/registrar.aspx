<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrar.aspx.cs" Inherits="Inicio_registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Crear Cuenta</title>

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

      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Nuevo Usuario</div>
        <div class="card-body">
          <form>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <asp:TextBox ID="firstName" runat="server" class="form-control" placeholder="First name" required="required" autofocus="autofocus"></asp:TextBox>
                      <label for="firstName">Nombre</label>
                  </div>
            
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                     <asp:TextBox ID="lastName" runat="server" class="form-control" placeholder="Last name" required="required"></asp:TextBox>
                    <label for="lastName">Apellidos</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              
                <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                       <asp:TextBox ID="inputEmail" runat="server" class="form-control" placeholder="Email address" required="required"></asp:TextBox>
                    <label for="inputEmail">Correo</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                      <asp:TextBox ID="User" runat="server" class="form-control" placeholder="Usuario" required="required"></asp:TextBox>
                    <label for="User">Usuario</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                       <asp:TextBox ID="inputPassword" runat="server" class="form-control" placeholder="Password" required="required"></asp:TextBox>
                    <label for="inputPassword">Contraseña</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                      <asp:TextBox ID="confirmPassword" runat="server" class="form-control" placeholder="Confirm password" required="required"></asp:TextBox>
                    <label for="confirmPassword">Confirmar contraseña</label>
                  </div>
                </div>
              </div>
            </div>
            <a id="btnRegistrar" class="btn btn-primary btn-block" href="#">Registrar</a>
              <asp:Button ID="btnGuardar" Text="Guardar" runat="server" OnClick="btnGuardar_Click" Style="display:none" />
              <script type="text/javascript">
                  $("#btnRegistrar").click(function () {
                      $("#btnGuardar").click();
                  });

              </script>
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="Default.aspx">Pagina de Inicio</a>
            <a class="d-block small" href="recupera_contraseña.aspx">Olvide mi contraseña?</a>
          </div>
        </div>
      </div>
    </div>
    </form>
    


   



</body>
</html>
