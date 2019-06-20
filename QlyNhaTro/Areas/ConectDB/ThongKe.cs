using QlyNhaTro.Areas.Admin.Models;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
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

        public XLThongKe XuLyThongKe()
        {
            context = new ContextNhaTro();
            List<DSBaiDang> dSBaiDangs = context.Database.SqlQuery<DSBaiDang>(@"ThongKe").ToList();
            XLThongKe xLThongKe = new XLThongKe();
            xLThongKe.doanhsothang = xLThongKe.TinhDSThang(dSBaiDangs);
            xLThongKe.doanhsonam = xLThongKe.TinhDSNam(dSBaiDangs);
            return xLThongKe;
        }

    }
}