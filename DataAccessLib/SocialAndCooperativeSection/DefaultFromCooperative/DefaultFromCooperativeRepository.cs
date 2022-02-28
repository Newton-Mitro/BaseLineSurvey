using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.SocialAndCooperativeSection.DefaultFromCooperative
{
    public class DefaultFromCooperativeRepository
    {
        ResponseObject responseObject;
        public DefaultFromCooperativeRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 26 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 26 February 2022
        /// Description  : Function for CreateFamilyMemberDefaulterReason
        /// </summary>
        /// <param name="defaultFromCooperativeModels">Receive IEnumerable<DefaultFromCooperativeModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateDefaultFromCooperativeInfo(IEnumerable<DefaultFromCooperativeModel> defaultFromCooperativeModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(defaultFromCooperativeModels);

            parameters.Add("@TT_DefaultFromCooperativeInfos", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertDefaultFromCooperativeInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 26 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 26 February 2022
        /// Description  : Function for GetCooperatives
        /// </summary>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetCooperatives()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<CooperativeModel>(@"SelectCooperatives", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 26 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 26 February 2022
        /// Description  : Function for GetDefaultFromCooperativeInfosByKhanaAndMemberId
        /// </summary>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetDefaultFromCooperativeInfosByKhanaAndMemberId(DefaultFromCooperativeModel defaultFromCooperativeModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", defaultFromCooperativeModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", defaultFromCooperativeModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<DefaultFromCooperativeReadModel>(@"SelectDefaultFromCooperativeInfosByKhanaAndMemberId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
