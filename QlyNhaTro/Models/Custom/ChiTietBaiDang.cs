using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Models
{
    public class ChiTietBaiDang
    {
        public int id { get; set; }
        public string vitri { get; set; }
        public string giatien { get; set; }
        public int trangthai { get; set; }
        public int dientich { get; set; }
        public int phongngu { get; set; }
        public int phongtam { get; set; }
        public int gara { get; set; }
        public string motachung { get; set; }
    }
}