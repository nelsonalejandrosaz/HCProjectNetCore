using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HCProject.Admin.ViewModels;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace HCProject.Admin.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;

        public AccountController(
            UserManager<IdentityUser> userManager,
            SignInManager<IdentityUser> signInManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
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
                ReturnUrl = "/";
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
                //return View(loginViewModel);
            }

            return View(loginViewModel);
        }
    }
}
