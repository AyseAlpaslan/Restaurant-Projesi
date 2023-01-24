using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using RestaurantProje.Models;
using Microsoft.SqlServer.Server;

namespace RestaurantProje.Controllers
{
    [AllowAnonymous]
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(User user)
        {
            using (RestaurantEntities1 db = new RestaurantEntities1())
            {
                var result = db.AdminGiris.Where(x => x.UserId == user.Username && x.Password1 == user.Password1);
                if (result.Count() != 0)
                {
                    FormsAuthentication.SetAuthCookie(user.Username, false);
                    //Session["userId]=user.Username;
                    return RedirectToAction("Index", "Admin");
                }
                else
                {
                    TempData["msg"] = "hatalı";
                }
            }
            return View();
        }

        public ActionResult Logout()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return View("Login");
        }

    }
}