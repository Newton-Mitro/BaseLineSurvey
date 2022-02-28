using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.ChildRightForParentSection.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.ChildRightForParentSection
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 06 February 2022
    /// Description  : Data assess repository for Family Assets
    /// </summary>
    public class ParentResponsibilityToChildRepository
    {
        ResponseObject responseObject;
        public ParentResponsibilityToChildRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for creating Parent Responsibility To Child
        /// </summary>
        /// <param name="parentResponsibilityToChildModel">Receive ParentResponsibilityToChildModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateParentResponsibilityToChild(IEnumerable<ParentResponsibilityToChildModel> parentResponsibilityToChildModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(parentResponsibilityToChildModels);
 
            parameters.Add("@ParentResponsibilityToChilds", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateParentResponsibilityToChild", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for getting Parent Responsibility Options
        /// </summary>
        /// <param name="parentResponsibilityToChildModel">Receive ParentResponsibilityToChildModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetParentResponsibilityOptions(ParentResponsibilityToChildModel parentResponsibilityToChildModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", parentResponsibilityToChildModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ParentResponsibilityQuestionId", parentResponsibilityToChildModel.ParentResponsibilityQuestionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.QueryMultiple(@"SelectParentResponsibilityOptions", parameters, commandType: CommandType.StoredProcedure);
                var options = results.Read<ParentResponsibilityOptionModel>();
                var selectedOptions = results.Read<ParentResponsibilityToChildModel>();

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
        /// Created At   : 06 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for Getting Parent Responsibility Questions
        /// </summary>
        /// <param name="familyAssetModel">Receive FamilyAssetModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetParentResponsibilityQuestions(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.String, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var questions = connetion.Query<ParentResponsibilityQuestionModel>(@"SelectParentResponsibilityQuestions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(questions);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
