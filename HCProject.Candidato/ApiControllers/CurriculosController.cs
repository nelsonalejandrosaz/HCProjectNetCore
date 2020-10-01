using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Data;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HCProject.Candidato.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CurriculosController : ControllerBase
    {
        private readonly HCProjectDbContext _context;

        public CurriculosController(HCProjectDbContext context)
        {
            _context = context;
        }

        [HttpPost("CambiarNombreCurriculo")]
        public IActionResult CambiarNombreCurriculo([FromBody] NombreVisibilidad nombreVisibilidad)
        {
            var curriculo = _context.Curriculos.FirstOrDefault(x => x.Id == nombreVisibilidad.Id);
            curriculo.Nombre = nombreVisibilidad.Nombre;
            _context.SaveChanges();
            return NoContent();
        }

        public class NombreVisibilidad
        {
            [Required]
            public int Id { get; set; }
            [Required]
            [MaxLength(50)]
            public string Nombre { get; set; }
        }



        // GET: api/<CurriculosController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<CurriculosController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<CurriculosController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<CurriculosController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<CurriculosController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
