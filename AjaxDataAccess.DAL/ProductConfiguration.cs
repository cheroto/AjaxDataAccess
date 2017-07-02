using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AjaxDataAccess.Domain;

namespace AjaxDataAccess.DAL
{
    class ProductConfiguration : EntityTypeConfiguration<Product>
    {
        public ProductConfiguration()
        {
            ToTable("Products");
            HasKey(x => x.ProductID);
            Property(x => x.ProductName).HasMaxLength(80);
            Property(x => x.UnitPrice);
            
        }
    }
}
