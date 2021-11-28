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
            <td class="auto-style2">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">Registro de usuarios</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21">Escriba un nombre de usuario</td>
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
                        <td class="auto-style21">Selecciona el tipo de usuario</td>
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
                        <td class="auto-style21">Escriba una clave</td>
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
                        <td class="auto-style21">Confirme su clave</td>
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
                            <asp:Button ID="btRegistrar" runat="server" Height="49px" OnClick="btRegistrar_Click" Text="Registrar usuario" Width="169px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="lblUsuarios" runat="server" CssClass="auto-style22" Text="Label"></asp:Label>
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
