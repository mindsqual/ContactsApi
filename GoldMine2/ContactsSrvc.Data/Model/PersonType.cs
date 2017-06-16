namespace ContactsSrvc.Data.Model
{
    public class PersonType : IVersionedModelObject
    {
        public virtual int PersonTypeId { get; set; }
        public virtual string Name { get; set; }
        public string Description { get; set; }
        public virtual byte[] Version { get; set; }
    }
}
