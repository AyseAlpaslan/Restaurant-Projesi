using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestaurantProje.Models
{
    public class RezervasyonModel
    {
        public int RezervasyonNo { get; set; }
        public int MasaNo{ get; set; }
        public string KisiAdSoyad { get; set; }
        public int KisiSayisi { get; set; }
        public string GelecegiSaat { get; set; }
        public string Telefon { get; set; }

    }
}