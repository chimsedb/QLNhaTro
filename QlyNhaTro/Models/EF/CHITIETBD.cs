namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CHITIETBD")]
    public partial class CHITIETBD
    {
        [StringLength(30)]
        public string THUOCKHUVUC { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGAYDANG { get; set; }

        public string MOTACHUNG { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MABAIDANG { get; set; }

        public virtual BAIDANG BAIDANG { get; set; }

        public virtual ANHMOTA ANHMOTA { get; set; }

        public virtual TINNHAN TINNHAN { get; set; }

        public virtual THONGTINCHINH THONGTINCHINH { get; set; }

        public virtual TIENICH TIENICH { get; set; }
    }
}
