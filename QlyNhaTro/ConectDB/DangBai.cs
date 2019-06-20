using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class DangBai
    {
        ContextNhaTro context;

        public DangBai()
        {
            context = new ContextNhaTro();
        }

        public void ThemBaiViet(int id,string giatien,string kv,string vitri,int dientich,int phongngu,int phongtam,int gara)
        {
            var ID = new SqlParameter("@id", id);
            var GiaTien = new SqlParameter("@giatien", giatien);
            var KV = new SqlParameter("@kv", kv);
            var ViTri = new SqlParameter("@vitri", vitri);
            var DienTich = new SqlParameter("@dientich", dientich);
            var PhongNgu = new SqlParameter("@phongngu", phongngu);
            var PhongTam = new SqlParameter("@phongtam", phongtam);
            var Gara = new SqlParameter("@gara", gara);

            context.Database.ExecuteSqlCommand(@"ThemBaiViet @id,@giatien,@kv,@vitri,@dientich,@phongngu,@phongtam,@gara", ID,GiaTien,KV,ViTri,DienTich,PhongNgu,PhongTam,Gara);
        }

        public void ThemAnhDaiDien(string linkanh)
        {
            var LinkAnh = new SqlParameter("@linkanh", linkanh);
            
            context.Database.ExecuteSqlCommand(@"ThemAnhDaiDien @linkanh", LinkAnh);
        }

        public void ThemAnhBaiViet(string linkanh)
        {
            var LinkAnh = new SqlParameter("@linkanh", linkanh);

            context.Database.ExecuteSqlCommand(@"ThemAnhBaiViet @linkanh", LinkAnh);
        }

        public void ThemTienIchBaiViet(string tienich)
        {
            var TienIch = new SqlParameter("@tienich", tienich);

            context.Database.ExecuteSqlCommand(@"ThemTienIchBaiViet @tienich", TienIch);
        }
    }
}