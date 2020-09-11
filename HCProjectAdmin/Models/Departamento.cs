using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HCProjectAdmin.Models
{
    public class Departamento
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nombre { get; set; }

        public Pais Pais { get; set; }
        [Required]
        public int PaisId { get; set; }
    }
}
