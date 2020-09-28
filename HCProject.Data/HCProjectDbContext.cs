using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore;
using HCProject.Domain;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Internal;

namespace HCProject.Data
{
    public class HCProjectDbContext : IdentityDbContext<IdentityUser>
    {
        public HCProjectDbContext(DbContextOptions<HCProjectDbContext> options) : base(options)
        {
        }

        public DbSet<Pais> Paises { get; set; }
        public DbSet<Departamento> Departamentos { get; set; }
        public DbSet<Municipio> Municipios { get; set; }
        public DbSet<Genero> Generos { get; set; }
        public DbSet<DatosCandidato> DatosCandidatos { get; set; }

    }
}
