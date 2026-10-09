<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="ASP_WebApp_Pokemon_Main.ListaPokemon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="dgvPokemon" runat="server" CssClass="table" 
        AutogenerateColumns="false" DataKeyNames="iD" OnSelectedIndexChanged="dgvPokemon_SelectedIndexChanged" 
        OnPageIndexChanging="dgvPokemon_PageIndexChanging" AllowPaging="true" 
        PageSize="10">

        <Columns>

            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Numero" DataField="Numero" />
            <asp:CommandField HeaderText="Accion" ShowSelectButton="true" SelectText="Opcion" />
          

        </Columns>
        
    </asp:GridView>
    <a href="Default.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>

