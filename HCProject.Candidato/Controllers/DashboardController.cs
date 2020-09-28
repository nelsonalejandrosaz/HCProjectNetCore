using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using HCProject.Data;
using Microsoft.AspNetCore.Mvc;

namespace HCProject.Candidato.Controllers
{
    public class DashboardController : Controller
    {
        private readonly HCProjectDbContext _context;

        public DashboardController(HCProjectDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            var datosCandidato =
                _context.DatosCandidatos.FirstOrDefault(x =>
                    x.UserId == User.FindFirstValue(ClaimTypes.NameIdentifier));
            if (datosCandidato == null)
            {
                return RedirectToAction("Create","DatosCandidatos", new {alerta = 1});
            }
            return View();
        }
    }
}
