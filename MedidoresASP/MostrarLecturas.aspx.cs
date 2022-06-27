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
    public partial class MostrarLecturas : System.Web.UI.Page
    {
        private ILecturaDAL lecturasDAL = new LecturaDALText();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medidor> lecturas = lecturasDAL.ObtenerLecturas();
                this.codigoMedidorDropdown.DataSource = lecturas;
                this.codigoMedidorDropdown.DataTextField = "Codigo";
                this.codigoMedidorDropdown.DataValueField = "Codigo";
                this.codigoMedidorDropdown.DataBind();
                cargarGrilla();
            }
        }

        private void cargarGrilla()
        {
            List<Medidor> lecturas = lecturasDAL.ObtenerLecturas();
            this.grillaLecturas.DataSource = lecturas.Where(ar => ar.Codigo == Convert.ToInt32(this.codigoMedidorDropdown.SelectedItem.Text)).ToList();
            this.grillaLecturas.DataBind();
        }
        protected void grillaLecturas_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void codigoMedidorDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            cargarGrilla();
        }

        protected void recargarLecturas_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarLecturas.aspx");
        }
    }
}