using QlyNhaTro.ConectDB;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Controllers
{
    public class TrangChuController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            LayBaiDang select = new LayBaiDang();

            List<BaiDang> xemnhieu = select.Top4XemNhieu();
            List<BaiDang> moidang = select.Top4MoiDang();
            ViewBag.MoiDang = moidang;
            return View(xemnhieu);
        }
    }
}