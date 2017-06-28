using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactsSrvc.Web.Api.Models
{
    /// <summary>
    /// Represents an interaction between the user and a BusinessEntityContact (Person) in the data store.
    /// 
    /// </summary>
    public class ContactEvent
    {
        public long ContactEventId { get; set; }
        public string Subject { get; set; }
        public DateTime TimeOfEvent { get; set; }
        public DateTime FollowUpDate { get; set; }
        public ContactPerson ContactPerson { get; set; }
    }
}
