using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class TinNhan
    {
        ContextNhaTro context;

        public TinNhan()
        {
            context = new ContextNhaTro();
        }

        public void LuuTinNhan(int mabaidang,int id,string chitiet)
        {
            var MaBaiDang = new SqlParameter("@mabaidang", mabaidang);
            var ID = new SqlParameter("@id", id);
            var ChiTiet = new SqlParameter("@chitiet", chitiet);

            context.Database.ExecuteSqlCommand(@"LuuTinNhan @mabaidang,@id,@chitiet", MaBaiDang,ID,ChiTiet);
        }

    }
}