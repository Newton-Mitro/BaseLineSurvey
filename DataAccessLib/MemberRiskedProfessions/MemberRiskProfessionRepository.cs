using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberRiskedProfessions.Models;
using DataAccessLib.MemberSection.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.MemberRiskedProfessions
{
    public class MemberRiskProfessionRepository
    {
        ResponseObject responseObject;
        public MemberRiskProfessionRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 15 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 15 February 2022
        /// Description  : Function for Create Or Update Member Sleeping Place
        /// </summary>
        /// <param name="MemberSleepingPlaceModel">Receive MemberSleepingPlaceModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateMemberSleepingPlace(IEnumerable<MemberSleepingPlaceModel> memberSleepingPlaceModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(memberSleepingPlaceModels);

            parameters.Add("@TT_MemberSleepingPlaces", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateMemberSleepingPlace", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

      

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 15 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 15 February 2022
        /// Description  : Function for getting Member Sleeping Places By KhanaId
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMemberSleepingPlacesByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberSleepingPlaceViewModel>(@"SelectMemberSleepingPlacesByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 15 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 15 February 2022
        /// Description  : Function for getting Members Who Has Risk Profession
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMembersWhoHasRiskProfessionByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberViewModel>(@"SelectMembersWhoHasRiskProfessionByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 15 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 15 February 2022
        /// Description  : Function for getting Sleeping Places
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetSleepingPlaces()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<SleepingPlaceModel>(@"SelectSleepingPlaces", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 15 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 15 February 2022
        /// Description  : Function for getting Tortured Reasons
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetTorturedReasons()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<TorturedReasonModel>(@"SelectTorturedReasons", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 19 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 19 February 2022
        /// Description  : Function for Create Or Update Member Tortured Reason
        /// </summary>
        /// <param name="memberTorturedReasonModels">Receive IEnumerable<MemberTorturedReasonModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateMemberTorturedReason(IEnumerable<MemberTorturedReasonModel> memberTorturedReasonModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(memberTorturedReasonModels);

            parameters.Add("@TT_MemberTorturedReasons", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateMemberTorturedReason", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 19 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 19 February 2022
        /// Description  : Function for Get Member Tortured Reason By Khana And Member Id
        /// </summary>
        /// <param name="memberTorturedReason">Receive MemberTorturedReasonModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMemberTorturedReasonByKhanaAndMemberId(MemberTorturedReasonModel memberTorturedReason)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberTorturedReason.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberTorturedReason.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberTorturedReasonViewModel>(@"SelectMemberTorturedReasonByKhanaAndMemberId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
