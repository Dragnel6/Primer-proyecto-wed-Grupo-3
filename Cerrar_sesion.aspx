<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Cerrar_sesion.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Cerrar_sesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblSesion" runat="server" BackColor="White" CssClass="auto-style6" Font-Size="X-Large" Text="Sesion"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblNombre" runat="server" BackColor="White" CssClass="auto-style6" Font-Size="X-Large" Text="Nombre"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btCerrarSe" runat="server" Height="46px" OnClick="btCerrarSe_Click" Text="Cerrar Sesion" Width="174px" />
                </td>
            </tr>
        </table>
</asp:Content>
