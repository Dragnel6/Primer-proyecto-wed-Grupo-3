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
    {   protected void Page_Load(object sender, EventArgs e)
         {

         }

        protected void GbEmpleados_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource_emple.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)SqlDataSource_emple.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                txtCodigo.Text = datos["IDempleado"].ToString();
                txtNombre.Text = datos["nombre"].ToString();
                txtApell.Text = datos["apellidos"].ToString();
                txtDui.Text = datos["dui"].ToString();
                txtTelef.Text = datos["telefono"].ToString();
                txtCorreo.Text = datos["correo"].ToString();
            }
        }


        protected void btAgregar_Click(object sender, EventArgs e)
        {
            // Incorporamos la cadena de conexion usando el origen de la tabla empleado
            SqlConnection conexion = new SqlConnection(this.SqlDataSource_emple.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta
            // Aqui comparamos si el codigo ya ha sido asignado

            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM empleados WHERE IDempleado = @codigo", conexion);

            // Abrimos la conexión
            conexion.Open();

            // Asignamos a un parametro el valor del campo correo ingresado para
            // pasarlo a la consulta
            // comprobar.Parameters.AddWithValue("@codigo", Strings.Trim(txtcodigo.Text));

            consulta_comprobar.Parameters.AddWithValue("@codigo", txtCodigo.Text);

            // Creamos la variable i para contar los registros encontrados
            int registros;

            // Con la funcion ExecuteScalar determinamos cuantos registros hay
            // Si tenemos al menos uno es que ya existe un empleado con el codigo

            registros = System.Convert.ToInt32(consulta_comprobar.ExecuteScalar());

            // Tomamos la desicion si existe o no
            if (registros > 0)
            {
                // Avisamos y salimos
                this.lblEmpl.Text = "El codigo asignado al empleado ya fue asignado";

                // Cerramos la conexión
                conexion.Close();
            }

            // #################################################################################
            // Si El usuario no existe, lo añadimos, se ejecuta la condicional else
            else
            {

                // Creamos la variable donde almacenamos la cadena de consulta
                // Que en este caso es una instruccion Insert Into para guardar
                // en la tabla empleado
                string consulta;
                consulta = "insert into empleados(IDempleado, nombre, apellidos, dui, telefono, correo) values(@codigo, @nombre, @apellido, @dui, @telefono, @correo)";

                // Ejecutamos la consulta usando la funcion SQLCommand
                SqlCommand consulta_agregar = new SqlCommand(consulta, conexion);

                // Paso de las variables a parametros que recive la cadena de consulta
                consulta_agregar.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                consulta_agregar.Parameters.AddWithValue("@nombre", txtNombre.Text);
                consulta_agregar.Parameters.AddWithValue("@apellido", txtApell.Text);
                consulta_agregar.Parameters.AddWithValue("@dui", txtDui.Text);
                consulta_agregar.Parameters.AddWithValue("@telefono", txtTelef.Text);
                consulta_agregar.Parameters.AddWithValue("@correo", txtCorreo.Text);
                try
                {

                    // Ejecutamos la consulta que agrega los datos pasados en los parametros
                    // a los campos de la tabla empleado.
                    consulta_agregar.ExecuteNonQuery();

                    // Cerramos la conexión
                    conexion.Close();

                    // Presentamos el mensaje que se agrego con exito el nuevo usuario
                    this.lblEmpl.Text = "Se agregó el nuevo empleado correctamente";
                }


                // La funcion Catch permite capturar cualquier error al intentar guardar
                catch (Exception error_excepcion)
                {

                    // Para presentarlo en una etiqueta, evitamos error de compilacion
                    this.lblEmpl.Text = error_excepcion.Message;
                }
            }
        }
        protected void btGuardar_Click(object sender, EventArgs e)
        {
            // Incorporamos la cadena de conexion usando el origen de la tabla empleado 
            SqlConnection conexion = new SqlConnection(this.SqlDataSource_emple.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta Aqui comparamos si el codigo ya ha sido asignado 
            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM empleados WHERE IDempleado = @codigo", conexion);

            // Abrimos la conexión'
            conexion.Open();

            // Asignamos a un parametro el valor del campo correo ingresado para pasarlo a la consulta 
            //consulta_comprobar.Parameters.AddWithValue("@codigo", Strings.Trim(txtcodigo.Text));

            consulta_comprobar.Parameters.AddWithValue("@codigo", txtCodigo.Text);

            // Creamos la variable i para contar los registros encontrados 
            int registros;
            // Con la funcion ExecuteScalar determinamos cuantos registros hay 'Si tenemos al menos uno es que ya existe un empleado con el codigo 
            registros = System.Convert.ToInt32(consulta_comprobar.ExecuteScalar());

            {
                // Tomamos la desicion si existe o no 
                if (registros > 0)
                {
                    // Avisamos y salimos
                    this.lblEmpl.Text = "El codigo asignado al empleado ya fue asignado";

                    // Cerramos la conexión
                    conexion.Close();
                }
                else
                {
                    // #################################################################################

                    // Si El usuario no existe, lo añadimos, se ejecuta la condicional else 

                    // Creamos la variable donde almacenamos la cadena de consulta "Que en este caso es una instruccion Insert Into para guardar en la tabla empleado
                    string consulta;
                    //consulta = "update empleados set(nombre=@nombre, apellidos=@apellido, dui=@dui, telefono=@telefono, correo=@correo where @codigo=)" + txtCodigo.Text + "";
                    consulta = "UPDATE empleados set IDempleado = @codigo, nombre=@nombre, apellidos=@apellido, dui=@dui, telefono=@telefono, correo=@correo WHERE @codigo=" + txtCodigo.Text + "";

                    // Ejecutamos la consulta usando la funcion SQL Command 
                    SqlCommand consulta_agregar = new SqlCommand(consulta, conexion);

                    // Paso de las variables a parametros que recive la cadena de consulta 
                    consulta_agregar.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                    consulta_agregar.Parameters.AddWithValue("@nombre", txtNombre.Text);
                    consulta_agregar.Parameters.AddWithValue("@apellido", txtApell.Text);
                    consulta_agregar.Parameters.AddWithValue("@dui", txtDui.Text);
                    consulta_agregar.Parameters.AddWithValue("@telefono", txtTelef.Text);
                    consulta_agregar.Parameters.AddWithValue("@correo", txtCorreo.Text);

                    try
                    {
                        // Ejecutamos la consulta que agrega los datos pasados en los parametros 'a los campos de la tabla empleado. 
                        consulta_agregar.ExecuteNonQuery();

                        // Cerramos la conexión 
                        conexion.Close();

                        // Presentamos el mensaje que se agrego con exito el nuevo usuario 
                        this.lblEmpl.Text = "Se guardo el nuevo empleado correctamente";
                    }

                    // La funcion Catch permite capturar cualquier error al intentar guardar 
                    catch (Exception error_excepcion)
                    {
                        // Para presentarlo en una etiqueta, evitamos error de compilacion
                        this.lblEmpl.Text = error_excepcion.Message;
                    }
                }
            }
        }
        protected void btEliminar_Click(object sender, EventArgs e)
        {
            //Incorporamos la cadena de conexion usando el origen de la tabla empleado
            SqlConnection conexion = new SqlConnection(this.SqlDataSource_emple.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta
            // Aqui comparamos si el codigo ya ha sido asignado

            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM empleados WHERE IDempleado = @codigo", conexion);

            // Abrimos la conexión
            conexion.Open();

            // Asignamos a un parametro el valor del campo correo ingresado para
            // pasarlo a la consulta
            // comprobar.Parameters.AddWithValue("@codigo", Strings.Trim(txtcodigo.Text));

            consulta_comprobar.Parameters.AddWithValue("@codigo", txtCodigo.Text);

            // Creamos la variable i para contar los registros encontrados
            int registros;

            // Con la funcion ExecuteScalar determinamos cuantos registros hay
            // Si tenemos al menos uno es que ya existe un empleado con el codigo

            registros = System.Convert.ToInt32(consulta_comprobar.ExecuteScalar());

            // Tomamos la desicion si existe o no
            if (registros > 0)
            {
                string eliminar = "delete from empleados WHERE IDempleado = " + txtCodigo.Text + "";

                // Ejecucion de consulta
                SqlCommand consulta_eliminar = new SqlCommand(eliminar, conexion);

                try
                {
                    // Ejecutamos la consulta que agrega los datos pasados en los parametros 'a los campos de la tabla empleado.
                    consulta_eliminar.ExecuteNonQuery();

                    // Presentamos el mensaje que se agrego con exito el nuevo usuario 
                    this.lblEmpl.Text = "Se elimino el empleado correctamente";
                }
                // La funcion Catch permite capturar cualquier error al intentar guardar
                catch (Exception error_excepcion)
                {

                    // Para presentarlo en una etiqueta, evitamos error de compilacion 
                    this.lblEmpl.Text = error_excepcion.Message;
                }
            }
            else
            {
                // #################################################################################
                // Si El usuario no existe, mostramos alerta, se ejecuta la condicional else

                // Avisamos y salimos
                this.lblEmpl.Text = "No existe empleado con el codigo asignado";

                // Cerramos la conexión
                conexion.Close();
            }

        }


    }
}