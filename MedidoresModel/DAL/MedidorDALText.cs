using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class MedidorDALText : IMedidoresDAL
    {
        private static List<Medidor> listaMedidores = new List<Medidor>()
        {
            new Medidor() {Codigo = 3111, Tipo = "Inteligente"},
            new Medidor() {Codigo = 3112, Tipo = "Inteligente"},
            new Medidor() {Codigo = 3113, Tipo = "Estado Sólido"},
            new Medidor() {Codigo = 3114, Tipo = "Vatios-Hora"},
            new Medidor() {Codigo = 3115, Tipo = "Inteligente"},
            new Medidor() {Codigo = 3116, Tipo = "Inteligente"},
            new Medidor() {Codigo = 3117, Tipo = "Inteligente"}
        };

        public void AgregarMedidores(Medidor medidor)
        {
            listaMedidores.Add(new Medidor() { Codigo = medidor.Codigo, Tipo = medidor.Tipo });
        }

        public List<Medidor> ObtenerMedidores()
        {
            return listaMedidores;
        }
    }
}
