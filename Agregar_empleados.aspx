<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Agregar_empleados.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Agregar_empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        html, body {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  background: #2c3e50;
  font-family: 'Montserrat', sans-serif;
  font-size: 16px;
}

body {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
  -webkit-justify-content: space-around;
      -ms-flex-pack: distribute;
          justify-content: space-around;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-align-content: center;
      -ms-flex-line-pack: center;
          align-content: center;
}

h1 {
  color: #f1c40f;
  font-size: 4rem;
  text-transform: uppercase;
  display: block;
  width: 100%;
  text-align: center;
}
@media screen and (max-width: 600px) {
  h1 {
    font-size: 3rem;
  }
}

p {
  color: #f1c40f;
  font-size: 1.2rem;
  width: 100%;
  padding: 20px;
  text-align: center;
}

.btn {
  box-sizing: border-box;
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  background-color: transparent;
  border: 2px solid #e74c3c;
  border-radius: 0.6em;
  color: #e74c3c;
  cursor: pointer;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-self: center;
      -ms-flex-item-align: center;
          align-self: center;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1;
  margin: 20px;
  padding: 1.2em 2.8em;
  text-decoration: none;
  text-align: center;
  text-transform: uppercase;
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  margin-left: auto;
  margin-right: auto;
}
.btn:hover, .btn:focus {
  color: #fff;
  outline: 0;
}

.first {
  -webkit-transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
  transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
}
.first:hover {
  box-shadow: 0 0 40px 40px #e74c3c inset;
}

