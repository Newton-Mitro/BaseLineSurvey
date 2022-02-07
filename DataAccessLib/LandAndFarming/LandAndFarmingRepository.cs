using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.LandAndFarmingSection.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.LandAndFarmingSection
{
    public class LandAndFarmingRepository
    {
        ResponseObject responseObject;
        public LandAndFarmingRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Create Family Farming Land
        /// </summary>
        /// <param name="familyLandModel">Receive FamilyLandModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyFarmingLand(FamilyLandModel familyLandModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyLandModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@CropTypeId", familyLandModel.CropTypeId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@LandAmount", familyLandModel.LandAmount, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@CropAmount", familyLandModel.CropAmount, DbType.Decimal, direction: ParameterDirection.Input);
            parameters.Add("@LandOwnershipTypeId", familyLandModel.LandOwnershipTypeId, DbType.Int32, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", familyLandModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyLandModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyFarmingLand", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Delete Family Farming Land By Id
        /// </summary>
        /// <param name="FarmingLandId">Receive FarmingLandId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFamilyFarmingLandById(Int64 FarmingLandId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FarmingLandId", FarmingLandId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFamilyFarmingLandById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Get Family Farming Land By Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFamilyFarmingLandByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyLandModel>(@"SelectFamilyFarmingLandByKhanaId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Get Crop Types
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetCropTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<CropTypeModel>(@"SelectCropTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Get Land Ownership Types
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetLandOwnershipTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<LandOwnershipTypeModel>(@"SelectLandOwnershipTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
