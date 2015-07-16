using GrainExchange.DAL;
using GrainExchange.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GrainExchange.Controllers
{
    public class ResultsController : Controller
    {
        private int portId;
        private DateTime start, end;
        private HistoryContext db = new HistoryContext();
        public ActionResult Index()
        {
            HistoryViewModel model = new HistoryViewModel();
            //model.HistoryList = db.getAllHistoryRecords();
            return View(model);
        }
        public ActionResult info()
        {
            HistoryViewModel model = new HistoryViewModel();
            //model.HistoryList = db.getAllHistoryRecords(portId, start, end);
            return View(model);
        }
    }
}