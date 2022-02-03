using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Religion
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Religion
    /// </summary>
    public class ReligionRepository
    {
        ResponseObject responseObject;
        public ReligionRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting Religions
        /// </summary>
        /// <returns></returns>
        public ResponseObject GetReligions()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var religions = connetion.Query<ReligionModel>(@"SelectReligions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(religions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
