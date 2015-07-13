using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GrainExchange.Models
{
    public class SpreadViewModel
    {
        public List<Spread> SpreadList { get; set; }
        public string ListSize {
            get {
                return this.SpreadList.Count.ToString();
            }
            set {
                this.ListSize = value;
            } }
    }
}