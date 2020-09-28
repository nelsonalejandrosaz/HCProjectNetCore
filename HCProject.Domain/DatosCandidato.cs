using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace HCProject.Domain
{
    public class DatosCandidato
    {
        public int Id { get; set; }

        [Required]
        public string UserId { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nombres { get; set; }

        [Required]
        [MaxLength(50)]
        public string Apellidos { get; set; }

        [Required]
        [MaxLength(100)]
        public string Email { get; set; }

        [Required]
        [MaxLength(10)]
        public string Dui { get; set; }

        [Required]
        [MaxLength(50)]
        public string Nacionalidad { get; set; }

        [Required]
        public int GeneroId { get; set; }
        public Genero Genero { get; set; }

        [Required]
        [DataType(DataType.Date)]
        public DateTime FechaNacimiento { get; set; }

        [Required]
        [MaxLength(120)]
        public string DireccionResidencia { get; set; }

        [Required]
        [MaxLength(50)]
        public string Telefono1 { get; set; }

        [MaxLength(50)]
        public string Telefono2 { get; set; }

        public bool PoseeCarro { get; set; }

        public bool PoseeLicencia { get; set; }

        [Required]
        public int PaisId { get; set; }

        public int DepartamentoId { get; set; }

        public Municipio Municipio { get; set; }
        public int MunicipioId { get; set; }

    }
}