.second {
  border-radius: 3em;
  border-color: #1abc9c;
  color: #fff;
  background-image: -webkit-linear-gradient(left, rgba(26, 188, 156, 0.6), rgba(26, 188, 156, 0.6) 5%, #1abc9c 5%, #1abc9c 10%, rgba(26, 188, 156, 0.6) 10%, rgba(26, 188, 156, 0.6) 15%, #1abc9c 15%, #1abc9c 20%, rgba(26, 188, 156, 0.6) 20%, rgba(26, 188, 156, 0.6) 25%, #1abc9c 25%, #1abc9c 30%, rgba(26, 188, 156, 0.6) 30%, rgba(26, 188, 156, 0.6) 35%, #1abc9c 35%, #1abc9c 40%, rgba(26, 188, 156, 0.6) 40%, rgba(26, 188, 156, 0.6) 45%, #1abc9c 45%, #1abc9c 50%, rgba(26, 188, 156, 0.6) 50%, rgba(26, 188, 156, 0.6) 55%, #1abc9c 55%, #1abc9c 60%, rgba(26, 188, 156, 0.6) 60%, rgba(26, 188, 156, 0.6) 65%, #1abc9c 65%, #1abc9c 70%, rgba(26, 188, 156, 0.6) 70%, rgba(26, 188, 156, 0.6) 75%, #1abc9c 75%, #1abc9c 80%, rgba(26, 188, 156, 0.6) 80%, rgba(26, 188, 156, 0.6) 85%, #1abc9c 85%, #1abc9c 90%, rgba(26, 188, 156, 0.6) 90%, rgba(26, 188, 156, 0.6) 95%, #1abc9c 95%, #1abc9c 100%);
  background-image: linear-gradient(to right, rgba(26, 188, 156, 0.6), rgba(26, 188, 156, 0.6) 5%, #1abc9c 5%, #1abc9c 10%, rgba(26, 188, 156, 0.6) 10%, rgba(26, 188, 156, 0.6) 15%, #1abc9c 15%, #1abc9c 20%, rgba(26, 188, 156, 0.6) 20%, rgba(26, 188, 156, 0.6) 25%, #1abc9c 25%, #1abc9c 30%, rgba(26, 188, 156, 0.6) 30%, rgba(26, 188, 156, 0.6) 35%, #1abc9c 35%, #1abc9c 40%, rgba(26, 188, 156, 0.6) 40%, rgba(26, 188, 156, 0.6) 45%, #1abc9c 45%, #1abc9c 50%, rgba(26, 188, 156, 0.6) 50%, rgba(26, 188, 156, 0.6) 55%, #1abc9c 55%, #1abc9c 60%, rgba(26, 188, 156, 0.6) 60%, rgba(26, 188, 156, 0.6) 65%, #1abc9c 65%, #1abc9c 70%, rgba(26, 188, 156, 0.6) 70%, rgba(26, 188, 156, 0.6) 75%, #1abc9c 75%, #1abc9c 80%, rgba(26, 188, 156, 0.6) 80%, rgba(26, 188, 156, 0.6) 85%, #1abc9c 85%, #1abc9c 90%, rgba(26, 188, 156, 0.6) 90%, rgba(26, 188, 156, 0.6) 95%, #1abc9c 95%, #1abc9c 100%);
  background-position: 0 0;
  background-size: 100%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
}
.second:hover {
  background-position: 100px;
}

.third {
  border-color: #3498db;
  color: #fff;
  box-shadow: 0 0 40px 40px #3498db inset, 0 0 0 0 #3498db;
  -webkit-transition: all 150ms ease-in-out;
  transition: all 150ms ease-in-out;
    margin-left: auto;
  margin-right: auto;
}
.third:hover {
  box-shadow: 0 0 10px 0 #3498db inset, 0 0 10px 4px #3498db;
}

.fourth {
  border-color: #f1c40f;
  color: #fff;
  background-image: -webkit-linear-gradient(45deg, #f1c40f 50%, transparent 50%);
  background-image: linear-gradient(45deg, #f1c40f 50%, transparent 50%);
  background-position: 100%;
  background-size: 400%;
  -webkit-transition: background 300ms ease-in-out;
  transition: background 300ms ease-in-out;
}
.fourth:hover {
  background-position: 0;
}

.fifth {
  border-color: #8e44ad;
  border-radius: 0;
  color: #8e44ad;
  position: relative;
  overflow: hidden;
  z-index: 1;
  -webkit-transition: color 150ms ease-in-out;
  transition: color 150ms ease-in-out;
}
.fifth:after {
  content: '';
  position: absolute;
  display: block;
  top: 0;
  left: 50%;
  -webkit-transform: translateX(-50%);
          transform: translateX(-50%);
  width: 0;
  height: 100%;
  background: #8e44ad;
  z-index: -1;
  -webkit-transition: width 150ms ease-in-out;
  transition: width 150ms ease-in-out;
}
.fifth:hover {
  color: #fff;
}
.fifth:hover:after {
  width: 110%;
}

.sixth {
  border-radius: 3em;
  border-color: #2ecc71;
  color: #2ecc71;
  background-image: -webkit-linear-gradient(top, transparent 50%, #2ecc71 50%);
  background-image: linear-gradient(to bottom, transparent 50%, #2ecc71 50%);
  background-position: 0% 0%;
  background-size: 210%;
  -webkit-transition: background 150ms ease-in-out, color 150ms ease-in-out;
  transition: background 150ms ease-in-out, color 150ms ease-in-out;
}
.sixth:hover {
  color: #fff;
  background-position: 0 100%;
}

        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            color: #FFFFFF;
        }
    .auto-style6 {
        text-align: center;
        color: #FFFFFF;
        height: 26px;
    }
        .auto-style9 {
            text-align: right;
            height: 54px;
        }
        
        .auto-style12 {
            color: #000000;
        }
        .auto-style13 {
            text-align: center;
            color: #FFFFFF;
            height: 30px;
        }

        .auto-style14 {
            text-align: center;
            height: 29px;
        }

        </style>
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" BackColor="White" CssClass="auto-style12" Font-Size="X-Large" Text="Registro de empleados"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" BackColor="White" Font-Size="Large" Text="Codigo" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCodigo" runat="server" Width="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" BackColor="White" Font-Size="Large" Text="Nombre" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtNombre" runat="server" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label4" runat="server" BackColor="White" Font-Size="Large" Text="Apellidos" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:TextBox ID="txtApell" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" BackColor="White" Font-Size="Large" Text="N° de DUI" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtDui" runat="server" Width="130px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" BackColor="White" Font-Size="Large" Text="Telefono" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtTelef" runat="server" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label7" runat="server" BackColor="White" Font-Size="Large" Text="Correo Electronico" CssClass="auto-style12"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:TextBox ID="txtCorreo" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>

        </td>
        <td>
            &nbsp;</td>
        </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
            <asp:Button class="btn third" ID="btAgregar" runat="server" Text="Agregar" OnClick="btAgregar_Click"/>
                
                </td>
                <td>
            <asp:Button class="btn third" ID="btActualizar" runat="server" Text="Actualizar cambios" OnClick="btActualizar_Click"/>
                </td>
                <td>
            <asp:Button class="btn third" ID="btEliminar" runat="server" Text="Eliminar" OnClick="btEliminar_Click"/>
                </td>
                <td>
            <asp:Button class="btn sixth" ID="btLimpiar" runat="server" Height="61px" Text="Limpiar " Width="172px" OnClick="btLimpiar_Click" />
                </td>
            </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">
                <div style="text-align: center">
                    <asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
                </div>
                <div style="text-align: center">
                    <asp:Button ID="btBuscar" runat="server" class="btn fourth" Height="61px" OnClick="btBuscar_Click" Text="Buscar" Width="177px" />
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblEmpl" runat="server" CssClass="auto-style12" Text="Label" BackColor="White" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvEmpleados" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDempleado" DataSourceID="SqlDataSource_emp" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="IDempleado" HeaderText="IDempleado" ReadOnly="True" SortExpression="IDempleado" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        <asp:BoundField DataField="dui" HeaderText="dui" SortExpression="dui" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br />
                <asp:SqlDataSource ID="SqlDataSource_emp" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [empleados]"></asp:SqlDataSource>
            </td>
            <td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
    </table>
</asp:Content>
