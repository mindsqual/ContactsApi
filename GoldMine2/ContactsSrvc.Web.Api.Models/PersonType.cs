﻿using System.Collections.Generic;

namespace ContactsSrvc.Web.Api.Models
{
    /// <summary>
    /// A web resource type that represents 
    /// a PersonType (classification of person in the database
    /// </summary>
    public class PersonType
    {
        public long PersonTypeId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<Link> Links { get; set; }
    }
}
