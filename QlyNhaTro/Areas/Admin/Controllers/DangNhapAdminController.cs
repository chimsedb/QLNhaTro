using QlyNhaTro.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Areas.Admin.Controllers
{
    public class DangNhapAdminController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ActionName("Index")]
        public ActionResult Index(string email, string pass)
        {

            Session["admin"] = null;
            Session["adminImg"] = null;
            Session["adminName"] = null;
            Session["checkLoginAdmin"] = null;
            User user = new User();
            if (user.DangNhap(email, pass) != 0)
            {
                Session["admin"] = user.DangNhap(email, pass);
                if (user.tAIKHOAN.AnhDaiDien!=null) Session["adminImg"] = user.tAIKHOAN.AnhDaiDien.ToString();
                Session["adminName"] = user.tAIKHOAN.TEN.ToString();
                return RedirectToAction("Index", "TrangChuAdmin");

            }
            Session["checkLoginAdmin"] = 1;
            //return RedirectToAction("Index", "LoginAdmin");
            return RedirectToAction("Index", "DangNhapAdmin");

        }

        public ActionResult DangXuat()
        {
            Session["admin"] = null;
            Session["adminImg"] = null;
            Session["adminName"] = null;
            Session["checkLoginAdmin"] = null;
            return RedirectToAction("Index", "DangNhapAdmin");
        }
    }
}