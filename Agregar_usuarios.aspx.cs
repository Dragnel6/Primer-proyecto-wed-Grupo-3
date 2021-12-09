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
    public partial class Agregar_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsuarios.Text = "";
            if (!Page.IsPostBack)
            {
                this.Form.Attributes.Add("autocomplete", "off");
            }

            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btRegistrar_Click(object sender, EventArgs e)
        {
            /*Este primer segmento de codigo es para determinar si ya tenemos el usuario registrado,
             la mayoria de sistemas web se valida el usuario por medio de su nombre de usuario o correo.

         creamos la variable conexion con la cadena del Origen de Datos Que podemos ver aqui, bueno que usando el sqlDataSourcel creado podemos iniciar
         la conexion a la base de datos.*/

            SqlConnection conexion = new SqlConnection(this.Sql_cargos.ConnectionString);

            //Creamos una variable usuario para almacenar el usuario ingresado sin espacios
            string usuario;

            //Quitamos cualquier espacio digitado en el campo con la funcion TRIM Es recomendable aplicar TRIM aunque podria funcionar son usarla.
            //Quite el Trim porque daba error.
            usuario = (txtUsuario.Text);

            //Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta Aqui comparamos si existe el nombre de usuario

            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM ingreso WHERE Usuario = @usuario", conexion);

            //Abrimos la conexión
            conexion.Open();

            //Asignamos a un parametro el valor del campo correo ingresado para pasarlo a la consulta
            consulta_comprobar.Parameters.AddWithValue("@usuario", usuario);

            //Creamos la variable i para contar los registros encontrados
            int i;

            //Con la funcion ExecuteScalar determinamos cuantos registros hay Si tenemos al menos uno es que ya existe un usuario que usa el correo ingresado
            i = System.Convert.ToInt32(consulta_comprobar.ExecuteScalar());

            //'Tomamos la desicion si existe o no
            if (i > 0)
            {
                //Avisamos y salimos
                this.lblUsuarios.Text = "El nombre de usuario ya esta en uso";

                //Cerramos la conexion
                conexion.Close();

                //########################################################################
                //Si El usuario no existe, lo añadimos, se ejecuta la condicional else Else
            }
            else
            {
                string cadenaconsulta;
                cadenaconsulta = "insert into ingreso(Usuario, Contrasena, tipo) values(@usuario,@clave, @tipo)";

                //Usamos el comando Insert del DataSource
                SqlCommand consulta_agregar = new SqlCommand(cadenaconsulta, conexion);
                //SqlCommand consulta = new SqlCommand(cadenaconsulta, conexion);

                consulta_agregar.Parameters.AddWithValue("@usuario", txtUsuario.Text);
                consulta_agregar.Parameters.AddWithValue("@clave", txtClave.Text);
                consulta_agregar.Parameters.AddWithValue("@tipo", ddlTipo.Text);

                try
                {
                    //Ejecutamos la consulta que agrega los datos pasados en los parametros a los campos de la tabla
                    consulta_agregar.ExecuteNonQuery();
                    //Cerramos la conexión 
                    conexion.Close();

                    //Presentamos el mensaje que se agrego con exito el nuevo usuario
                    this.lblUsuarios.Text = "Se agregó el nuevo usuario correctamente";

                }
                catch
                {

                    //Para presentarlo en una etiqueta, evitamos error de compilacion Me
                    //La funcion Catch permite capturar cualquier error al intentar guardar
                    this.lblUsuarios.Text = "Error al intentar guardar";
                }

            }
        }
    }
}