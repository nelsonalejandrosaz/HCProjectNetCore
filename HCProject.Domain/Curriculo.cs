using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace HCProject.Domain
{
    public class Curriculo
    {
        public int Id { get; set; }

        public string Nombre { get; set; }

        public bool Visibilidad { get; set; }

        public int AniosExperienciaId { get; set; }
        public AniosExperiencia AniosExperiencia { get; set; }

        [Required]
        public int DatosCandidatoId { get; set; }
        public DatosCandidato DatosCandidato { get; set; }

        public IEnumerable<HabilidadTecnica> HabilidadesTecnicas { get; set; }
    }
}
