using System;
using System.Web;
using Microsoft.AspNetCore.Mvc;

namespace app.Controllers
{
    [Route("")]
    public class WhoAmIController : Controller
    {
        [HttpGet]
        public string Get()
        {
	    var host = Environment.GetEnvironmentVariable ("COMPUTERNAME");
            return "I am " + host;
        }
    }
}
