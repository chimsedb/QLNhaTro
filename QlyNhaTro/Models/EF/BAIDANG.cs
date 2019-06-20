namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BAIDANG")]
    public partial class BAIDANG
    {
        [Required]
        [StringLength(25)]
        public string GIATIEN { get; set; }

        public string ANHDAIDIEN { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MABAIDANG { get; set; }

        public int? ID { get; set; }

        public virtual TAIKHOAN TAIKHOAN { get; set; }

        public virtual CHITIETBD CHITIETBD { get; set; }

        public virtual THONGTINCHINH THONGTINCHINH { get; set; }
    }
}
