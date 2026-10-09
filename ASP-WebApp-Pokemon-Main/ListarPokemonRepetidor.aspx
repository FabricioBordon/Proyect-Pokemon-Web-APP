<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarPokemonRepetidor.aspx.cs" Inherits="ASP_WebApp_Pokemon_Main.ListarPokemonRepetidor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--     <div class="row row-cols-1 row-cols-md-3 g-4">
     <%

         foreach (dominio.Pokemon pok in ListaPokemonr)
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
     <%     } %>--%>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <asp:Repeater ID="repetidor" runat="server">
        
        <ItemTemplate>

            
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>

                            <a class="button" href="Detalles.aspx?ID=<%#Eval("id")  %>">Detalles</a>
                            <asp:Button Text="Ejemplo" cssclass="btn btn-primary" ID="btnEjemplo" runat="server" CommandArgument='<%#Eval("Id") %>' CommandName="PokemonId"  OnClick="btnEjemplo_Click"/>

                        </div>
                    </div>
                </div>
       
        </ItemTemplate>

    </asp:Repeater>


    </div>
  

</asp:Content>
