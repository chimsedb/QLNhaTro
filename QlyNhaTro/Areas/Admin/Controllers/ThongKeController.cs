
using QlyNhaTro.Areas.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        // GET: Admin/ThongKe
        public ActionResult Index()
        {

            ThongKe thongKe = new ThongKe();
            
            return View(thongKe.DsBaiDang());
        }
    }
}