<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Agregar_usuarios.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Agregar_usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style7 {
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            height: 26px;
        }
        .auto-style21 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style22 {
            color: #FF0000;
        }
        .auto-style23 {
            color: #66FF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label8" runat="server" BackColor="Black" CssClass="auto-style23" Font-Size="XX-Large" Text="Registro de usuarios"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label4" runat="server" BackColor="Black" Font-Size="Large" Text="Escriba un nombre de usuario"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label5" runat="server" BackColor="Black" Font-Size="Large" Text="Seleccione el tipo de usuario"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:DropDownList ID="ddlTipo" runat="server" DataSourceID="Sql_cargos" DataTextField="tipo_empleado" DataValueField="tipo_empleado">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:SqlDataSource ID="Sql_cargos" runat="server" ConnectionString="<%$ ConnectionStrings:sistemaConnectionString %>" SelectCommand="SELECT [tipo_empleado] FROM [cargos]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label6" runat="server" BackColor="Black" Font-Size="Large" Text="Escribe una clave"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label7" runat="server" BackColor="Black" Font-Size="Large" Text="Confirma tu clave"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtClaveCon" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Button ID="btRegistrar" runat="server" Height="50px" OnClick="btRegistrar_Click" Text="Registrar usuario" Width="159px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="lblUsuarios" runat="server" CssClass="auto-style22" Text="Label" BackColor="Black" Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
