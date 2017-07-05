using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxDataAccess.DAL;
using AjaxDataAccess.Domain;

namespace AjaxDataAccess
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var pr = new ProductRepository(AjaxConnections.ConnectionString);


            var result = pr.GetAll();
        }
    }
}