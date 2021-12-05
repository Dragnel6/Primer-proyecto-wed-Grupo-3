using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Primer_proyecto_wed_Grupo_3
{
    public partial class Cerrar_sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

              if (Session["Usuario"] == ""){

                 // Me.Response.Redirect("Menu principal.aspx")

                  this.lblSesion.Text = "No se ha iniciado ninguna sesion de usuario.";
                  this.lblNombre.Text = "";
                  //SESION.Visible = false;
              }
              else
              {
                  this.lblSesion.Text = "Esta seguro que desea cerrar la sesion iniciada como:";
                  this.lblNombre.Text ="" + Session["Usuario"] + "";
                  //SESION.Visible = true;
              }

        }

        protected void btCerrarSe_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = "";
            this.Response.Redirect("Login.aspx");
        }
    }
}