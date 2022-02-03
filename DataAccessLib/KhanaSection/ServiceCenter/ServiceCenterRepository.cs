using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.ServiceCenter
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Service Center
    /// </summary>
    public class ServiceCenterRepository
    {
        ResponseObject responseObject;
        public ServiceCenterRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting Service Centers by Parish Id
        /// </summary>
        /// <param name="ParishId"></param>
        /// <returns></returns>
        public ResponseObject GetServiceCentersByParisId(Int64 ParishId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ParishId", ParishId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var serviceCenters = connetion.Query<ServiceCenterModel>(@"SelectServiceCentersByParisId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(serviceCenters);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
