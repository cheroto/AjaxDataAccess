using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AjaxDataAccess.Domain;

namespace AjaxDataAccess.DAL
{
    public class ProductRepository
    {
        private AjaxContext _context { get; set; }
        public ProductRepository(string connectionString)
        {
            _context = new AjaxContext(connectionString);
        }

        public IList<Product> GetAll()
        {

            return _context.Products.OrderBy(p => p.ProductName).ToList();
        }



        public void Add(Product prod)
        {
            _context.Products.Add(prod); 
            _context.SaveChanges();
        }

        public void Delete(int ID)
        {
            var p = _context.Products.Find(ID);
            _context.Products.Remove(p);
            _context.SaveChanges();
        }

    }
}
