using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using RestaurantProje.Models;
using Dapper;

namespace RestaurantProje.Controllers
{
    public class SiparisController : Controller
    {
        // GET: Siparis
        public ActionResult Index()
        {
            return View(DP.ReturnList<SiparisModel>("SiparisListele"));
        }

        public ActionResult EY(int id = 0)
        {
            if (id == 0)
                return View();
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@SiparisNo", id);
                return View(DP.ReturnList<SiparisModel>("SiparisSirala", param).FirstOrDefault<SiparisModel>());
            }
        }

        [HttpPost]
        public ActionResult EY(SiparisModel personel)
        {

            DynamicParameters param = new DynamicParameters();
            param.Add("@SiparisNo", personel.SiparisNo);                    
            param.Add("@YemekAdi", personel.YemekAdi);            
            param.Add("@IcecekAdi", personel.IcecekAdi);           
            param.Add("@TatliAdi", personel.TatliAdi);
            DP.EXReturn("SiparisEkleYenile", param);
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id = 0)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("SiparisNo", id);
            DP.EXReturn("SiparisSil", param);
            return RedirectToAction("Index");


        }
    }
}