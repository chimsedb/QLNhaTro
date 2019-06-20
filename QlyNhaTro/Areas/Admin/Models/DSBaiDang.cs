using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Areas.Admin.Models
{
    public class DSBaiDang
    {
        public int MaBaiDang { get; set; }
        public string ViTri { get; set; }
        public string GiaTien { get; set; }
        public string ThuocKhuVuc { get; set; }
        public DateTime NgayDang { get; set; }
        public string Ten { get; set; }
        public int MaPQ { get; set; }
    }
}