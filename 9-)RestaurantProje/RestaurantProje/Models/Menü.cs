//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RestaurantProje.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Menü
    {
        public int MenuNo { get; set; }
        public string YemekAdi { get; set; }
        public Nullable<decimal> YemekFiyati { get; set; }
        public string IcecekAdi { get; set; }
        public Nullable<decimal> IcecekFiyati { get; set; }
        public string TatliAdi { get; set; }
        public Nullable<decimal> TatliFiyati { get; set; }
    }
}
