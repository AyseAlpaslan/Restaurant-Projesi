using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantProje.Models;
using Dapper;

namespace RestaurantProje.Controllers
{
    public class RezervasyonController : Controller
    {
        // GET: Rezervasyon
        public ActionResult Index()
        {
            return View(DP.ReturnList<RezervasyonModel>("RezervasyonListele"));
        }

        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@RezervasyonNo", id);
                return View(DP.ReturnList<RezervasyonModel>("RezervasyonSirala", param).FirstOrDefault<RezervasyonModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(RezervasyonModel personel)
        {

            DynamicParameters param = new DynamicParameters();
            param.Add("@RezervasyonNo", personel.RezervasyonNo);
            param.Add("@MasaNo", personel.MasaNo);
            param.Add("@KisiAdSoyad", personel.KisiAdSoyad);
            param.Add("@KisiSayisi", personel.KisiSayisi);
            param.Add("@GelecegiSaat", personel.GelecegiSaat);
            param.Add("@Telefon", personel.Telefon);
            DP.EXReturn("RezervasyonEkleYenile", param);
            return RedirectToAction("Index");

        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("RezervasyonNo", id);
            DP.EXReturn("RezervasyonSil", param);
            return RedirectToAction("Index");


        }

    }
}