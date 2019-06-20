namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TAIKHOAN")]
    public partial class TAIKHOAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TAIKHOAN()
        {
            BAIDANGs = new HashSet<BAIDANG>();
            TINNHANs = new HashSet<TINNHAN>();
        }

        public int? MAPQ { get; set; }

        [StringLength(10)]
        public string TEN { get; set; }

        [StringLength(50)]
        public string TENDAYDU { get; set; }

        [StringLength(50)]
        public string EMAIL { get; set; }

        [StringLength(30)]
        public string PASSWORD { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NGAYTAO { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [StringLength(20)]
        public string DTBan { get; set; }

        [StringLength(20)]
        public string DTDiDong { get; set; }

        public string AnhDaiDien { get; set; }

        [StringLength(50)]
        public string Facebook { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BAIDANG> BAIDANGs { get; set; }

        public virtual PHANQUYEN PHANQUYEN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TINNHAN> TINNHANs { get; set; }
    }
}
