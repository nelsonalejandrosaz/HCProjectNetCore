using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Data;
using HCProject.Domain;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HCProject.Candidato.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MunicipiosController : ControllerBase
    {
        private readonly HCProjectDbContext _context;

        public MunicipiosController(HCProjectDbContext context)
        {
            _context = context;
        }
        // GET: api/<MunicipiosController>
        [HttpGet]
        public IActionResult Get(int? departamentoId)
        {
            var municipios = departamentoId.HasValue 
                ? _context.Municipios.Where(x => x.DepartamentoId == departamentoId.Value).ToList() 
                : _context.Municipios.ToList();
            return Ok(municipios);
        }

        // GET api/<MunicipiosController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

    }
}
