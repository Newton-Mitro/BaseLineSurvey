using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Village
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data access repository for Village
    /// </summary>
    public class VillageRepository
    {
        ResponseObject responseObject;
        public VillageRepository()
        {
            responseObject = new ResponseObject();
        }


        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 29 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 29 January 2022
        /// Description  : Function for getting Villages by ParishServiceCentersId
        /// </summary>
        /// <param name="ParishesServiceCentersId"></param>
        /// <returns></returns>
        public ResponseObject GetVillagesByParishesServicentersId(Int64 ParishesServiceCentersId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ParishesServiceCentersId", ParishesServiceCentersId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var villages = connetion.Query<VillageModel>(@"SelectVillagesByParishesServicentersId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(villages);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 23 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 23 February 2022
        /// Description  : Function for getting Villages by ParishServiceCentersId
        /// </summary>
        /// <param name="parishServiceCenterVillageModel"></param>
        /// <returns>ResponseObject</returns>
        public ResponseObject CreateVillageAndRelatedInfo(ParishServiceCenterVillageModel parishServiceCenterVillageModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@VillageName", parishServiceCenterVillageModel.VillageName, DbType.String, ParameterDirection.Input);
            parameters.Add("@ParishesServicentersId", parishServiceCenterVillageModel.ParishesServicentersId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@AccessedBy", parishServiceCenterVillageModel.AccessedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var villages = connetion.Execute(@"InsertVillageAndRelatedInfo", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
