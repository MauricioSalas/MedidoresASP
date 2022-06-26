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
            new Medidor() {Codigo = 3111},
            new Medidor() {Codigo = 3112},
            new Medidor() {Codigo = 3113},
            new Medidor() {Codigo = 3114},
            new Medidor() {Codigo = 3115},
            new Medidor() {Codigo = 3116},
            new Medidor() {Codigo = 3117}
        };

        public void AgregarMedidores(Medidor medidor)
        {
            listaMedidores.Add(new Medidor() { Codigo = medidor.Codigo });
        }

        public List<Medidor> ObtenerMedidores()
        {
            return listaMedidores;
        }
    }
}
