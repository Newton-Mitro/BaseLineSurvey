using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberIncomeRelatedWorkSection.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DataAccessLib.MemberIncomeRelatedWorkSection
{
    public class MemberIncomeRelatedWorkRepository
    {
        ResponseObject responseObject;
        public MemberIncomeRelatedWorkRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 19 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 19 February 2022
        /// Description  : Function for CreateOrUpdateMemberIncomeRelatedWork
        /// </summary>
        /// <param name="memberIncomeRelatedWorkModels">Receive IEnumerable<MemberIncomeRelatedWorkModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateMemberIncomeRelatedWork(IEnumerable<MemberIncomeRelatedWorkModel> memberIncomeRelatedWorkModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(memberIncomeRelatedWorkModels);

            parameters.Add("@TT_MemberIncomeRelatedWorks", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateMemberIncomeRelatedWork", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 19 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 19 February 2022
        /// Description  : Function forGetMemberIncomeRelatedWorkByKhanaAndMemberId
        /// </summary>
        /// <param name="memberTorturedReason">Receive MemberTorturedReasonModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMemberIncomeRelatedWorkByKhanaAndMemberId(MemberIncomeRelatedWorkModel memberIncomeRelatedWorkModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberIncomeRelatedWorkModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberIncomeRelatedWorkModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberIncomeRelatedWorkViewModel>(@"SelectMemberIncomeRelatedWorkByKhanaAndMemberId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 01 March 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 01 March 2022
        /// Description  : Function CheckIfKhanaHasAnyIncomeRelatedEntry
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CheckIfKhanaHasAnyIncomeRelatedEntry(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<String>(@"CheckIfKhanaHasAnyIncomeRelatedEntry", parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
                responseObject.Data = res;
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
