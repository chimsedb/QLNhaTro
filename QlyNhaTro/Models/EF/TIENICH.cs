namespace QlyNhaTro.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TIENICH")]
    public partial class TIENICH
    {
        [StringLength(50)]
        public string TENTIENICH { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MABAIDANG { get; set; }

        public virtual CHITIETBD CHITIETBD { get; set; }
    }
}
