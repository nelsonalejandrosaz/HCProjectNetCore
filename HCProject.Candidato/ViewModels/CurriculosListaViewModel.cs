using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HCProject.Candidato.ViewModels
{
    public class CurriculosListaViewModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public int PorcentajeCompletado { get; set; }
        public string TipoVisibilidad { get; set; }
    }
}
