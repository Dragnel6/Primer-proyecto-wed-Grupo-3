<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Tabla_usuario.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Tabla_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style4 {
            color: #FFFF00;
        }
    .auto-style5 {
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
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" BackColor="Black" Font-Size="XX-Large" Text="Tabla usuarios" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:GridView ID="gvTabla" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="Sql_tabla" Height="202px" Width="322px" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contrasena" HeaderText="Contrasena" SortExpression="Contrasena" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
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
        <td class="auto-style5">
            <asp:SqlDataSource ID="Sql_tabla" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [ingreso]">
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
