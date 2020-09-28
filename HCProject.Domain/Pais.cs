using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace HCProject.Domain
{
    public class Pais
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nombre { get; set; }

        [Required]
        [MaxLength(2)]
        public string CodigoIso { get; set; }

        public string CodigoTelefono { get; set; }
    }
}
