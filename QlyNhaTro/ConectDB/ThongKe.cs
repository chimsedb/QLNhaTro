using QlyNhaTro.Areas.Admin.Models;
using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class ThongKe
    {
        ContextNhaTro context;

        public ThongKe()
        {
            context = new ContextNhaTro();
            context.Database.SqlQuery<DSBaiDang>(@"ThongKe").ToList();
        }

    }
}