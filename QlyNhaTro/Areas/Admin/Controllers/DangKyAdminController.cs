using QlyNhaTro.Areas.ConectDB;
using QlyNhaTro.ConectDB;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Areas.Admin.Controllers
{
    public class DangKyAdminController : Controller
    {
        // GET: Admin/RegisterAdmin
        public ActionResult Index()
        {

            return View();
        }
        [ActionName("Index")]
        [HttpPost]
        public ActionResult IndexPost(string tendau, string tencuoi, string email, string pass)
        {
            User user = new User();
            List<TAIKHOAN> tAIKHOANs = user.taiKhoans;

            for (int i = 0; i < tAIKHOANs.Count(); i++)
            {
                if (email == tAIKHOANs[i].EMAIL)
                {
                    Session["checkResgister"] = 1;

                    return RedirectToAction("Index", "DangKyAdmin");
                }
            }

            DangKy dangKy = new DangKy();
            dangKy.LuuDangKy(tendau, tencuoi, email, pass);

            return RedirectToAction("Index", "DangNhapAdmin");
        }
    }
}