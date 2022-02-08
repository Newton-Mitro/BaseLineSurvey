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
        public ResponseObject CreateSchoolDropOutInfo(SchoolDropOutInfoModel schoolDropOutInfoModel)
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
                var res = connetion.Execute(@"InsertSchoolDropOutInfo", parameters, commandType: CommandType.StoredProcedure);
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
        public ResponseObject DeleteSchoolDropOutInfo(Int64 SchoolDropoutId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@SchoolDropoutId", SchoolDropoutId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteSchoolDropOutInfo", parameters, commandType: CommandType.StoredProcedure);
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
        public ResponseObject GetSchoolDropOutInfosByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<SchoolDropOutInfoModel>(@"SelectSchoolDropOutInfosByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for creating Education Help Info
        /// </summary>
        /// <param name="educationHelpInfoModel">Receive EducationHelpInfoModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateEducationHelpInfo(EducationHelpInfoModel educationHelpInfoModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", educationHelpInfoModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", educationHelpInfoModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@EducationHelpTypeCode", educationHelpInfoModel.EducationHelpTypeCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@HelpOrganizationCode", educationHelpInfoModel.HelpOrganizationCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", educationHelpInfoModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", educationHelpInfoModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertEducationHelpInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Delete Education Help Info
        /// </summary>
        /// <param name="MemberEducationHelpId">Receive MemberEducationHelpId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteEducationHelpInfo(Int64 MemberEducationHelpId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberEducationHelpId", MemberEducationHelpId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteEducationHelpInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for getting Eduction Help Info By Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetEductionHelpInfoByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<EducationHelpInfoModel>(@"SelectEductionHelpInfoByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        public ResponseObject GetSchoolDropOutReasons()
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

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for getting Education Questions
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetEducationQuestions()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<EducationQuestionModel>(@"SelectEducationQuestions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for getting Education Options By Question Id
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetEducationOptionsByQuestionId(Int64 EducationQuestionId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@EducationQuestionId", EducationQuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<EducationOptionModel>(@"SelectEducationOptionsByQuestionId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for creating Member Educaton
        /// </summary>
        /// <param name="memberEducationModel">Receive MemberEducationModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateMemberEducaton(MemberEducationModel memberEducationModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberEducationModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberEducationModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@EducationQuestionId", memberEducationModel.EducationQuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@EducationOptionId", memberEducationModel.EducationOptionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", memberEducationModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", memberEducationModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertMemberEducation", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Delete Member Education
        /// </summary>
        /// <param name="MemberEducationId">Receive MemberEducationId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteMemberEducation(Int64 MemberEducationId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberEducationId", MemberEducationId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteMemberEducation", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for getting Member Educations By Khana And MemberId
        /// </summary>
        /// <param name="MemberEducationModel">Receive MemberEducationModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMemberEducationsByKhanaAndMemberId(MemberEducationModel memberEducationModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberEducationModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberEducationModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberEducationModel>(@"SelectMemberEducationsByKhanaAndMemberId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

    }
}
