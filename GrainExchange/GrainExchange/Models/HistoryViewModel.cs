using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace GrainExchange.Models
{
    public class HistoryViewModel
    {
        public List<SettlementHistory> HistoryList { get; set; }
        public int portId { get; set; }
        public DateTime start { get; set; }
        public DateTime end { get; set; }
        public string ListSize
        {
            get
            {
                return this.HistoryList.Count.ToString();
            }
            set
            {
                this.ListSize = value;
            }
        }

        public int PortfolioID
        {
            get
            {
                return this.portId;
            }
            set
            {
                this.PortfolioID = value;
            }
        }

        public DateTime StartDate
        {
            get
            {
                return this.start;
            }
            set
            {
                this.StartDate = value;
            }
        }

        public DateTime EndDate
        {
            get
            {
                return this.end;
            }
            set
            {
                this.EndDate = value;
            }
        }
    }
}