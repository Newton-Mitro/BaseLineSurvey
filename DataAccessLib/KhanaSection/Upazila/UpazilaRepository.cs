using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Upazila
{
    public class UpazilaRepository
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

        public ResponseObject GetUpazilasByDistrictId(Int64 DistrictId )
        {
            var parameters = new DynamicParameters();
            parameters.Add("@DistrictId", DistrictId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                var upazilas = connetion.Query<Upazila>(@"SelectUpazilasByDistrictId", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = JsonConvert.SerializeObject(upazilas);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
