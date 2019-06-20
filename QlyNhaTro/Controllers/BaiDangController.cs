using QlyNhaTro.ConectDB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QlyNhaTro.Controllers
{
    public class BaiDangController : Controller
    {
        // GET: BaiDag
        public ActionResult XemNhieuNhat()
        {
            LayBaiDang select = new LayBaiDang();

            return View(select.XemNhieu());
        }

        public ActionResult MoiDang()
        {
            LayBaiDang select = new LayBaiDang();

            return View(select.MoiDang());
        }

        public ActionResult TimTheoQuan(string tenquan)
        {
            LayBaiDang select = new LayBaiDang();
            ViewBag.TenQuan = tenquan;
            return View(select.TimTheoQuan(tenquan));
        }

        public ActionResult DangBai()
        {
            if (Session["user"] == null)
            {
                return RedirectToAction("Index", "DangNhap");
            }

            return View();
        }
        [HttpPost]
        [ActionName("DangBai")]
        public ActionResult DangBaiPost(string vitri, string giatien, string kv, string dt, int phongngu, int phongtam, int gara, int anhmota, int tienich)
        {
            Session["vitri"] = vitri;
            Session["giatien"] = giatien;
            Session["kv"] = kv;
            Session["dt"] = dt;
            Session["phongngu"] = phongngu;
            Session["phongtam"] = phongtam;
            Session["gara"] = gara;
            Session["anhmota"] = anhmota;
            Session["tienich"] = tienich;


            return RedirectToAction("AnhVaTienIch", "BaiDang", new { soanh = anhmota, sotienich = tienich });
        }

        public ActionResult AnhVaTienIch(int soanh, int sotienich)
        {
            ViewBag.soanh = soanh;
            ViewBag.sotienich = sotienich;

            return View();
        }
        [HttpPost]
        public ActionResult XacNhan(string anhdaidien,string[] anh,string[] tienich)
        {
            DangBai dangBai = new DangBai();
            dangBai.ThemBaiViet(Convert.ToInt32(Session["user"]), Session["giatien"].ToString(), Session["kv"].ToString(), Session["vitri"].ToString(), Convert.ToInt32(Session["dt"]), Convert.ToInt32(Session["phongngu"]), Convert.ToInt32(Session["phongtam"]), Convert.ToInt32(Session["gara"]));
            anhdaidien = "/Custom/img/" + anhdaidien;
            dangBai.ThemAnhDaiDien(anhdaidien);

            for (int i = 0; i < anh.Length; i++)
            {
                anh[i] = "/Custom/img/" + anh[i];
                dangBai.ThemAnhBaiViet(anh[i].ToString());
            }

            for (int i = 0; i < tienich.Length; i++)
            {
                dangBai.ThemTienIchBaiViet(tienich[i].ToString());
            }

            return RedirectToAction("Index","TrangChu");
        }
    }
}