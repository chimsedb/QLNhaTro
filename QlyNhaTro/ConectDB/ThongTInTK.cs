using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class ThongTInTK
    {
        ContextNhaTro context;

        public ThongTInTK()
        {
            context = new ContextNhaTro();
        }

        public TaiKhoan TrangChiTiet(int id)
        {
            var ID = new SqlParameter("@id", id);


            return context.Database.SqlQuery<TaiKhoan>(@"ThongTinTaiKhoan @id", ID).SingleOrDefault();
        }
    }
}