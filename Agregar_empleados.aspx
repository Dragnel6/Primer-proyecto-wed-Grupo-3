<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Agregar_empleados.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Agregar_empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="lblEmpl" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Registro de empleados</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Codigo</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Nombres</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Apellidos</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtApell" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">N° de DUI</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtDui" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Telefono</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtTelef" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">Correo electronico</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:Button ID="btAgregar" runat="server" Height="39px" OnClick="btAgregar_Click" Text="Agregar empleado" Width="155px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource_emple" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [IDempleado], [nombre], [apellidos], [telefono], [dui], [correo] FROM [empleados]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:GridView ID="GbEmpleados" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDempleado" DataSourceID="SqlDataSource_emple" OnSelectedIndexChanged="GbEmpleados_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="IDempleado" HeaderText="IDempleado" ReadOnly="True" SortExpression="IDempleado" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        <asp:BoundField DataField="dui" HeaderText="dui" SortExpression="dui" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btGuardarEdit" runat="server" Height="41px" OnClick="btGuardar_Click" Text="Confirmar Edicion" Width="152px" />
            </td>
            <td>
                <asp:Button ID="btEliminar" runat="server" Height="41px" OnClick="btEliminar_Click" Text="Eliminar empleado" Width="152px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
