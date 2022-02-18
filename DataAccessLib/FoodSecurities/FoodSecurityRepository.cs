using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FoodSecurities.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FoodSecurities
{
    public class FoodSecurityRepository
    {
        ResponseObject responseObject;
        public FoodSecurityRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Create Or Update Food Security Info
        /// </summary>
        /// <param name="foodSecurityModel">Receive FoodSecurityModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateFoodSecurityInfo(FoodSecurityModel foodSecurityModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FoodSecuritieId", foodSecurityModel.FoodSecuritieId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@KhanaId", foodSecurityModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@NumberOfMealYeasterday", foodSecurityModel.NumberOfMealYeasterday, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@DontEatOrHalfEat", foodSecurityModel.DontEatOrHalfEat, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", foodSecurityModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", foodSecurityModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateFoodSecurityInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }


        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Get Food Security Info By Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFoodSecurityInfoByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FoodSecurityModel>(@"SelectFoodSecurityInfoByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
