using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RestaurantProje.Models
{
    public class User
    {
        [Required]
        public string Username { get; set; }


        [Required]
        [DataType(DataType.Password)]
        //şifrenin gizli olması
        public string Password1 { get; set; }
    }
}