using System.Web.Http;

namespace ContactsSrvc.Web.Common.Security
{
    public class AdministratorAuthorized : AuthorizeAttribute
    {
        public AdministratorAuthorized()
        {
            Roles = "Administrators";
        }
    }
}
