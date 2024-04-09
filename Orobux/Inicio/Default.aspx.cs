using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inicio_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Session.Add("id_usuario", "");
        }
    }

    protected void btnIniciar_Click(object sender, EventArgs e)
    {
        Usuario oUsuario = new Usuario();
        oUsuario.correo = txt_correo.Text;
        oUsuario.contraseña = txt_contraseña.Text;
        if(oUsuario.Login())
        {
            Session["id_usuario"] = oUsuario.id_usuario;
            Response.Redirect("../orobux/Default.aspx");
        }
        else
        {
            this.muestraError("El usuario/correo o contraseña, es incorrecto", "Hechale mas ganitas");
        }
    }
}