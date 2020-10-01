using System.ComponentModel.DataAnnotations;

namespace HCProject.Domain
{
    public class HabilidadTecnica
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nombre { get; set; }
    }
}
