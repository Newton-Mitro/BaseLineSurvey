using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Upazila
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Upazila
    /// </summary>
    public class UpazilaRepository
    {
        ResponseObject responseObject;
        public UpazilaRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting Upazilas by District id
        /// </summary>
        /// <param name="DistrictId"></param>
        /// <returns></returns>
        public ResponseObject GetUpazilasByDistrictId(Int64 DistrictId )
        {
            var parameters = new DynamicParameters();
            parameters.Add("@DistrictId", DistrictId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var upazilas = connetion.Query<UpazilaModel>(@"SelectUpazilasByDistrictId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(upazilas);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
