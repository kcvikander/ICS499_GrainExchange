using GrainExchange.Models;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Web.Http;
using System.Text;
using GrainExchange.DAL;

namespace GrainExchange.Controllers
{
    public class SettlementApiController : ApiController
    {
        [HttpPost, AllowAnonymous]
        [Route("api/save")]
        public HttpResponseMessage Post() {
            var formDataString = Request.Content.ReadAsStringAsync().Result.ToString();
            //Parse JSON to Obj
            SpreadContext context = new SpreadContext();
            context.saveSettlementData();
            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK) {
                Content = new StringContent("Success", Encoding.UTF8, "application/json")
            };
            return response;
        }
    }
}
