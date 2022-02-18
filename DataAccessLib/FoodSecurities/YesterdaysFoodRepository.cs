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
    public class YesterdaysFoodRepository
    {
        ResponseObject responseObject;
        public YesterdaysFoodRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Create Yesterdays Food
        /// </summary>
        /// <param name="yesterdaysFoodModel">Receive YesterdaysFoodModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateYesterdaysFood(YesterdaysFoodModel yesterdaysFoodModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", yesterdaysFoodModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@FoodId", yesterdaysFoodModel.FoodId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", yesterdaysFoodModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", yesterdaysFoodModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertYesterdaysFood", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Delete Yesterdays Food
        /// </summary>
        /// <param name="YesterdaysFoodIdId">Receive YesterdaysFoodIdId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteYesterdaysFood(Int64 YesterdaysFoodIdId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@YesterdaysFoodIdId", YesterdaysFoodIdId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteYesterdaysFood", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Get Yesterdays Food By KhanaId
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetYesterdaysFoodByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<YesterdaysFoodModel>(@"SelectYesterdaysFoodByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for Get Foods
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFoods()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FoodModel>(@"SelectFoods", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
