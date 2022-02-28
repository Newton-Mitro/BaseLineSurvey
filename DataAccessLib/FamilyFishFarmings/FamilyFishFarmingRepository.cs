using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FamilyFishFarmings.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FamilyFishFarmings
{
    public class FamilyFishFarmingRepository
    {
        ResponseObject responseObject;
        public FamilyFishFarmingRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 27 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 27 February 2022
        /// Description  : Function for Create Family Fish Farming
        /// </summary>
        /// <param name="familyFishFarmingModel">Receive FamilyFishFarmingModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyFishFarming(FamilyFishFarmingModel familyFishFarmingModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyFishFarmingModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@RelatedWithFishFarming", familyFishFarmingModel.RelatedWithFishFarming, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@NumberOfWaterLands", familyFishFarmingModel.NumberOfWaterLands, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AreaOfWaterLands", familyFishFarmingModel.AreaOfWaterLands, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyFishFarmingModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyFishFarming", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 27 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 27 February 2022
        /// Description  : Function for Update Family Fish Farming
        /// </summary>
        /// <param name="familyFishFarmingModel">Receive FamilyFishFarmingModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject UpdateFamilyFishFarming(FamilyFishFarmingModel familyFishFarmingModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FamilyFishFarmingId", familyFishFarmingModel.FamilyFishFarmingId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@KhanaId", familyFishFarmingModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@RelatedWithFishFarming", familyFishFarmingModel.RelatedWithFishFarming, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@NumberOfWaterLands", familyFishFarmingModel.NumberOfWaterLands, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AreaOfWaterLands", familyFishFarmingModel.AreaOfWaterLands, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyFishFarmingModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"UpdateFamilyFishFarming", parameters, commandType: CommandType.StoredProcedure);
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
        public ResponseObject GetFamilyFishFarmingByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyFishFarmingModel>(@"SelectFamilyFishFarming", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
