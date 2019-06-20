using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Areas.Admin.Models
{
    public class XLThongKe
    {
        public int doanhsothang { get; set; }
        public int doanhsonam { get; set; }
        public int kyvong { get; set; }
        public int tinnhan { get; set; }

        public int TinhDSThang(List<DSBaiDang> dSBaiDangs)
        {
            int doanhso = 0;

            foreach (DSBaiDang dSBaiDang in dSBaiDangs)
            {
                if (Convert.ToInt32(DateTime.Now.ToString("MM")) - Convert.ToInt32(dSBaiDang.NgayDang.ToString("MM")) == 0)
                {
                    doanhso = doanhso + Convert.ToInt32(dSBaiDang.GiaTien.Substring(0, 1));
                }
            }

            return doanhso;
        }

        public int TinhDSNam(List<DSBaiDang> dSBaiDangs)
        {
            int doanhso = 0;

            foreach (DSBaiDang dSBaiDang in dSBaiDangs)
            {
                if (Convert.ToInt32(DateTime.Now.ToString("yy")) - Convert.ToInt32(dSBaiDang.NgayDang.ToString("yy")) == 0)
                {
                    doanhso = doanhso + Convert.ToInt32(dSBaiDang.GiaTien.Substring(0, 1));
                }
            }

            return doanhso;
        }
    }
}