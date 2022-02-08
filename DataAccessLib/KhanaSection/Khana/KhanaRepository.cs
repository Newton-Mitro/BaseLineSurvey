using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Khana
{
    /// <summary>
    /// Developer    : Raven Mark Quiah
    /// Created At   : 27 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 27 January 2022
    /// Description  : Data access repository for Khana
    /// </summary>
    public class KhanaRepository
    {
        ResponseObject responseObject;
        public KhanaRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Raven Mark Quiah
        /// Created At   : 27 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 27 January 2022
        /// Description  : Function for getting khanas for specific user
        /// </summary>
        /// <param name="_dbModel">Receive Basic Data Model</param>
        /// <returns>ResponseObject</returns>
        public ResponseObject GetKhanasByUserId(BasicModel _dbModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@UserId", _dbModel.UserId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@AccessedBy", _dbModel.AccessedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var khanas = connetion.Query<KhanaViewModel>(@"SelectKhanasByUserId", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(khanas);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 27 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 10 February 2022
        /// Description  : Function for insert khana to khana table
        /// </summary>
        /// <param name="khana">Receive Khana Data Model</param>
        /// <returns>ResponseObject</returns>
        public ResponseObject CreateKhana(KhanaModel khana)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@DistrictId", khana.DistrictId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@UpazilaId", khana.UpazilaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ParishId", khana.ParishId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ServiceCenterId", khana.ServiceCenterId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@VillageId", khana.VillageId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReligionId", khana.ReligionId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@RaceId", khana.RaceId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", khana.InformationStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@HouseReference", khana.HouseReference, DbType.String, ParameterDirection.Input);
            parameters.Add("@AccessedBy", khana.CreatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                connetion.Execute(@"InsertKhana", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = "";
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 10 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 10 February 2022
        /// Description  : Function for update khana to khana table
        /// </summary>
        /// <param name="khana">Receive Khana Data Model</param>
        /// <returns>ResponseObject</returns>
        public ResponseObject UpdateKhana(KhanaModel khana)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", khana.KhanaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@DistrictId", khana.DistrictId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@UpazilaId", khana.UpazilaId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ParishId", khana.ParishId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ServiceCenterId", khana.ServiceCenterId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@VillageId", khana.VillageId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReligionId", khana.ReligionId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@RaceId", khana.RaceId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", khana.InformationStatusCode, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@HouseReference", khana.HouseReference, DbType.String, ParameterDirection.Input);
            parameters.Add("@AccessedBy", khana.UpdatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                connetion.Execute(@"UpdateKhana", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = "";
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
