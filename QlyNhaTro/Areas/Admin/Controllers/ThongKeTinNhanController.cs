using QlyNhaTro.Areas.Admin.Models;
using QlyNhaTro.Areas.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Areas.Admin.Controllers
{
    public class ThongKeTinNhanController : Controller
    {
        // GET: Admin/ThongKeTinNhan
        public ActionResult Index()
        {
            ThongKe thongKe = new ThongKe();
            List<CTTinNhan> cTTinNhans = thongKe.ChiTietTinNhan(Convert.ToInt32(Session["admin"]));

            return View(cTTinNhans);
        }
    }
}