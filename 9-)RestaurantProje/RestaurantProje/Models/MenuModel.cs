using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RestaurantProje.Models
{
    public class MenuModel
    {
        public int MenuNo { get; set; }
        public string YemekAdi { get; set; }
        public decimal YemekFiyati { get; set; }

        public string IcecekAdi { get; set; }
        public decimal IcecekFiyati { get; set; }
        public string TatliAdi { get; set; }
        public decimal TatliFiyati { get; set; }

    }
}