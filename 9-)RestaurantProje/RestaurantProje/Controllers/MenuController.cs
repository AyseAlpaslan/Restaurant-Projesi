using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantProje.Models;
using Dapper;


namespace RestaurantProje.Controllers
{
    public class MenuController : Controller
    {
        // GET: Menu
        public ActionResult Index()
        {
            return View(DP.ReturnList<MenuModel>("MenuListele"));
        }

        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@MenuNo", id);
                return View(DP.ReturnList<MenuModel>("MenuSirala", param).FirstOrDefault<MenuModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(MenuModel personel)
        {

            DynamicParameters param = new DynamicParameters();
            param.Add("@MenuNo", personel.MenuNo);
            param.Add("@YemekAdi", personel.YemekAdi);
            param.Add("@YemekFiyati", personel.YemekFiyati);
            param.Add("@IcecekAdi", personel.IcecekAdi);
            param.Add("@IcecekFiyati", personel.IcecekFiyati);
            param.Add("@TatliAdi", personel.TatliAdi);
            param.Add("@TatliFiyati", personel.TatliFiyati);
            DP.EXReturn("MenuEkleYenile", param);
            return RedirectToAction("Index");

        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("MenuNo", id);
            DP.EXReturn("MenuSil", param);
            return RedirectToAction("Index");


        }



    }
}