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
    public class FoodShortageMonthRepository
    {
        ResponseObject responseObject;
        public FoodShortageMonthRepository()
        {
            responseObject = new ResponseObject();
        }
      
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Create Food Shortage Month
        /// </summary>
        /// <param name="foodShortageMonthModel">Receive FoodShortageMonthModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFoodShortageMonth(FoodShortageMonthModel foodShortageMonthModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", foodShortageMonthModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MonthId", foodShortageMonthModel.MonthId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", foodShortageMonthModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", foodShortageMonthModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFoodShortageMonth", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Delete Food Shortage Month
        /// </summary>
        /// <param name="FoodShortageMonthId">Receive FoodShortageMonthId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFoodShortageMonth(Int64 FoodShortageMonthId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FoodShortageMonthId", FoodShortageMonthId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFoodShortageMonth", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Get Food Shortage Months By Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFoodShortageMonthsByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FoodShortageMonthModel>(@"SelectFoodShortageMonthsByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Get Months
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMonths()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MonthModel>(@"SelectMonths", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
