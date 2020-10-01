using System.ComponentModel.DataAnnotations;

namespace HCProject.Domain
{
    public class AniosExperiencia
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Rango { get; set; }
    }
}
