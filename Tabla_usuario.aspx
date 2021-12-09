<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Tabla_usuario.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Tabla_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style4 {
            color: #000000;
        }
    .auto-style5 {
        text-align: center;
    }
        .auto-style6 {
            text-align: center;
            width: 782px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style1">
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="Label1" runat="server" BackColor="White" Font-Size="XX-Large" Text="Tabla usuarios" CssClass="auto-style4"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5">
            <asp:DropDownList ID="DdlLista" runat="server" AutoPostBack="True" DataSourceID="Sql_lista" DataTextField="tipo_usuario" DataValueField="tipo_usuario" Height="23px" Width="106px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style5">
            <asp:SqlDataSource ID="Sql_lista" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [Areas_usuario]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:GridView ID="gvTabla" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Sql_tabla" Height="202px" Width="322px" DataKeyNames="ID" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                    <asp:BoundField DataField="Contrasena" HeaderText="Contrasena" SortExpression="Contrasena" />
                    <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
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
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:SqlDataSource ID="Sql_tabla" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT * FROM [ingreso] WHERE ([tipo] = @tipo)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DdlLista" Name="tipo" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
