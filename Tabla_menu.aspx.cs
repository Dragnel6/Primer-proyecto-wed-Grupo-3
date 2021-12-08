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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btAgregar_Click(object sender, EventArgs e)
        {
            // Incorporamos la cadena de conexion usando el origen de la tabla empleado
            SqlConnection conexion = new SqlConnection(this.Sql_tabla.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta
            // Aqui comparamos si el codigo ya ha sido asignado

            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM menu WHERE IDproducto = @codigo", conexion);

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
                this.lblEmpl.Text = "El codigo asignado al producto ya fue asignado";

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
                consulta = "insert into menu(IDproducto, producto, precio, tipo_platillo) values(@codigo, @nombre, @pre, @tipo)";

                // Ejecutamos la consulta usando la funcion SQLCommand
                SqlCommand consulta_agregar = new SqlCommand(consulta, conexion);

                // Paso de las variables a parametros que recive la cadena de consulta
                consulta_agregar.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                consulta_agregar.Parameters.AddWithValue("@nombre", txtProduc.Text);
                consulta_agregar.Parameters.AddWithValue("@pre", txtPrecio.Text);
                consulta_agregar.Parameters.AddWithValue("@tipo", txtTiPlatillo.Text);
                try
                {

                    // Ejecutamos la consulta que agrega los datos pasados en los parametros
                    // a los campos de la tabla empleado.
                    consulta_agregar.ExecuteNonQuery();

                    // Cerramos la conexión
                    conexion.Close();

                    // Presentamos el mensaje que se agrego con exito el nuevo usuario
                    this.lblEmpl.Text = "Se agregó el nuevo platillo correctamente";
                }


                // La funcion Catch permite capturar cualquier error al intentar guardar
                catch (Exception error_excepcion)
                {

                    // Para presentarlo en una etiqueta, evitamos error de compilacion
                    this.lblEmpl.Text = error_excepcion.Message;
                }

            }
        }

            protected void gvTabla_SelectedIndexChanged(object sender, EventArgs e)
            {
            Sql_tabla.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;
            datos = (SqlDataReader)Sql_tabla.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                txtCodigo.Text = datos["IDproducto"].ToString();
                txtProduc.Text = datos["producto"].ToString();
                txtPrecio.Text = datos["precio"].ToString();
                txtTiPlatillo.Text = datos["tipo_platillo"].ToString();
            }
        }

        protected void btActualizar_Click(object sender, EventArgs e)
        {
            // Incorporamos la cadena de conexion usando el origen de la tabla empleado 
            SqlConnection conexion = new SqlConnection(this.Sql_tabla.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta Aqui comparamos si el codigo ya ha sido asignado 
            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM menu WHERE IDproducto = @codigo", conexion);

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
                    this.lblEmpl.Text = "El codigo asignado al platillo ya fue asignado";

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
                    consulta = "UPDATE menu set IDproducto = @codigo, producto=@nombre, precio=@pre, tipo_platillo=@tipo WHERE @codigo=" + txtCodigo.Text + "";

                    // Ejecutamos la consulta usando la funcion SQL Command 
                    SqlCommand consulta_agregar = new SqlCommand(consulta, conexion);

                    // Paso de las variables a parametros que recive la cadena de consulta 
                    consulta_agregar.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                    consulta_agregar.Parameters.AddWithValue("@nombre", txtProduc.Text);
                    consulta_agregar.Parameters.AddWithValue("@pre", txtPrecio.Text);
                    consulta_agregar.Parameters.AddWithValue("@tipo", txtTiPlatillo.Text);

                    try
                    {
                        // Ejecutamos la consulta que agrega los datos pasados en los parametros 'a los campos de la tabla empleado. 
                        consulta_agregar.ExecuteNonQuery();

                        // Cerramos la conexión 
                        conexion.Close();

                        // Presentamos el mensaje que se agrego con exito el nuevo usuario 
                        this.lblEmpl.Text = "Se guardo el nuevo platillo correctamente";
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
            SqlConnection conexion = new SqlConnection(this.Sql_tabla.ConnectionString);

            // Creamos la variable de consulta_comprobar y le asignamos la cadena de consulta
            // Aqui comparamos si el codigo ya ha sido asignado

            SqlCommand consulta_comprobar = new SqlCommand("SELECT * FROM menu WHERE IDproducto = @codigo", conexion);

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
                string eliminar = "delete from menu WHERE IDproducto = " + txtCodigo.Text + "";

                // Ejecucion de consulta
                SqlCommand consulta_eliminar = new SqlCommand(eliminar, conexion);

                try
                {
                    // Ejecutamos la consulta que agrega los datos pasados en los parametros 'a los campos de la tabla empleado.
                    consulta_eliminar.ExecuteNonQuery();

                    // Presentamos el mensaje que se agrego con exito el nuevo usuario 
                    this.lblEmpl.Text = "Se elimino el platillo correctamente";
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
                this.lblEmpl.Text = "No existe el platillo con el codigo asignado";

                // Cerramos la conexión
                conexion.Close();
            }

        }

    }
}