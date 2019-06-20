using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class LayBaiDang
    {
        ContextNhaTro context;

        public LayBaiDang()
        {
            context = new ContextNhaTro();
        }

        public List<BaiDang> Top4XemNhieu()
        {
            return context.Database.SqlQuery<BaiDang>(@"TOP4BAIDANG").ToList<BaiDang>();
        }

        public List<BaiDang> XemNhieu()
        {
            return context.Database.SqlQuery<BaiDang>(@"XEMNHIEU").ToList<BaiDang>();
        }

        public List<BaiDang> Top4MoiDang()
        {
            return context.Database.SqlQuery<BaiDang>(@"TOP4MOIDANG").ToList<BaiDang>();
        }

        public List<BaiDang> MoiDang()
        {
            return context.Database.SqlQuery<BaiDang>(@"MoiDang").ToList<BaiDang>();
        }

        public List<BaiDang> TimTheoQuan(string tenquan)
        {
            var Tenquan = new SqlParameter("@tenquan", tenquan);

            return context.Database.SqlQuery<BaiDang>(@"TIMTHEOQUAN @tenquan",Tenquan).ToList<BaiDang>();
        }

    }
}