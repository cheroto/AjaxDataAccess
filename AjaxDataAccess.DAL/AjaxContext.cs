using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AjaxDataAccess.Domain;

namespace AjaxDataAccess.DAL
{
    public class AjaxContext : DbContext
    {
        public IDbSet<Product> Products{ get; set; }
        public AjaxContext(string connectionString):base(connectionString)
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new ProductConfiguration());
            base.OnModelCreating(modelBuilder);
        }

    }
}
