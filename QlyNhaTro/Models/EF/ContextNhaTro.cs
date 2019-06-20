namespace QlyNhaTro.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ContextNhaTro : DbContext
    {
        public ContextNhaTro()
            : base("name=ContextNhaTro")
        {
        }

        public virtual DbSet<BAIDANG> BAIDANGs { get; set; }
        public virtual DbSet<CHITIETBD> CHITIETBDs { get; set; }
        public virtual DbSet<PHANQUYEN> PHANQUYENs { get; set; }
        public virtual DbSet<TAIKHOAN> TAIKHOANs { get; set; }
        public virtual DbSet<THONGTINCHINH> THONGTINCHINHs { get; set; }
        public virtual DbSet<TINNHAN> TINNHANs { get; set; }
        public virtual DbSet<ANHMOTA> ANHMOTAs { get; set; }
        public virtual DbSet<TIENICH> TIENICHes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BAIDANG>()
                .HasOptional(e => e.CHITIETBD)
                .WithRequired(e => e.BAIDANG);

            modelBuilder.Entity<BAIDANG>()
                .HasOptional(e => e.THONGTINCHINH)
                .WithRequired(e => e.BAIDANG);

            modelBuilder.Entity<CHITIETBD>()
                .HasOptional(e => e.ANHMOTA)
                .WithRequired(e => e.CHITIETBD);

            modelBuilder.Entity<CHITIETBD>()
                .HasOptional(e => e.TINNHAN)
                .WithRequired(e => e.CHITIETBD);

            modelBuilder.Entity<CHITIETBD>()
                .HasOptional(e => e.THONGTINCHINH)
                .WithRequired(e => e.CHITIETBD);

            modelBuilder.Entity<CHITIETBD>()
                .HasOptional(e => e.TIENICH)
                .WithRequired(e => e.CHITIETBD);

            modelBuilder.Entity<TAIKHOAN>()
                .Property(e => e.TENDAYDU)
                .IsFixedLength();

            modelBuilder.Entity<TAIKHOAN>()
                .HasMany(e => e.TINNHANs)
                .WithRequired(e => e.TAIKHOAN)
                .WillCascadeOnDelete(false);
        }
    }
}
