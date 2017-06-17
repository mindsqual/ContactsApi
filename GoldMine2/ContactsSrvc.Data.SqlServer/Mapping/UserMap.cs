using System;
using ContactsSrvc.Data.Model;

namespace ContactsSrvc.Data.SqlServer.Mapping
{
    public class UserMap : VersionedClassMap<User>
    {
        public UserMap()
        {
            Table("AllUsers");

            Id(x => x.UserId).CustomType<Guid>();
            Map(x => x.Firstname).Not.Nullable();
            Map(x => x.Lastname).Not.Nullable();
            Map(x => x.Email).Nullable();
            Map(x => x.Username).Not.Nullable();
        }
    }
}