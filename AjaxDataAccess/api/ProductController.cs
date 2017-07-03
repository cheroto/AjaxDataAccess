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

        public void AddProduct()
        {
            var pr = new ProductRepository(AjaxConnections.ConnectionString);
            
        }
    }
}