using System.Configuration;


namespace ApplicationDataAccess
{
    public class DBConnection
    {
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["BS_DB_Connection"].ConnectionString;
        }

    }
}
