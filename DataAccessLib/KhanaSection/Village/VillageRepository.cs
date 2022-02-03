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

        //-- =========================================================================
        //-- Author       : Newton Mitro
        //-- Create Date  : January 29, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 29, 2022
        //-- Description  : Function for getting khanas by user id
        //-- Version      : 1.0
        //-- ============================================================================
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
    }
}
