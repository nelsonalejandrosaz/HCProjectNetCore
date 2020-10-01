using System.ComponentModel.DataAnnotations;

namespace HCProject.Domain
{
    public class CurriculoHabilidadTecnica
    {
        public int CurriculoId { get; set; }
        public Curriculo Curriculo { get; set; }

        public int HabilidadTecnicaId { get; set; }
        public HabilidadTecnica HabilidadTecnica { get; set; }
        
        [Required]
        public string Nivel { get; set; }
    }
}