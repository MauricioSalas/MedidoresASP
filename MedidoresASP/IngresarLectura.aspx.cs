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
    public partial class IngresarLectura : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidorDALText();
        private ILecturaDAL lecturasDAL = new LecturaDALText();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Medidor> medidor = medidoresDAL.ObtenerMedidores();
            this.codigoMedidorDropdown.DataSource = medidor;
            this.codigoMedidorDropdown.DataTextField = "Codigo";
            this.codigoMedidorDropdown.DataValueField = "Tipo";
            this.codigoMedidorDropdown.DataBind();
        }
        protected void agregarButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int codigoMedidor = Convert.ToInt32(codigoMedidorDropdown.SelectedItem.Text.Trim());
                List<Medidor> medidores = lecturasDAL.ObtenerLecturas();
                if (fechaLectura.SelectedDate != null)
                {
                    Medidor medidor = new Medidor()
                    {
                        Codigo = codigoMedidor,
                        Tipo = codigoMedidorDropdown.SelectedItem.Value.Trim(),
                        FechaUnix = fechaLectura.SelectedDate.ToString("yyyy-MM-dd").Trim() + " " + horaLectura.Text.Trim() + ":" + minutosLectura.Text.Trim(),
                        KWh = Convert.ToUInt32(valorConsumo.Text.Trim())
                    };

                    lecturasDAL.AgregarLectura(medidor);
                    this.mensajesLabel.CssClass = "text-success";
                    this.mensajesLabel.Text = "Lectura ingresada. Código Medidor: " + codigoMedidor;
                    Response.Redirect("MostrarLecturas.aspx");
                }
                else
                {
                    this.validarCalendario.CssClass = "text-danger";
                    this.validarCalendario.Text = "Campo requerido. Seleccionar una fecha válida.";
                }
            }
        }

        protected void fechaLectura_SelectionChanged(object sender, EventArgs e)
        {
            //this.codigoMedidorDropdown.SelectedItem.Text = this.codigoMedidorDropdown.SelectedItem.Text.Trim();
        }
    }
}