using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace HCProject.Domain
{
    public class Genero
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(1)]
        public string Codigo { get; set; }

        [Required]
        public string Nombre { get; set; }
    }
}

