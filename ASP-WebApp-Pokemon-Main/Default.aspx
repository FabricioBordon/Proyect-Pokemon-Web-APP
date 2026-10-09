<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP_WebApp_Pokemon_Main.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%

            foreach (dominio.Pokemon pok in ListaPokemon)
            {
                 %>
                        <div class="col">
            <div class="card">
                <img src="<%:pok.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%:pok.Nombre %></h5>
                    <p class="card-text"><%:pok.Descripcion %></p>
                    <a class ="button" href="Detalles.aspx?ID=<%:pok.Id %>">Detalles</a>

                </div>
            </div>
          </div>
        <%     } %>

       


       


    </div>

</asp:Content>
