<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Tabla_empleado.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Tabla_empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            text-align: center;
            width: 971px;
        }
        .auto-style4 {
            color: #000000;
        }
        .auto-style6 {
            width: 971px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2">
            <asp:Label ID="Label1" runat="server" BackColor="White" Font-Size="XX-Large" Text="Tabla empleados" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>
            <asp:DropDownList ID="DdlLista" runat="server" AutoPostBack="True" DataSourceID="Sql_lista" DataTextField="nombre_area" DataValueField="nombre_area">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td>
            <asp:SqlDataSource ID="Sql_lista" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [areas_empleado]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:GridView ID="gvTabla" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Sql_tabla" Height="202px" Width="322px" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="idEmpleado" HeaderText="idEmpleado" SortExpression="idEmpleado" />
                    <asp:BoundField DataField="nombre_empleado" HeaderText="nombre_empleado" SortExpression="nombre_empleado" />
                    <asp:BoundField DataField="tipo_empleado" HeaderText="tipo_empleado" SortExpression="tipo_empleado" />
                    <asp:BoundField DataField="puesto" HeaderText="puesto" SortExpression="puesto" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
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
