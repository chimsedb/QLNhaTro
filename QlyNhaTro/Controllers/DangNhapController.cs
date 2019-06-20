using QlyNhaTro.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Controllers
{
    public class DangNhapController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
           
            return View();
        }
        [HttpPost]
        [ActionName("Index")]
        public ActionResult DangNhapPost(string email,string pass)
        {
            Session["user"] = null;
            Session["checkLogin"] = null;
            User user = new User();
            if (user.DangNhap(email,pass) != 0)
            {
                Session["user"] = user.DangNhap(email, pass);
                return RedirectToAction("Index", "TrangChu");
            }
            Session["checkLogin"] = 1;
            return RedirectToAction("Index", "DangNhap");

        }
        public ActionResult DangXuat()
        {
            Session["user"] = null;

            return RedirectToAction("Index", "TrangChu");
        }
    }
}