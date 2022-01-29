using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.District
{
    public class DistrictRepository
    {
        string conStringName = "BS_DB_Connection"; //Database Connection String Name

        //-- =========================================================================
        //-- Author       : Newton Mitro
        //-- Create Date  : January 29, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 29, 2022
        //-- Description  : Function for getting khanas by user id
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetDistricts()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                var districts = connetion.Query<District>(@"SelectDistricts", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = JsonConvert.SerializeObject(districts);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
