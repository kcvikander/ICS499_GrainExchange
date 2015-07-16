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
        public List<SettlementHistory> getAllHistoryRecords(int portId, DateTime start, DateTime end)
        {
            List<SettlementHistory> historyList = new List<SettlementHistory>();
            String test = GetConnectionString();
            using (MySqlConnection con = new MySqlConnection(GetConnectionString()))
            {
                using (MySqlCommand cmd = new MySqlCommand("testHistory", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("?portfolionumber", portId);
                    cmd.Parameters["?portfolionumber"].Direction = ParameterDirection.Input;
                    cmd.Parameters.AddWithValue("?dateBegin", start);
                    cmd.Parameters["?dateBegin"].Direction = ParameterDirection.Input;
                    cmd.Parameters.AddWithValue("?dateEnd", end);
                    cmd.Parameters["?dateEnd"].Direction = ParameterDirection.Input;
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