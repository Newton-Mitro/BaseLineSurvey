using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.ChildRightForChild.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.ChildRightForChild
{
    public class ChildRightForChildRepository
    {
        ResponseObject responseObject;
        public ChildRightForChildRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 February 2022
        /// Description  : Function for creating Parent Responsibility To Child
        /// </summary>
        /// <param name="childRightModels">Receive IEnumerable<ChildRightModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateChildRightInfo(IEnumerable<ChildRightModel> childRightModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(childRightModels);

            parameters.Add("@ChildRightInfos", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateChildRightInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 February 2022
        /// Description  : Function for getting Child Right Options By Question Id
        /// </summary>
        /// <param name="childRightModel">Receive childRightModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetChildRightOptionsByQuestionId(ChildRightModel childRightModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", childRightModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ChildRightQuestionId", childRightModel.ChildRightQuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.QueryMultiple(@"SelectChildRightOptionsByQuestionId", parameters, commandType: CommandType.StoredProcedure);
                var options = results.Read<ChildRightOptionModel>();
                var selectedOptions = results.Read<ChildRightReadModel>();

                QuestionOptionAndSelectedOptionModel optionAndSelectedOptionModel = new QuestionOptionAndSelectedOptionModel();
                optionAndSelectedOptionModel.Options = JsonConvert.SerializeObject(options);
                optionAndSelectedOptionModel.SelectedOptions = JsonConvert.SerializeObject(selectedOptions);
                responseObject.Data = JsonConvert.SerializeObject(optionAndSelectedOptionModel);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 07 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 07 February 2022
        /// Description  : Function for Getting Child Right Questions
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetChildRightQuestions(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.String, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var questions = connetion.Query<ChildRightQuestionModel>(@"SelectChildRightQuestions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(questions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
