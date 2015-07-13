using GrainExchange.DAL;
using GrainExchange.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GrainExchange.Controllers
{
    public class SpreadController : Controller
    {
        private SpreadContext db = new SpreadContext();
        // GET: Spread
        public ActionResult Index()
        {
            //ViewBag.Title("Enter Spreads");
            SpreadViewModel model = new SpreadViewModel();
            model.SpreadList = db.getAllSpreadRecords();
            return View(model);
        }
    }
}