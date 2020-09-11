using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HCProjectAdmin.Models
{
    public class Municipio
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nombre { get; set; }

        public Departamento Departamento { get; set; }
        [Required]
        public int DepartamentoId { get; set; }
    }
}
