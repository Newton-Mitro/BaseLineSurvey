using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberRiskedProfessions.Models;
using DataAccessLib.MemberSection.Models;
using Newtonsoft.Json;
using System;
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
        public ResponseObject CreateOrUpdateMemberSleepingPlace(MemberSleepingPlaceModel memberSleepingPlaceModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberSleepingPlaceId", memberSleepingPlaceModel.MemberSleepingPlaceId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@KhanaId", memberSleepingPlaceModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberSleepingPlaceModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@SleepingPlaceId", memberSleepingPlaceModel.SleepingPlaceId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", memberSleepingPlaceModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", memberSleepingPlaceModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
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
        /// Description  : Function for Delete Member Sleeping Place
        /// </summary>
        /// <param name="MemberSleepingPlaceId">Receive MemberSleepingPlaceId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteMemberSleepingPlace(Int64 MemberSleepingPlaceId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberSleepingPlaceId", MemberSleepingPlaceId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteMemberSleepingPlace", parameters, commandType: CommandType.StoredProcedure);
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
                var res = connetion.Query<MemberSleepingPlaceModel>(@"SelectMemberSleepingPlacesByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
    }
}
