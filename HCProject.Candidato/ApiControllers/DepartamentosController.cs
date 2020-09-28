using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Data;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HCProject.Candidato.ApiControllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartamentosController : ControllerBase
    {
        private readonly HCProjectDbContext _context;

        public DepartamentosController(HCProjectDbContext context)
        {
            _context = context;
        }
        // GET: api/<DepartamentosController>
        [HttpGet]
        public IActionResult Get(int? paisId)
        {
            var departamentos = paisId.HasValue
                ? _context.Departamentos.Where(x => x.PaisId == paisId.Value).ToList()
                : _context.Departamentos.ToList();
            return Ok(departamentos);
        }

        // GET api/<DepartamentosController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

    }
}
