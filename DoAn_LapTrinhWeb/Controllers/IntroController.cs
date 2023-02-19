using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn_LapTrinhWeb.Controllers
{
    public class IntroController : Controller
    {
        private DbContext db = new DbContext();
        // GET: Intro
        public ActionResult Index()     
        {
            BannerGlobal();
            return View();
        }
        public void BannerGlobal()
        {
            ViewBag.BannerTopHorizontal = db.Banners.OrderByDescending(m => Guid.NewGuid()).ThenBy(m => m.banner_id).Where(m => m.status == "1" && m.banner_type == 3).Take(8).ToList();
        }
    }
}