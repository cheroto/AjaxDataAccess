using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace AjaxDataAccess
{
    public class AjaxConnections
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.AppSettings["NorthwindConnectionString"];
            }
        }
    }
}