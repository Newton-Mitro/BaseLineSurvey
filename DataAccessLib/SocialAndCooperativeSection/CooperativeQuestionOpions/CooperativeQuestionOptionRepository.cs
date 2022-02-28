using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.SocialAndCooperativeSection.CooperativeQuestionOpions
{
    public class CooperativeQuestionOptionRepository
    {
        ResponseObject responseObject;
        public CooperativeQuestionOptionRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 24 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 24 February 2022
        /// Description  : Function for CreateOrUpdateOrganizationWorkForChildrens
        /// </summary>
        /// <param name="cooperativeAnswerModels">Receive IEnumerable<CooperativeAnswerModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateCooperativeAnswer(IEnumerable<CooperativeAnswerModel> cooperativeAnswerModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(cooperativeAnswerModels);

            parameters.Add("@TT_CooperativeAnswers", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateCooperativeAnswer", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 24 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 24 February 2022
        /// Description  : Function for GetCooperativeQuestionsByKhanaId
        /// </summary>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetCooperativeQuestionsAndOptions()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.QueryMultiple(@"SelectCooperativeQuestionsAndOptions", parameters, commandType: CommandType.StoredProcedure);
                QuestionOptionAndSelectedOptionModel questionOptionAndSelectedOptionModel = new QuestionOptionAndSelectedOptionModel();
                questionOptionAndSelectedOptionModel.Questions = JsonConvert.SerializeObject(results.Read<CooperativeQuestionModel>());
                questionOptionAndSelectedOptionModel.Options = JsonConvert.SerializeObject(results.Read<CooperativeOptionModel>());
                responseObject.Data = JsonConvert.SerializeObject(questionOptionAndSelectedOptionModel);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 24 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 24 February 2022
        /// Description  : Function for GetCooperativeOptionsByKhanaAndQuestionId
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</KhanaId>
        public ResponseObject GetCooperativeAnswersByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<CooperativeAnswerModel>(@"SelectCooperativeAnswersByKhanaId", parameters, commandType: CommandType.StoredProcedure);

                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
