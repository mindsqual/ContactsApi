using System.Collections.Generic;

namespace ContactSrvc.Web.Api.Models
{
    /// <summary>
    /// A web resource type that represents 
    /// a PersonType (classification of person in the database
    /// </summary>
    class PersonType
    {
        public long PersonTypeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<Link> Links { get; set; }
    }
}
