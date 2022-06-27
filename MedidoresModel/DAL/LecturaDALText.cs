using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidoresModel.DAL
{
    public class LecturaDALText : ILecturaDAL
    {
        private static List<Medidor> listaLecturas = new List<Medidor>()
        {
            new Medidor() {Codigo = 3111, Tipo = "Inteligente", FechaUnix = "2022-05-24 23:14", KWh = 600},
            new Medidor() {Codigo = 3112, Tipo = "Inteligente", FechaUnix = "2022-05-28 11:15", KWh = 500}
        };
        public void AgregarLectura(Medidor medidor)
        {
            listaLecturas.Add(new Medidor() { Codigo = medidor.Codigo, Tipo = medidor.Tipo, FechaUnix = medidor.FechaUnix, KWh = medidor.KWh });
        }

        public List<Medidor> ObtenerLecturas()
        {
            return listaLecturas;
        }
    }
}
