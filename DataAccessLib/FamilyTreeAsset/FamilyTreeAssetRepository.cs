using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.FamilyTreeAsset.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.FamilyTreeAsset
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 03 February 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 03 February 2022
    /// Description  : Data access repository for Family Tree Assets
    /// </summary>
    public class FamilyTreeAssetRepository
    {
        ResponseObject responseObject;
        public FamilyTreeAssetRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for Create Family Tree Asset
        /// </summary>
        /// <param name="familyTreeAssetModel">Receive FamilyTreeAssetModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateFamilyTreeAsset(FamilyTreeAssetModel familyTreeAssetModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", familyTreeAssetModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@TreeId", familyTreeAssetModel.TreeId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", familyTreeAssetModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@NumberOfTrees", familyTreeAssetModel.NumberOfTrees, DbType.Int32, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", familyTreeAssetModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertFamilyTreeAsset", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for delete family tree asset
        /// </summary>
        /// <param name="FamilyTreeAssetId">Receive FamilyTreeAssetId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteFamilyTreeAssetById(Int64 FamilyTreeAssetId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@FamilyTreeAssetId", FamilyTreeAssetId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteFamilyTreeAssetById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for getting Family Tree Assets by Khana Id
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetFamilyTreeAssetByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<FamilyTreeAssetModel>(@"SelectFamilyTreeAssetByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for getting tree types
        /// </summary>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetTreeTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<TreeTypeModel>(@"SelectTreeTypes", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
