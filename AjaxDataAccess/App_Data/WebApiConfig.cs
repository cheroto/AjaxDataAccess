using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Routing;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace AjaxDataAccess
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            config.MapHttpAttributeRoutes();
            RouteTable.Routes.MapHttpRoute(
                name: "defaultRoute",
                routeTemplate: "api/{controller}/{action}"
                );

            config.Formatters.JsonFormatter.UseDataContractJsonSerializer = true;
            config.Formatters.JsonFormatter.SerializerSettings = new JsonSerializerSettings
            {
                Formatting = Formatting.Indented,
                TypeNameHandling = TypeNameHandling.Objects,
                ContractResolver = new CamelCasePropertyNamesContractResolver()
            };
            
            config.EnsureInitialized();
            
        }
    }
}