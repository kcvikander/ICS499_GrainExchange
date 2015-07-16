using GrainExchange.DAL;
using GrainExchange.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;
using System.Text;

namespace GrainExchange.Controllers
{
    public class HistoryApiController : ApiController
    {
        [HttpGet, AllowAnonymous]
        [Route("api/getHistoricalData")]
        public HttpResponseMessage Get([FromUri]string start, [FromUri]string end, [FromUri] string portfolioId)
        {
            HistoryContext context = new HistoryContext();

            List<SettlementHistory> history = context.getAllHistoryRecords(portfolioId, start, end); 

            HttpResponseMessage response = new HttpResponseMessage(HttpStatusCode.OK)
            {
                Content = new StringContent(JsonConvert.SerializeObject(history), Encoding.UTF8, "application/json")
            };
            return response;
        }
    }
}
