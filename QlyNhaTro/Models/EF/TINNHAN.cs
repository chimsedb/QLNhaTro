namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TINNHAN")]
    public partial class TINNHAN
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MABAIDANG { get; set; }

        public int ID { get; set; }

        public string CHITIET { get; set; }

        public virtual CHITIETBD CHITIETBD { get; set; }

        public virtual TAIKHOAN TAIKHOAN { get; set; }
    }
}
