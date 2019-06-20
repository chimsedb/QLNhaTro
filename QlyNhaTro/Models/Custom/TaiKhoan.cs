using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Models
{
    public class TaiKhoan
    {
        public int mapq { get; set; }
        public string ten { get; set; }
        public string tendaydu { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public DateTime ngaytao { get; set; }
        public int id{ get; set; }
        public string dtban { get; set; }
        public string dtdidong { get; set; }
        public string anhdaidien { get; set; }
        public string facebook { get; set; }
    }
}