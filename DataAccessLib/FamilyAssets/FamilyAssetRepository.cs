using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FamilyAssets.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FamilyAssets
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 03 February 2022
    /// Description  : Data assess repository for Family Assets
    /// </summary>
    public class FamilyAssetRepository : BaseEntity
    {
        ResponseObject responseObject;
        public FamilyAssetRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for creating family asset
        /// </summary>
        /// <param name="familyAssetModel">Receive FamilyAssetModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyAsset(FamilyAssetModel familyAssetModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyAssetModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ChildAssetId", familyAssetModel.ChildAssetId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ParentAssetId", familyAssetModel.ParentAssetId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", familyAssetModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@Quantity", familyAssetModel.Quantity, DbType.Double, direction: ParameterDirection.Input);
            parameters.Add("@CurrentSaleValue", familyAssetModel.CurrentSaleValue, DbType.Double, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyAssetModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyAsset", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for delete family asset
        /// </summary>
        /// <param name="FamilyAssetId">Receive FamilyAssetId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFamilyAssetsById(Int64 FamilyAssetId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FamilyAssetId", FamilyAssetId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFamilyAssetById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 February 2022
        /// Description  : Function for getting family assets
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFamilyAssetByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyAssetModel>(@"SelectFamilyAssetByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for getting child assets
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetChildAssets()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<ChildAssetModel>(@"SelectAssetTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
