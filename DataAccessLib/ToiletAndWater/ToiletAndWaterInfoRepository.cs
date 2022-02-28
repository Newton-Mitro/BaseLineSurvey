using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.ToiletAndWaterSection.ToiletAndWaterOption;
using DataAccessLib.ToiletAndWaterSection.ToiletAndWaterQuestion;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.ToiletAndWaterSection.ToiletAndWaterInfo
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Toilet and Water Info
    /// </summary>
    public class ToiletAndWaterInfoRepository
    {
        ResponseObject responseObject;
        public ToiletAndWaterInfoRepository()
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
        public ResponseObject CreateOrUpdateToiletAndWaterInfo(ToiletAndWaterInfoModel toiletAndWaterInfo)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ToiletAndWaterInfoId", toiletAndWaterInfo.ToiletAndWaterInfoId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@KhanaId", toiletAndWaterInfo.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@QuestionId", toiletAndWaterInfo.QuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@OptionId", toiletAndWaterInfo.OptionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", toiletAndWaterInfo.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", toiletAndWaterInfo.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateToiletAndWaterInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        public ResponseObject GetToiletAndWaterOptionsWithSelectedOption(ToiletAndWaterInfoModel toiletAndWaterInfo)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", toiletAndWaterInfo.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@QuestionId", toiletAndWaterInfo.QuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.QueryMultiple(@"SelectToiletAndWaterOptionsWithSelectedOption", parameters, commandType: CommandType.StoredProcedure);
                var options = results.Read<ToiletAndWaterOptionModel>();
                var selectedOptions = results.Read<ToiletAndWaterInfoModel>();

                QuestionOptionAndSelectedOptionModel optionAndSelectedOptionModel = new QuestionOptionAndSelectedOptionModel();
                optionAndSelectedOptionModel.Options = JsonConvert.SerializeObject(options);
                optionAndSelectedOptionModel.SelectedOptions = JsonConvert.SerializeObject(selectedOptions);
                responseObject.Data = JsonConvert.SerializeObject(optionAndSelectedOptionModel);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        public ResponseObject GetToiletAndWaterQuestions(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.String, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var questions = connetion.Query<ToiletAndWaterQuestionModel>(@"SelectToiletAndWaterQuestions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(questions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
