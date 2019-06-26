using QlyNhaTro.Areas.Admin.Models;
using QlyNhaTro.Areas.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Areas.Admin.Controllers
{
    public class TrangChuAdminController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            ThongKe thongKe = new ThongKe();
            XLThongKe xLThongKe = thongKe.XuLyThongKe(Convert.ToInt32(Session["admin"]));

            Session["doanhsothang"] = xLThongKe.doanhsothang;
            Session["doanhsonam"] = xLThongKe.doanhsonam;
            Session["kyvong"] = xLThongKe.kyvong;
            Session["tongtinnhan"] = xLThongKe.tinnhan;
            return View();
        }
    }
}