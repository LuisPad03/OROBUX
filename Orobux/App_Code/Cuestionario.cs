using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Descripción breve de Cuestionario
/// </summary>
public class Cuestionario
{
    public int id_cuestionario = 0, id_usuario=0, respuesta=0, id_cuestionario_det=0;
    public string Error_Cuestionario = "";
    public Cuestionario()
    {
        
    }

    public DataSet Carga_cuestionario()
    {
        DataAcces Da = new DataAcces();
        Da.Sentencia = "exec sp_consulta_pregunta " + id_cuestionario.ToString();
        DataSet Ds = new DataSet();
        Ds = Da.GetData();

        return Ds;

    }

    public bool Guarda_Cuestionario_Us ()
    {
        bool Guarda=false;
        DataAcces Da = new DataAcces();
        try
        {
            Da.Sentencia = "exec sp_guarda_cuestionario @id_cuestionario=" + id_cuestionario.ToString() + ", @id_usuario=" + id_usuario.ToString() +
                ", @respuesta=" + respuesta.ToString() + ", @id_cuestionario_det=" + id_cuestionario_det.ToString();
            DataSet Ds = new DataSet();
            Ds = Da.GetData();
            Guarda = true;
        }
        catch(Exception e)
        {
            Error_Cuestionario = e.Message;
            Guarda = false;
        }

        return Guarda;
    }


}