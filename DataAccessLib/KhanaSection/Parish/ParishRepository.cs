using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Parish
{
    
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Parish
    /// </summary>
    public class ParishRepository
    {
        ResponseObject responseObject;
        public ParishRepository()
        {
            responseObject = new ResponseObject();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting parish by upazila id
        /// </summary>
        /// <param name="khana">Receive Upazila Id</param>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetParishesByUpazilaId(Int64 UpazilaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@UpazilaId", UpazilaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var parishes = connetion.Query<ParishModel>(@"SelectParishesByUpazilaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(parishes);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
