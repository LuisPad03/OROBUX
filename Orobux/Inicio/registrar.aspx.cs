using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inicio_registrar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        //
        
        
        if (inputPassword.Text!=confirmPassword.Text)
        {
            this.muestraError( " Las contraseñas no coinciden", "Hechale mas ganitas");
        }
        else
        {
            Usuario oUsuario = new Usuario();
            oUsuario.nombre = firstName.Text;
            oUsuario.apellido = lastName.Text;
            oUsuario.correo = inputEmail.Text;
            oUsuario.username = User.Text;
            oUsuario.contraseña = inputPassword.Text;

            if(oUsuario.Guardar())
            {
                this.muestraExito("Usuario Registrado", "Datos guardados");
            }
            else
            {
                this.muestraError( oUsuario.error_usuario , "Hechale mas ganitas");
            }
        }
    }
}