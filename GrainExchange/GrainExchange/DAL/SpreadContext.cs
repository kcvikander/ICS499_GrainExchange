﻿using GrainExchange.Models;
using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;

namespace GrainExchange.DAL
{
    public class SpreadContext
    {
        public List<Spread> getAllSpreadRecords() {
            List<Spread> spreadList = new List<Spread>();
            String test = GetConnectionString();
            using (MySqlConnection con = new MySqlConnection(GetConnectionString()))
            {
                using (MySqlCommand cmd = new MySqlCommand("get_all_spread_records", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;                    
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        foreach (DataRow row in dt.Rows)
                        {
                            Spread thisSpread = new Spread();
                            thisSpread.portfolioId = Convert.ToInt32(row["Portfolio"]);
                            thisSpread.direction = Convert.ToString(row["Direction"]);
                            thisSpread.contracts = Convert.ToInt32(row["Contracts"]);
                            thisSpread.expiration = Convert.ToString(row["Expiration"]);
                            thisSpread.product = Convert.ToString(row["Product"]);
                            thisSpread.marginRequirement = Convert.ToInt32(row["MarginRequirement"]);
                            thisSpread.leg = Convert.ToInt32(row["Leg"]);
                            thisSpread.spreadId = Convert.ToInt32(row["id"]);
                            spreadList.Add(thisSpread);
                        }
                    }
                }
            }
            return spreadList;
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["mgex_marginsConnectionString"].ConnectionString;
        }
    }
}