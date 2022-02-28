using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.VitaminKhowledgeSection.VitaminKnowledgeOption;
using DataAccessLib.VitaminKhowledgeSection.VitaminKnowledges;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.VitaminKhowledgeSection.VitaminKnowledgeQuestion
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Vitamin Knowledge
    /// </summary>
    public class VitaminKnowledgeRepository
    {
        ResponseObject responseObject;
        public VitaminKnowledgeRepository()
        {
            responseObject = new ResponseObject();
        }

        //-- =========================================================================
        //-- Author       : Newton Mitro
        //-- Create Date  : January 31, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 31, 2022
        //-- Description  : Function for Getting Toilet And Water Questions
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject CreateOrUpdateVitaminKnowledge(VitaminKnowledgeModel vitaminKnowledgeModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@VitaminKnowledgeId", vitaminKnowledgeModel.VitaminKnowledgeId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@KhanaId", vitaminKnowledgeModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@QuestionId", vitaminKnowledgeModel.QuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@OptionId", vitaminKnowledgeModel.OptionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", vitaminKnowledgeModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", vitaminKnowledgeModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                connetion.Execute(@"InsertOrUpdateVitaminKnowledge", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        public ResponseObject GetVitaminKnowledgeQuestions(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.String, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var questions = connetion.Query<VitaminKnowledgeQuestionModel>(@"SelectVitaminKnowledgeQuestions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(questions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        public ResponseObject GetVitaminKnowledgeOptionsWithSelectedOption(VitaminKnowledgeModel vitaminKnowledgeModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", vitaminKnowledgeModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@QuestionId", vitaminKnowledgeModel.QuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.QueryMultiple(@"SelectVitaminKnowledgeOptionsWithSelectedOption", parameters, commandType: CommandType.StoredProcedure);
                var options = results.Read<VitaminKnowledgeOptionModel>();
                var selectedOptions = results.Read<VitaminKnowledgeModel>();

                QuestionOptionAndSelectedOptionModel optionAndSelectedOptionModel = new QuestionOptionAndSelectedOptionModel();
                optionAndSelectedOptionModel.Options = JsonConvert.SerializeObject(options);
                optionAndSelectedOptionModel.SelectedOptions = JsonConvert.SerializeObject(selectedOptions);
                responseObject.Data = JsonConvert.SerializeObject(optionAndSelectedOptionModel);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
