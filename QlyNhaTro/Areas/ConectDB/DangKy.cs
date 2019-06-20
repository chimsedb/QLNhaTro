using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Areas.ConectDB
{
    public class DangKy
    {
        ContextNhaTro context;
        public DangKy()
        {
            context = new ContextNhaTro();
        }
        public void LuuDangKy(string tendau,string tencuoi,string email,string pass)
        {
            var Tendau = new SqlParameter("@tendau", tendau);
            var Tencuoi = new SqlParameter("@tencuoi", tencuoi);
            var Email = new SqlParameter("@email", email);
            var Pass = new SqlParameter("@pass", pass);

            context.Database.ExecuteSqlCommand(@"DangKy @tendau,@tencuoi,@email,@pass", Tendau, Tencuoi, Email, Pass);
        }
    }
}