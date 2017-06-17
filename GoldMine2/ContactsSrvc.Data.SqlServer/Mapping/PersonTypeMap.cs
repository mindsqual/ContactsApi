using ContactsSrvc.Data.Model;
namespace ContactsSrvc.Data.SqlServer.Mapping
{
    class PersonTypeMap : VersionedClassMap<PersonType>
    {
        public PersonTypeMap()
        {
            Id(x => x.PersonTypeId);
            Map(x => x.Name).Not.Nullable();
            Map(x => x.Description).Nullable();
        }
    }
}
