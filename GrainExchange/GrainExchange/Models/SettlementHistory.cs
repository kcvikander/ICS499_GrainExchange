using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GrainExchange.Models
{
    public class SettlementHistory
    {
        //Can we normalize this? Are there going to be more or less than 2 products per settlement history? 
        // We could pass a list of Product objects, which contain their own settle and flux
        public string portfolio { get; set; }
        public string Leg1 { get; set; }
        public string Leg1Settle { get; set; }
        public string Leg2 { get; set; }
        public string Leg2Settle { get; set; }
        public string Leg1Flux { get; set; }
        public string Leg2Flux { get; set; }
        public string spreadFlux { get; set; }
        public string fluxExtension { get; set; }
        public string marginRequirement { get; set; }
        public string marginCoverage { get; set; }
        public string settlementDate { get; set; }
    }
}