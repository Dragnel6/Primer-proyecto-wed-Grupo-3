using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Primer_proyecto_wed_Grupo_3
{
    public partial class Agregar_empleados : System.Web.UI.Page
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


            lblEmpl.Text = "";

            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //txtBusqueda.Focus();
            string selectCommand = "SELECT * FROM empleados";
            SqlDataSource_emp.SelectCommand = selectCommand;
            //gvTabla.DataSource = Sql_busqueda;
            gvEmpleados.DataBind();
        }

        protected void btAgregar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Insert into empleados (IDempleado, nombre, apellidos, dui, telefono, correo)values('" + txtCodigo.Text.ToString() + "', '" + txtNombre.Text.ToString() + "', '" + txtApell.Text.ToString() + "', '" + txtDui.Text.ToString() + "', '" + txtTelef.Text.ToString() + "', '" + txtCorreo.Text.ToString() + "')";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            lblEmpl.Text = "Empleado agregado";
        }

        public void DataShow()
        {
            ds = new DataSet();
            cmd.CommandText = "Select * From empleados";
            cmd.Connection = con;
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cmd.ExecuteNonQuery();
            //gvMenu.DataSource = ds;
            gvEmpleados.DataBind();
            con.Close();
        }

        protected void btActualizar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Update empleados set IDempleado='" + txtCodigo.Text.ToString() + "', nombre= '" + txtNombre.Text.ToString() + "', apellidos='" + txtApell.Text.ToString() + "', dui='" + txtDui.Text.ToString() + "', telefono='" + txtTelef.Text.ToString() + "', correo='" + txtCorreo.Text.ToString() + "' where IDempleado='" + txtCodigo.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            //con.Close();
            DataShow();
            lblEmpl.Text = "Empleado actualizado";
        }
        protected void btEliminar_Click(object sender, EventArgs e)
        {
            dt = new DataTable();
            cmd.CommandText = "Delete from empleados Where IDempleado='" + txtCodigo.Text.ToString() + "'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataShow();
            lblEmpl.Text = "Empleado eliminado";
        }

        protected void btLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtApell.Text = "";
            txtCorreo.Text = "";
            txtDui.Text = "";
            txtTelef.Text = "";
            txtBusqueda.Text = "";
        }

        protected void btBuscar_Click(object sender, EventArgs e)
        {
            if (txtBusqueda.Text != "")
            {
                string search = txtBusqueda.Text;
                SqlDataSource_emp.SelectCommand = "SELECT * FROM empleados " + "WHERE IDempleado LIKE'%" + search + "%' OR " + "nombre LIKE'%" + search + "%' OR " + "apellidos LIKE'%" + search + "%' OR " + "dui LIKE'%" + search + "%' OR " + "telefono LIKE'%" +search+ "%' OR " + "correo LIKE'%" +search+ "%'";
                gvEmpleados.DataBind();
                //txtBusqueda.Focus();

            }
        }


    }

}
