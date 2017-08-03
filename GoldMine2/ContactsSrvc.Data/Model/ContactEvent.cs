using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ContactsSrvc.Data.Model
{
    class ContactEvent
    {
        public virtual long ContactTypeId { get; set; }
        public virtual string Subject { get; set; }
        public virtual byte[] Version { get; set; }
    }
}
