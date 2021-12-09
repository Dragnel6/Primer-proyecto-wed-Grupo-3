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
              if (Session["Usuario"] == null){

                this.lblSesion.Text = "No has iniciado sesion";
                Response.Redirect("Login.aspx");
                btCerrarSe.Visible = false;
              }
              else
              {
                  this.lblSesion.Text = "Esta seguro que desea cerrar la sesion iniciada como: " + Session["Usuario"] + "";
              }
        }

        protected void btCerrarSe_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            this.Response.Redirect("Login.aspx");
        }
    }
}