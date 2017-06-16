using System;
using ContactsSrvc.Data.Model;

namespace ContactsSrvc.Data
{
    public interface IUserRepository
    {
        void SaveUser(Guid userId, string firstname, string lastname);
        User GetUser(Guid userId);
    }
}
