using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Parish
{
    public class ParishRepository
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

        public ResponseObject GetParishesByUpazilaId(Int64 UpazilaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@UpazilaId", UpazilaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                var parishes = connetion.Query<Parish>(@"SelectParishesByUpazilaId", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = JsonConvert.SerializeObject(parishes);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
