using System.Data.SqlClient;

namespace ContactsSrvc.Data.SqlServer
{
    public interface ISqlCommandFactory
    {
        SqlCommand GetCommand();
    }
}