using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Candidato.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace HCProject.Candidato.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public AccountController(
            UserManager<IdentityUser> userManager,
            SignInManager<IdentityUser> signInManager,
            RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager;
        }
        public IActionResult Login(string ReturnUrl = null)
        {
            ViewData["ReturnUrl"] = ReturnUrl;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginViewModel loginViewModel, string ReturnUrl = null)
        {
            ViewData["ReturnUrl"] = ReturnUrl;
            if (!Url.IsLocalUrl(ReturnUrl))
            {
                ReturnUrl = "/Dashboard";
            }
            if (ModelState.IsValid)
            {
                var result = await _signInManager.PasswordSignInAsync(
                    loginViewModel.Email,
                    loginViewModel.Password,
                    loginViewModel.RememberMe,
                    lockoutOnFailure: false);

                if (result.Succeeded)
                {
                    //var email = new Message(new string[] { "nelsonalejandrosaz@gmail.com" }, "Test Email from SAU from server", "Hello my friend from SIGET server");
                    //_emailSender.SendEmail(email);
                    
                    return LocalRedirect(ReturnUrl);
                }

                ModelState.AddModelError(string.Empty, "Inicio de sesión no valido");
                return View(loginViewModel);
            }

            return View(loginViewModel);
        }

        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();
            return RedirectToAction(nameof(Login));
        }

        public IActionResult Registrarse()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Registrarse(RegistroViewModel registroViewModel)
        {
            if (!ModelState.IsValid)
            {
                return View(registroViewModel);
            }

            var user = new IdentityUser
            {
                UserName = registroViewModel.Email,
                Email = registroViewModel.Email,
            };
            var result = await _userManager.CreateAsync(user, registroViewModel.Password);

            if (result.Succeeded)
            {
                var roleExists = _roleManager.RoleExistsAsync("Candidato").Result;
                if (!roleExists)
                {
                    await _roleManager.CreateAsync(new IdentityRole("Candidato"));
                }
                await _userManager.AddToRoleAsync(user,"Candidato");
                await _signInManager.SignInAsync(user, true);
                return RedirectToAction("Create","DatosCandidatos", new {alerta = 1});
            }

            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("error", error.Description);
            }

            return View(registroViewModel);
        }
    }
}
