using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FamilyIncome.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FamilyIncome
{
    
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 31 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 31 January 2022
    /// Description  : Data access repository for Family Income
    /// </summary>
    public class FamilyIncomeRepository
    {
        ResponseObject responseObject;
        public FamilyIncomeRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 31 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 31 January 2022
        /// Description  : Function for creating family income
        /// </summary>
        /// <param name="familyIncomeModel">Receive FamilyIncomeModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyIncome(FamilyIncomeModel familyIncomeModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyIncomeModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@IncomeSourceId", familyIncomeModel.IncomeSourceId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", familyIncomeModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AnnualIncomeAmount", familyIncomeModel.AnnualIncomeAmount, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@ProductionCost", familyIncomeModel.ProductionCost, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyIncomeModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            try
            {
                using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
                {
                    var res = connetion.Execute(@"InsertFamilyIncome", parameters, commandType: CommandType.StoredProcedure);
                    responseObject.Message = parameters.Get<string>("@ReturnResult");
                    return responseObject;
                }
            }
            catch (Exception ex)
            {

                responseObject.Message = ex.Message;
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 31 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 31 January 2022
        /// Description  : Function for delete family income
        /// </summary>
        /// <param name="familyIncomeModel">Receive FamilyIncomeId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFamilyIncomeById(Int64 FamilyIncomeId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FamilyIncomeId", FamilyIncomeId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFamilyIncomeById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 31 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 31 January 2022
        /// Description  : Function for delete family income
        /// </summary>
        /// <param name="familyIncomeModel">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFamilyIncomeByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyIncomeModel>(@"SelectFamilyIncomeByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 31 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 31 January 2022
        /// Description  : Function for getting income sources
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetIncomeSources()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<IncomeSourceModel>(@"SelectIncomeSources", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
