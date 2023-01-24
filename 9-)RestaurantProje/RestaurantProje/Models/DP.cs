using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RestaurantProje.Models
{
    public class DP
    {
        private static string connectionString = @"Server=DESKTOP-E4509IB;Database=Restaurant;uid=sa;pwd=password1;";
        public static void EXReturn(string procadi, DynamicParameters param = null)
        {
            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                baglanti.Execute(procadi, param, commandType: CommandType.StoredProcedure);
            }


        }

        public static IEnumerable<T> ReturnList<T>(string procadi, DynamicParameters param = null)
        //T class'ı temsil eder
        //kaç tane parametre alacağımızı bilmediğimiz zaman param yazarız 
        //bilinmeyen parametre sayıları için param kullanırız
        {
            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                return baglanti.Query<T>(procadi, param, commandType: CommandType.StoredProcedure);
            }
        }



    }
}