using QlyNhaTro.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.ConectDB
{
    public class User
    {
        ContextNhaTro context;
        public List<TAIKHOAN> taiKhoans;
        public TAIKHOAN tAIKHOAN;

        public User()
        {
            context = new ContextNhaTro();
            tAIKHOAN = new TAIKHOAN();
            taiKhoans = context.TAIKHOANs.SqlQuery(@"select * from taikhoan").ToList();
        }

        public int DangNhap(string email,string pass)
        {
            for(int i = 0; i < taiKhoans.Count(); i++)
            {
                if (email == taiKhoans[i].EMAIL && pass ==taiKhoans[i].PASSWORD)
                {
                    tAIKHOAN.AnhDaiDien = taiKhoans[i].AnhDaiDien;
                    tAIKHOAN.TEN = taiKhoans[i].TEN;
                    return taiKhoans[i].ID;
                }
            }

            return 0;
        }

    }
}