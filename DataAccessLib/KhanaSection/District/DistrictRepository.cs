using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.District
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for District
    /// </summary>
    public class DistrictRepository
    {
        ResponseObject responseObject;
        public DistrictRepository()
        {
            responseObject = new ResponseObject();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022 
        /// Description  : Function for getting districts
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetDistricts()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var districts = connetion.Query<DistrictModel>(@"SelectDistricts", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(districts);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
