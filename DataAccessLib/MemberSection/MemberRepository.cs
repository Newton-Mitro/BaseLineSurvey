using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberSection.DisabledTypeSection;
using DataAccessLib.MemberSection.EducationStatusSection;
using DataAccessLib.MemberSection.GenderSection;
using DataAccessLib.MemberSection.MaritalStatusSection;
using DataAccessLib.MemberSection.Models;
using DataAccessLib.MemberSection.ProfessionSection;
using DataAccessLib.MemberSection.RelstionshipSection;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.MemberSection.MemberSection
{

    public class MemberRepository
    {
        ResponseObject responseObject;
        public MemberRepository()
        {
            responseObject = new ResponseObject();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022
        //-- Description  : Function for insert member's information to member table
        //-- Version      : 1.0
        //-- ============================================================================
        public ResponseObject CreateMember(MemberModel member)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@RelationWithFamilyHeadId", member.RelationWithFamilyHeadId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@MemberName", member.MemberName, DbType.String, ParameterDirection.Input);
            parameters.Add("@GenderCode", member.GenderCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@FirstProfessionCode", member.FirstProfessionCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@SecondProfessionCode", member.SecondProfessionCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@IncomeRelatedWork", member.IncomeRelatedWork, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@MaritalStatusCode", member.MaritalStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@DisabledTypeCode", member.DisabledTypeCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@EducationalStatusCode", member.EducationalStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@CurrentlyStudying", member.CurrentlyStudying, DbType.Boolean, ParameterDirection.Input);
            parameters.Add("@KhanaId", member.KhanaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", member.InformationStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@DateOfBirth", member.DateOfBirth, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@AccessedBy", member.CreatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                connetion.Execute(@"InsertMember", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = "";
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022 
        //-- Description  : Function for update member to member table
        //-- Version      : 1.0
        //-- ============================================================================
        public ResponseObject UpdateMember(MemberModel member)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberId", member.MemberId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@MemberName", member.MemberName, DbType.String, ParameterDirection.Input);
            parameters.Add("@RelationWithFamilyHeadId", member.RelationWithFamilyHeadId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@GenderCode", member.GenderCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@FirstProfessionCode", member.FirstProfessionCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@SecondProfessionCode", member.SecondProfessionCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@IncomeRelatedWork", member.IncomeRelatedWork, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@MaritalStatusCode", member.MaritalStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@DisabledTypeCode", member.DisabledTypeCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@EducationalStatusCode", member.EducationalStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@CurrentlyStudying", member.CurrentlyStudying, DbType.Boolean, ParameterDirection.Input);
            parameters.Add("@KhanaId", member.KhanaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", member.InformationStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@DateOfBirth", member.DateOfBirth, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@AccessedBy", member.UpdatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                connetion.Execute(@"UpdateMember", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022
        //-- Description  : Function for getting members by khana id
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetMembersByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var members = connetion.Query<MemberViewModel>(@"SelectMembersByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(members);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022 
        //-- Description  : Function for getting all relationships
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetRelationships()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var relationships = connetion.Query<RelationshipModel>(@"SelectRelationships", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(relationships);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022 
        //-- Description  : Function for getting all professions
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetProfessions()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var professions = connetion.Query<ProfessionModel>(@"SelectProfessions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(professions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022
        //-- Description  : Function for getting all marital statuses
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetMaritalStatuses()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var professions = connetion.Query<MaritalStatusModel>(@"SelectMaritalStatuses", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(professions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022 
        //-- Description  : Function for getting all genders
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetGenders()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var genders = connetion.Query<GenderModelModel>(@"SelectGenders", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(genders);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022 
        //-- Description  : Function for getting all education statuses
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetEducationStatuses()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var educationStatuses = connetion.Query<EducationStatusModel>(@"SelectEducationStatuses", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(educationStatuses);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : February 01, 2022
        //-- Description  : Function for getting all disable types
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetDisableTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var disabledTypes = connetion.Query<DisabledTypeModel>(@"SelectDisableTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(disabledTypes);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for Get Family Members By Age
        /// </summary>
        /// <param name="memberSearchModel"></param>
        /// <returns></returns>
        public ResponseObject GetFamilyMembersByAge(MemberSearchModel memberSearchModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberSearchModel.KhanaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@Age", memberSearchModel.Age, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Condition", memberSearchModel.Condition, DbType.Int32, ParameterDirection.Input);
            //@Condition-- 1 = Equal, 2 = Less Than, 3 = Greater Than
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var members = connetion.Query<MemberViewModel>(@"SelectFamilyMembersByAge", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(members);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
