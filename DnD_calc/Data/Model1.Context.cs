﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DnD_calc.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DnD_DBEntities : DbContext
    {
        public DnD_DBEntities()
            : base("name=DnD_DBEntities")
        {
        }
        private static DnD_DBEntities _context;

        public static DnD_DBEntities GetContext()
        {
            if(_context == null)
            {
                _context = new DnD_DBEntities();
            }
            return _context;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Niggative> Niggative { get; set; }
        public virtual DbSet<Positive> Positive { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
    }
}