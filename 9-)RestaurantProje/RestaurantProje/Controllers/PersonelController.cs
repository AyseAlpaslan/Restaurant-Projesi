using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantProje.Models;
using Dapper;

namespace RestaurantProje.Controllers
{
    public class PersonelController : Controller
    {
        // GET: Personel
        public ActionResult Index()
        {
            return View(DP.ReturnList<PersonelModel>("PersonelListele"));
        }

        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@PersonelNo", id);
                return View(DP.ReturnList<PersonelModel>("PersonelSirala", param).FirstOrDefault<PersonelModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(PersonelModel personel)
        {

            DynamicParameters param = new DynamicParameters();
            param.Add("@PersonelNo", personel.PersonelNo);
            param.Add("@Unvan", personel.Unvan);
            param.Add("@Yas", personel.Yas);
            param.Add("@AdSoyad", personel.AdSoyad);
            param.Add("@Adres", personel.Adres);
            param.Add("@Telefon", personel.Telefon);
            param.Add("@Maas", personel.Maas);
            DP.EXReturn("PersonelEkleYenile", param);
            return RedirectToAction("Index");

        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("PersonelNo", id);
            DP.EXReturn("PSil", param);
            return RedirectToAction("Index");


        }

    }
}