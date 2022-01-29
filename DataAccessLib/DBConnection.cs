using System.Configuration;


namespace ApplicationDataAccess
{
    public class DBConnection
    {
        public static string GetConnectionString(string connectionStringName)
        {
            return ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
        }

    }
}
