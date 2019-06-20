namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("THONGTINCHINH")]
    public partial class THONGTINCHINH
    {
        [StringLength(100)]
        public string VITRI { get; set; }

        public int? TRANGTHAI { get; set; }

        public int? DIENTICH { get; set; }

        public int? PHONGNGU { get; set; }

        public int? PHONGTAM { get; set; }

        public int? GARA { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MABAIDANG { get; set; }

        public virtual BAIDANG BAIDANG { get; set; }

        public virtual CHITIETBD CHITIETBD { get; set; }
    }
}
