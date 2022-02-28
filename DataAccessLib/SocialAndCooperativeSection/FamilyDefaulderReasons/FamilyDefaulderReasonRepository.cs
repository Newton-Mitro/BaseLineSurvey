using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons.Models;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons
{
    public class FamilyDefaulderReasonRepository
    {
        ResponseObject responseObject;
        public FamilyDefaulderReasonRepository()
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
        /// <param name="familyMemberDefaulderReasonModels">Receive IEnumerable<FamilyMemberDefaulderReasonModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyMemberDefaulterReason(IEnumerable<FamilyMemberDefaulderReasonModel> familyMemberDefaulderReasonModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(familyMemberDefaulderReasonModels);

            parameters.Add("@TT_FamilyMemberDefaulderReasons", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyMemberDefaulterReason", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 26 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 26 February 2022
        /// Description  : Function for GetCooperativeQuestionsByKhanaId
        /// </summary>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetFamilyMemberDefaulterReasonByKhanaId(long KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<FamilyMemberDefaulderReasonModel>(@"SelectFamilyMemberDefaulterReasonByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for GetDefaulderReasons
        /// </summary>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetDefaulderReasons()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<DefaulderReasonModel>(@"SelectDefaulderReasons", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
