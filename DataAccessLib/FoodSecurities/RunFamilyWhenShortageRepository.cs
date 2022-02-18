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
    public class RunFamilyWhenShortageRepository
    {
        ResponseObject responseObject;
        public RunFamilyWhenShortageRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Create Run Family When Shortage
        /// </summary>
        /// <param name="runFamilyWhenShortageModel">Receive RunFamilyWhenShortageModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateRunFamilyWhenShortage(RunFamilyWhenShortageModel runFamilyWhenShortageModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", runFamilyWhenShortageModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ShortageSolutionId", runFamilyWhenShortageModel.ShortageSolutionId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", runFamilyWhenShortageModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", runFamilyWhenShortageModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertRunFamilyWhenShortage", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Delete Run Family When Shortage
        /// </summary>
        /// <param name="RunFamilyWhenShortId">Receive RunFamilyWhenShortId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteRunFamilyWhenShortage(Int64 RunFamilyWhenShortId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@RunFamilyWhenShortId", RunFamilyWhenShortId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteRunFamilyWhenShortage", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 12 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 12 February 2022
        /// Description  : Function for Get Run Family When Shortage By Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetRunFamilyWhenShortageByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<RunFamilyWhenShortageModel>(@"SelectRunFamilyWhenShortageByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for Get Shortage Solutions
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetShortageSolutions()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<ShortageSolutionModel>(@"SelectShortageSolutions", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
