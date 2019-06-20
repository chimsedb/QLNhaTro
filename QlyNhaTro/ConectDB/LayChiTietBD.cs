using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class LayChiTietBD
    {
        ContextNhaTro context;

        public LayChiTietBD()
        {
            context = new ContextNhaTro();
        }

        public ChiTietBaiDang CTBAIDANG(int id_bd)
        {
            var Id_bd = new SqlParameter("@id", id_bd);

            return context.Database.SqlQuery<ChiTietBaiDang>(@"CTBAIDANG @id", Id_bd).Single<ChiTietBaiDang>();
        }

        public List<TienIch> DSTienIch(int id_bd)
        {
            var Id_bd = new SqlParameter("@id", id_bd);

            return context.Database.SqlQuery<TienIch>(@"DSTIENICH @id", Id_bd).ToList<TienIch>();
        }

        public List<AnhMoTa> DSAnhMoTa(int id_bd)
        {
            var Id_bd = new SqlParameter("@id", id_bd);

            return context.Database.SqlQuery<AnhMoTa>(@"DSANHMOTA @id", Id_bd).ToList<AnhMoTa>();
        }
    }

}