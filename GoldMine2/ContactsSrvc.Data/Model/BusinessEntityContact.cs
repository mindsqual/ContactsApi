
namespace ContactsSrvc.Data.Model
{
    class BusinessEntityContact
    {
        public virtual long BusinessEntityId { get; set; }
        public virtual long PersonId { get; set; }
        public virtual long ContactTypeId { get; set; }
        public virtual byte[] Version { get; set; }
    }
}
