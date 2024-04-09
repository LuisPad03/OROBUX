using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class orobux_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_usuario"] == null) Response.Redirect("../Inicio/Default.aspx");
        if (!IsPostBack)
        {
            int id_cuestionario;
            id_cuestionario = int.Parse(Request.QueryString["id"].ToString());
            Session["id_cuestionario"] = id_cuestionario;
            Carga_cuestionario(id_cuestionario);
        }
    }

    private void Carga_cuestionario(int id_cuestionario)
    {
        Cuestionario Da = new Cuestionario();
        Da.id_cuestionario = id_cuestionario;
        DataSet Ds = new DataSet();
        Ds = Da.Carga_cuestionario();
        /* if (Ds.Tables[0].Rows[0]["numero_opciones"].ToString()=="5")
         {*/
        Cuestionario5.DataSource = Ds;
        Cuestionario5.DataBind();
        Cuestionario5.Visible = true;
        Cuestionario3.Visible = false;
        /*}
        else
        {
            Cuestionario3.DataSource = Ds;
            Cuestionario3.DataBind();
            Cuestionario5.Visible = false;
            Cuestionario3.Visible = true;
        }*/

    }

    protected void btn_Guardar_Click(object sender, EventArgs e)
    {
        Cuestionario oCuestionario = new Cuestionario();
        int respuesta = 0, id_pregunta = 0;
        string sError = "";
        RadioButton uno, dos, tres, cuatro, cinco;
        Label Label;
        foreach (RepeaterItem item in Cuestionario5.Items)
        {
            uno = item.FindControl("chk_nunca") as RadioButton;
            dos = item.FindControl("chk_pocasveces") as RadioButton;
            tres = item.FindControl("chk_frecuentemente") as RadioButton;
            cuatro = item.FindControl("chk_muchasveces") as RadioButton;
            cinco = item.FindControl("chk_siempre") as RadioButton;
            Label = item.FindControl("id_pregunta") as Label;

            if (uno.Checked) respuesta = 1;
            if (dos.Checked) respuesta = 2;
            if (tres.Checked) respuesta = 3;
            if (cuatro.Checked) respuesta = 4;
            if (cinco.Checked) respuesta = 5;

            oCuestionario.id_cuestionario = int.Parse(Session["id_cuestionario"].ToString());
            oCuestionario.id_usuario = int.Parse(Session["id_usuario"].ToString());
            oCuestionario.respuesta = respuesta;
            oCuestionario.id_cuestionario_det = int.Parse(Label.Text);

            if (!oCuestionario.Guarda_Cuestionario_Us())
            {

                sError = oCuestionario.Error_Cuestionario;
            }

        }
        if (sError.Trim().Length > 0)
        {
            this.muestraError(sError, "Error");
        }
        else this.muestraExito("Datos Guardados", "Aviso");

    }

    protected void Cuestionario_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        RepeaterItem item = e.Item;
        if (item.ItemType == ListItemType.AlternatingItem || item.ItemType == ListItemType.Item)
        {
            Label lbl_id_pregunta = (Label)item.FindControl("id_pregunta");
            lbl_id_pregunta.Text = ((System.Data.DataRowView)(item.DataItem)).Row.ItemArray[0].ToString();
        }
    }



    protected void Cuestionario5_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}