using MedidoresModel;
using MedidoresModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedidoresASP
{
    public partial class Default : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidorDALText();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void agregarButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int codigoMedidor = Convert.ToInt32(this.codigoMedidor.Text.Trim());
                List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
                if (!medidores.Any(m => m.Codigo == codigoMedidor))
                {
                    Medidor medidor = new Medidor()
                    {
                        Codigo = codigoMedidor,
                        Tipo = this.tipoMedidorDropdown.SelectedItem.Text
                    };
                    medidoresDAL.AgregarMedidores(medidor);
                    this.mensajesLabel.CssClass = "text-success";
                    this.mensajesLabel.Text = "Medidor ingresado. Código: " + codigoMedidor;
                    Response.Redirect("VerMedidores.aspx");
                }
                else
                {
                    this.mensajesLabel.CssClass = "text-danger";
                    this.mensajesLabel.Text = "Código de Medidor existente.";
                }
            }
        }
    }
}