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
            this.codigoMedidorDropdown.DataValueField = "Codigo";
            this.codigoMedidorDropdown.DataBind();
        }

        protected void agregarButton_Click(object sender, EventArgs e)
        {

        }
    }
}