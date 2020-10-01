using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Candidato.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HCProject.Data;
using HCProject.Domain;

namespace HCProject.Candidato.Controllers
{
    public class DatosCandidatosController : Controller
    {
        private readonly HCProjectDbContext _context;

        public DatosCandidatosController(HCProjectDbContext context)
        {
            _context = context;
        }

        // GET: DatosCandidatos
        public async Task<IActionResult> Index()
        {
            var hCProjectCandidatoContext = _context.DatosCandidatos.Include(d => d.Genero);
            return View(await hCProjectCandidatoContext.ToListAsync());
        }

        // GET: DatosCandidatos/Details/5
        public async Task<IActionResult> Details(string userId = null)
        {
            if (userId == null)
            {
                return NotFound();
            }

            var datosCandidato = await _context.DatosCandidatos
                .Include(d => d.Genero)
                .FirstOrDefaultAsync(m => m.UserId == userId);
            if (datosCandidato == null)
            {
                return NotFound();
            }

            return View(datosCandidato);
        }

        // GET: DatosCandidatos/Create
        public IActionResult Create(int? alerta)
        {
            if (alerta.HasValue && alerta.Value == 1)
            {
                var alertaViewModel = new AlertaViewModel
                {
                    TipoAlerta = "primary",
                    Titulo = "¡Completa tus datos!",
                    Mensaje = "Por favor completa tus datos para continuar."
                };
                ViewData["Alerta"] = alertaViewModel;
            }
            ViewData["Paises"] = new SelectList(_context.Paises, "Id", "Nombre");
            ViewData["Generos"] = new SelectList(_context.Generos, "Id", "Nombre");
            return View();
        }

        // POST: DatosCandidatos/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(DatosCandidato datosCandidato)
        {
            if (ModelState.IsValid)
            {
                _context.Add(datosCandidato);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index","Dashboard");
            }

            ViewData["Paises"] = new SelectList(_context.Paises, "Id", "Nombre");
            ViewData["Generos"] = new SelectList(_context.Generos, "Id", "Nombre");
            return View(datosCandidato);
        }

        // GET: DatosCandidatos/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var datosCandidato = await _context.DatosCandidatos.FindAsync(id);
            if (datosCandidato == null)
            {
                return NotFound();
            }
            ViewData["Paises"] = new SelectList(_context.Paises, "Id", "Nombre");
            ViewData["Departamentos"] = new SelectList(_context.Departamentos, "Id", "Nombre");
            ViewData["Municipios"] = new SelectList(_context.Municipios, "Id", "Nombre");
            ViewData["Generos"] = new SelectList(_context.Generos, "Id", "Nombre");
            return View(datosCandidato);
        }

        // POST: DatosCandidatos/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Nacionalidad,GeneroId,FechaNacimiento,DireccionResidencia,Telefono1,Telefono2,PoseeCarro,PoseeLicencia,MunicipioId")] DatosCandidato datosCandidato)
        {
            if (id != datosCandidato.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(datosCandidato);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!DatosCandidatoExists(datosCandidato.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["GeneroId"] = new SelectList(_context.Set<Genero>(), "Id", "Id", datosCandidato.GeneroId);
            return View(datosCandidato);
        }

        // GET: DatosCandidatos/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var datosCandidato = await _context.DatosCandidatos
                .Include(d => d.Genero)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (datosCandidato == null)
            {
                return NotFound();
            }

            return View(datosCandidato);
        }

        // POST: DatosCandidatos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var datosCandidato = await _context.DatosCandidatos.FindAsync(id);
            _context.DatosCandidatos.Remove(datosCandidato);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool DatosCandidatoExists(int id)
        {
            return _context.DatosCandidatos.Any(e => e.Id == id);
        }
    }
}
