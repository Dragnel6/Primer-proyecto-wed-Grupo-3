<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Tabla_empleado.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Tabla_empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Tabla de empleados</td>
        <td>
            <asp:DropDownList ID="DdlLista" runat="server" AutoPostBack="True" DataSourceID="Sql_lista" DataTextField="nombre_area" DataValueField="nombre_area">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:SqlDataSource ID="Sql_lista" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [areas]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="gvTabla" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Sql_tabla" Height="202px" Width="322px">
                <Columns>
                    <asp:BoundField DataField="idEmpleado" HeaderText="idEmpleado" SortExpression="idEmpleado" />
                    <asp:BoundField DataField="nombre_empleado" HeaderText="nombre_empleado" SortExpression="nombre_empleado" />
                    <asp:BoundField DataField="tipo_empleado" HeaderText="tipo_empleado" SortExpression="tipo_empleado" />
                    <asp:BoundField DataField="puesto" HeaderText="puesto" SortExpression="puesto" />
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="Sql_tabla" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [puestos] WHERE ([tipo_empleado] = @tipo_empleado)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DdlLista" Name="tipo_empleado" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
