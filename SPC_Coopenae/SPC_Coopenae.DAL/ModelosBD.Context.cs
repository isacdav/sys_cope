﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SPC_Coopenae.DATA
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ConexionBD : DbContext
    {
        public ConexionBD()
            : base("name=ConexionBD")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Categorias> Categorias { get; set; }
        public virtual DbSet<ColocacionCredito> ColocacionCredito { get; set; }
        public virtual DbSet<ColocacionProducto> ColocacionProducto { get; set; }
        public virtual DbSet<Ejecutivos> Ejecutivos { get; set; }
        public virtual DbSet<MetasIDP> MetasIDP { get; set; }
        public virtual DbSet<Productos> Productos { get; set; }
        public virtual DbSet<Sucursal> Sucursal { get; set; }
        public virtual DbSet<TipoCredito> TipoCredito { get; set; }
    }
}
