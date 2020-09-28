using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace HCProject.Domain
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
