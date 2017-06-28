using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactsSrvc.Web.Api.Models
{
    public class ContactPerson
    {
        public int ContactPersonId { get; set; }
        public PersonType MyProperty { get; set; }
    }
}
