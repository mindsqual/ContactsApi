using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ContactsSrvc.Web.Api.Models
{
    public class PersonType
    {
        public long PersonTypeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<Link> Links { get; set; }
    }
}