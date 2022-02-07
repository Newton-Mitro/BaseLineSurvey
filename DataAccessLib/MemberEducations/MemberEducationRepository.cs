using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberEducations.Models;
using DataAccessLib.MemberSection.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.MemberEducations
{
    public class MemberEducationRepository
    {
        ResponseObject responseObject;
        public MemberEducationRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for creating family disease
        /// </summary>
        /// <param name="memberDiseaseModel">Receive MemberDiseaseModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateDropOutInfo(SchoolDropOutInfoModel schoolDropOutInfoModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", schoolDropOutInfoModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", schoolDropOutInfoModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@DropOutReasonCode", schoolDropOutInfoModel.DropOutReasonCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", schoolDropOutInfoModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", schoolDropOutInfoModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateDropOutInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Delete Drop Out Info
        /// </summary>
        /// <param name="SchoolDropoutId">Receive SchoolDropoutId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteDropOutInfo(Int64 SchoolDropoutId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@SchoolDropoutId", SchoolDropoutId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteDropOutInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for getting members who drop out from school
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetDropOutInfosByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<SchoolDropOutInfoModel>(@"SelectDropOutInfosByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for getting members who drop out from school
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetSchoolDropOutMembers(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberViewModel>(@"SelectSchoolDropOutMembers", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for getting Drop Out Reasons
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetDropOutReasons()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<DropOutReasonModel>(@"SelectDropOutReasions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for getting Education Help Types
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetEducationHelpTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<EducationHelpTypeModel>(@"SelectEducationHelpTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 08 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 08 February 2022
        /// Description  : Function for getting Education Help Types
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetHelpingOrganizations()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<HelpingOrganizationModel>(@"SelectHelpingOrganizations", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

    }
}
