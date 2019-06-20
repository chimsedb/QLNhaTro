using QlyNhaTro.ConectDB;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Controllers
{
    public class CTBaiDangController : Controller
    {
        // GET: CTBaiDang
        public ActionResult Index(int id)
        {
            Session["mabaidang"] = id;

            LayChiTietBD layChiTietBD = new LayChiTietBD();
            ChiTietBaiDang chiTietBD = layChiTietBD.CTBAIDANG(id);

            List<TienIch> tienIches = layChiTietBD.DSTienIch(id);
            ViewBag.DSTienIch = tienIches;

            List<AnhMoTa> anhMoTas = layChiTietBD.DSAnhMoTa(id);
            ViewBag.DSAnhMoTa = anhMoTas;

            ThongTInTK thongTInTK = new ThongTInTK();
            TaiKhoan tkNguoiDang = thongTInTK.TrangChiTiet(chiTietBD.id);
            ViewBag.TTTaiKhoan = tkNguoiDang;

            TaiKhoan tkCaNhan = thongTInTK.TrangChiTiet(Convert.ToInt32(Session["user"]));
            if (Session["user"] != null)
            {
                Session["TenTkCaNhan"] = tkCaNhan.tendaydu;
                Session["EmailTkCaNhan"] = tkCaNhan.email;
            }
            else
            {
                Session["TenTkCaNhan"] = null;
                Session["EmailTkCaNhan"] = null;
            }



            return View(chiTietBD);
        }

        [HttpPost]
        public ActionResult LuuTinNhan(string tinnhan)
        {
            TinNhan tinNhan = new TinNhan();
            if (Session["user"] != null && Session["mabaidang"] != null)
            {
                tinNhan.LuuTinNhan(Convert.ToInt32(Session["mabaidang"]), Convert.ToInt32(Session["user"]), tinnhan);
            }
            else
            {
                return RedirectToAction("DangNhap", "Login");
            }

            return RedirectToAction("Index", "ThanhCong");
        }
    }
}