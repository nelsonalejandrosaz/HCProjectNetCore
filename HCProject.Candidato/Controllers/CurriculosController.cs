using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using HCProject.Candidato.ViewModels;
using HCProject.Data;
using HCProject.Domain;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace HCProject.Candidato.Controllers
{
    [Authorize]
    public class CurriculosController : Controller
    {
        private readonly HCProjectDbContext _context;

        public CurriculosController(HCProjectDbContext context)
        {
            _context = context;
        }

        // GET: Curriculos
        public ActionResult Index()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var datosCanditado = _context.DatosCandidatos.FirstOrDefault(x => x.UserId == userId);
            var curriculos = _context.Curriculos.Where(x => x.DatosCandidatoId == datosCanditado.Id).ToList();
            var curriculosViewModel = new List<CurriculosListaViewModel>();
            if (curriculos.Count > 0)
            {
                foreach (var curriculo in curriculos)
                {
                    curriculosViewModel.Add(new CurriculosListaViewModel
                    {
                        Id = curriculo.Id,
                        Nombre = curriculo.Nombre
                    });
                }
            }
            return View(curriculosViewModel);
        }

        // GET: Curriculos/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // POST: Curriculos/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create()
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            var datosCanditado = _context.DatosCandidatos.FirstOrDefault(x => x.UserId == userId);
            var curriculo = new Curriculo
            {
                DatosCandidatoId = datosCanditado.Id,
                AniosExperienciaId = 1
            };
            _context.Add(curriculo);
            _context.SaveChanges();
            return RedirectToAction("Edit", new { id = curriculo.Id });
        }

        // GET: Curriculos/Edit/5
        public ActionResult Edit(int id)
        {
            var datosCandidato =
                _context.DatosCandidatos.FirstOrDefault(x => x.UserId == User.FindFirstValue(ClaimTypes.NameIdentifier));
            var curriculo = _context.Curriculos.FirstOrDefault(x => x.DatosCandidatoId == datosCandidato.Id);
            var curriculoViewModel = new CurriculoViewModel
            {
                Id = curriculo.Id,
                Nombre = curriculo.Nombre,
                Visibilidad = true
            };
            ViewData["AniosExperiencia"] = new SelectList(_context.AniosExperiencias.ToList(), "Id", "Rango");
            return View(curriculoViewModel);
        }

        // POST: Curriculos/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: Curriculos/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Curriculos/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
