using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Race
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Race
    /// </summary>
    public class RaceRepository
    {
        ResponseObject responseObject;
        public RaceRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting Races
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetRaces()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var races = connetion.Query<RaceModel>(@"SelectRaces", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(races);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
