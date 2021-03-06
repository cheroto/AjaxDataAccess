﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using AjaxDataAccess.DAL;
using AjaxDataAccess.Domain;

namespace AjaxDataAccess.api
{
    public class ProductController : ApiController
    {
        public IList<Product> GetAll()
        {
            var pr = new ProductRepository(AjaxConnections.ConnectionString);
            var result = pr.GetAll();

            return result;
        }

        [HttpPost]
        public void Add(Product prod)
        {
            var pr = new ProductRepository(AjaxConnections.ConnectionString);
            pr.Add(prod);
        }

        [HttpPost]
        public void Delete(Product prod)
        {

            int id = prod.ProductID;
            var pr = new ProductRepository(AjaxConnections.ConnectionString);
            pr.Delete(id);
        }

        [HttpPost]
        public void Update(Product prod)
        {
            var pr = new ProductRepository(AjaxConnections.ConnectionString);
            pr.Update(prod);
        }
    }
}