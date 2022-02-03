using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FamilyExpense.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FamilyExpense
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 03 February 2022
    /// Description  : Data access repository for Family Expense
    /// </summary>
    public class FamilyExpenseRepository
    {
        ResponseObject responseObject;
        public FamilyExpenseRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for creating family expense
        /// </summary>
        /// <param name="familyExpenseModel">Receive FamilyExpenseModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyExpense(FamilyExpenseModel familyExpenseModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyExpenseModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ExpenseSourceId", familyExpenseModel.ExpenseSourceId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", familyExpenseModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AnnualExpenseAmount", familyExpenseModel.AnnualExpenseAmount, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyExpenseModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyExpense", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for delete family expense
        /// </summary>
        /// <param name="FamilyExpenseId">Receive FamilyExpenseId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFamilyExpenseById(Int64 FamilyExpenseId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FamilyExpenseId", FamilyExpenseId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFamilyExpenseById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for delete family expense
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFamilyExpenseByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyExpenseModel>(@"SelectFamilyExpenseByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for getting expense sources
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetExpenseSources()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<ExpenseSourceModel>(@"SelectExpenseSources", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
