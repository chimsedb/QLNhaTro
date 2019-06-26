using QlyNhaTro.Areas.Admin.Models;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Areas.ConectDB
{
    public class ThongKe
    {
        ContextNhaTro context;

        public ThongKe()
        {
            context = new ContextNhaTro();

        }

        public List<DSBaiDang> DsBaiDang()
        {
            context = new ContextNhaTro();
            return context.Database.SqlQuery<DSBaiDang>(@"ThongKe").ToList();
        }

        public XLThongKe XuLyThongKe(int id)
        {
            context = new ContextNhaTro();
            List<DSBaiDang> dSBaiDangs = context.Database.SqlQuery<DSBaiDang>(@"ThongKe").ToList();
            XLThongKe xLThongKe = new XLThongKe();
            xLThongKe.doanhsothang = xLThongKe.TinhDSThang(dSBaiDangs);
            xLThongKe.doanhsonam = xLThongKe.TinhDSNam(dSBaiDangs);
            xLThongKe.kyvong = xLThongKe.KyVong(dSBaiDangs);
            xLThongKe.tinnhan = ThongKeTinNhan(id);
            return xLThongKe;
        }

        public int ThongKeTinNhan(int id)
        {
            context = new ContextNhaTro();
            var ID = new SqlParameter("@id", id);
            TKTinNhan tinNhan = context.Database.SqlQuery<TKTinNhan>(@"ThongKeTinNhan @id", ID).SingleOrDefault();
            
            return tinNhan.SoTinNhan;
        }

        public List<CTTinNhan> ChiTietTinNhan(int id)
        {
            context = new ContextNhaTro();
            var ID = new SqlParameter("@id", id);

            return context.Database.SqlQuery<CTTinNhan>(@"TKChiTietTinNhan @id", ID).ToList();
        }

    }
}