using GrainExchange.Models;
using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;

namespace GrainExchange.DAL
{
    public class HistoryContext
    {
        public List<SettlementHistory> getAllHistoryRecords(string portId, string start, string end)
        {

            List<SettlementHistory> historyList = new List<SettlementHistory>();
            String test = GetConnectionString();
            using (MySqlConnection con = new MySqlConnection(GetConnectionString()))
            {
                using (MySqlCommand cmd = new MySqlCommand("get_History_records", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    if (portId != null) {
                        cmd.Parameters.AddWithValue("vPortfolio", Int32.Parse(portId));
                        cmd.Parameters["vPortfolio"].Direction = ParameterDirection.Input;
                    }
                    if (start != null) {
                        cmd.Parameters.AddWithValue("vDateStart", start);
                        cmd.Parameters["vDateStart"].Direction = ParameterDirection.Input;
                    }
                    if (end != null) {
                        cmd.Parameters.AddWithValue("vDateEnd", end);
                        cmd.Parameters["vDateEnd"].Direction = ParameterDirection.Input;
                    }               

                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        foreach (DataRow row in dt.Rows)
                        {
                            SettlementHistory thisSpread = new SettlementHistory();
                            thisSpread.portfolio = Convert.ToString(row["portfolio"]);
                            thisSpread.Leg1 = Convert.ToString(row["Product"]);
                            thisSpread.Leg1Settle = Convert.ToString(row["Product_Settle"]);
                            thisSpread.Leg2 = Convert.ToString(row["Product2"]);
                            thisSpread.Leg2Settle = Convert.ToString(row["Product2_settle"]);
                            thisSpread.Leg1Flux = Convert.ToString(row["Product_Flux"]);
                            thisSpread.Leg2Flux = Convert.ToString(row["Product2_Flux"]);
                            thisSpread.spreadFlux = Convert.ToString(row["Spread_Flux"]);
                            thisSpread.fluxExtension = Convert.ToString(row["Flux_Extension"]);
                            thisSpread.marginRequirement = Convert.ToString(row["margin_requirement"]);
                            thisSpread.marginCoverage = Convert.ToString(row["Margin_Coverage"]);
                            thisSpread.settlementDate = Convert.ToString(row["Settlement_Date"]);
                            historyList.Add(thisSpread);
                        }
                    }
                }
            }
            return historyList;
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["mgex_marginsConnectionString"].ConnectionString;
        }
    }
}