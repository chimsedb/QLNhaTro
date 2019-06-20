using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace QlyNhaTro.Models
{
    public class BaiDang
    {
        
        public int mabaidang { get; set; }    
        public string giatien { get; set; }
        public string anhdaidien { get; set; }
        public string vitri { get; set; }

        public int dientich { get; set; }
        public int phongngu { get; set; }
        public int phongtam { get; set; }
        public int gara { get; set; }

        public DateTime ngaydang { get; set; }
    }
}