using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Primer_proyecto_wed_Grupo_3
{
    public partial class Tabla_menu : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=LAPTOP-JCD60568;Initial Catalog=sistema;Integrated Security=True";
            con.Open();
            if (!Page.IsPostBack)
            {
                DataShow();
                this.Form.Attributes.Add("autocomplete", "off");
            }


            lblMenu.Text = "";

            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //txtBusqueda.Focus();
            string selectCommand = "SELECT * FROM menu";
            SqlDataSource_tabla.SelectCommand = selectCommand;
            //gvTabla.DataSource = Sql_busqueda;
            gvMenu.DataBind();
        }


        protected void btAgregar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Insert into menu (IDproducto, producto, precio, tipo_platillo)values('" + txtCodigo.Text.ToString() + "', '" + txtProduc.Text.ToString() + "', '" + txtPrecio.Text.ToString() + "', '" + txtTiPlatillo.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            lblMenu.Text = "Platillo agregado";
        }    

        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "Select * From menu";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            //gvMenu.DataSource = ds;
            gvMenu.DataBind();
            con.Close();
        }
        
        protected void btActualizar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update menu set IDproducto='" +txtCodigo.Text.ToString()+ "', producto= '" +txtProduc.Text.ToString()+ "', precio='" +txtPrecio.Text.ToString()+ "', tipo_platillo='" +txtTiPlatillo.Text.ToString()+ "' where IDproducto='" +txtCodigo.Text.ToString()+ "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            //con.Close();
            DataShow();
            lblMenu.Text = "Platillo actualizado";
        }

        protected void btEliminar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from menu Where IDproducto='" +txtCodigo.Text.ToString()+ "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            lblMenu.Text = "Platillo eliminado";
        }

        protected void btLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtProduc.Text = "";
            txtPrecio.Text = "";
            txtTiPlatillo.Text = "";
            txtBusqueda.Text = "";
        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            if (txtBusqueda.Text != "")
            {
                string search = txtBusqueda.Text;
                SqlDataSource_tabla.SelectCommand = "SELECT * FROM menu " + "WHERE IDproducto LIKE'%" + search + "%' OR " + "producto LIKE'%" + search + "%' OR " + "precio LIKE'%" + search + "%' OR " +"tipo_platillo LIKE'%" +search+  "%'";
                gvMenu.DataBind();
                //txtBusqueda.Focus();

            }
        }
    }
}