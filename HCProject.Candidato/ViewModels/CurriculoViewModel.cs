using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HCProject.Candidato.ViewModels
{
    public class CurriculoViewModel
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public bool Visibilidad { get; set; }
        public int AniosExperienciaId { get; set; }
    }
}
