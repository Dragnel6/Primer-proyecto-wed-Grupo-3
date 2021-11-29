<%@ Page Title="" Language="C#" MasterPageFile="~/Menu principal.Master" AutoEventWireup="true" CodeBehind="Acerca-de.aspx.cs" Inherits="Primer_proyecto_wed_Grupo_3.Acerca_de" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        color: #FFFFFF;
    }
    .auto-style4 {
        color: #FFFFFF;
        font-size: x-large;
    }
        .auto-style5 {
            color: #FFFFFF;
            font-size: x-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%: Title %></h2>
    <h3 class="auto-style3">&nbsp;</h3>
<h3 class="auto-style4">&nbsp;Pagina de acerca de.</h3>
    <h3 class="auto-style5">&nbsp;Sitio web desarrollado con visual studio C # con base de datos MySQL server para la realizacion de consultas con diferentes formularios como prueba de aprendizaje.</h3>
    <p class="auto-style4">&nbsp;Pagina web del grupo 3</p>
<p class="auto-style4">&nbsp;Programacion I A2.</p>
    <p>&nbsp;</p>
</asp:Content>
