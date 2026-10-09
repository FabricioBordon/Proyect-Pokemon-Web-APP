using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace ASP_WebApp_Pokemon_Main
{
   
    public partial class ListarPokemonRepetidor : System.Web.UI.Page
    {
        public List<Pokemon> ListaPokemonr { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            PokemonNegocio negocio = new PokemonNegocio();
            ListaPokemonr = negocio.listarConSP();
            repetidor.DataSource = ListaPokemonr;
            repetidor.DataBind();
            }

        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}