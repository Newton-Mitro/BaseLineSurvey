using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.SocialOrganizations.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.SocialAndCooperativeSection.SocialOrganizations
{
    public class SocialOrganizationRepository
    {
        ResponseObject responseObject;
        public SocialOrganizationRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 22 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 22 February 2022
        /// Description  : Function for CreateOrUpdateOrganizationWorkForChildrens
        /// </summary>
        /// <param name="organizationWorkForChildrenModels">Receive IEnumerable<OrganizationWorkForChildrenModel> as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateOrUpdateOrganizationWorkForChildrens(IEnumerable<OrganizationWorkForChildrenModel> organizationWorkForChildrenModels)
        {
            var parameters = new DynamicParameters();
            var dt = new DataTable();
            dt = DatatableConverter.ToDataTable(organizationWorkForChildrenModels);

            parameters.Add("@TT_OrganizationWorkForChildrens", dt.AsTableValuedParameter());
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertOrUpdateOrganizationWorkForChildrens", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 22 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 22 February 2022
        /// Description  : Function for GetOrganizationWorkForChildrensByVillageId
        /// </summary>
        /// <param name="VillageId">Receive VillageId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetOrganizationWorkForChildrensByVillageId(Int64 VillageId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@VillageId", VillageId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<OrganizationWorkForChildrenModel>(@"SelectOrganizationWorkForChildrensByVillageId", parameters, commandType: CommandType.StoredProcedure);

                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 22 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 22 February 2022
        /// Description  : Function for GetSocialWorkTypes
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetSocialWorkTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<SocialWorkTypeModel>(@"SelectSocialWorkTypes", parameters, commandType: CommandType.StoredProcedure);

                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }


        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 22 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 22 February 2022
        /// Description  : Function for CreateSocialOrganization
        /// </summary>
        /// <param name="socialOrganizationModel">Receive SocialOrganizationModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateSocialOrganization(SocialOrganizationModel socialOrganizationModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@VillageId", socialOrganizationModel.VillageId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@OrganizationName", socialOrganizationModel.OrganizationName, DbType.String, direction: ParameterDirection.Input);
            parameters.Add("@WorkForChildern", socialOrganizationModel.WorkForChildern, DbType.Boolean, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", socialOrganizationModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", socialOrganizationModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertSocialOrganization", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 22 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 22 February 2022
        /// Description  : Function for GetSocialOrganizationsByVillageId
        /// </summary>
        /// <param name="VillageId">Receive VillageId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetSocialOrganizationsByVillageId(Int64 VillageId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@VillageId", VillageId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Query<SocialOrganizationModel>(@"SelectSocialOrganizationsByVillageId", parameters, commandType: CommandType.StoredProcedure);

                responseObject.Data = JsonConvert.SerializeObject(results);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 23 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 23 February 2022
        /// Description  : Function for DeleteSocialOrganizationById
        /// </summary>
        /// <param name="SocialOrganizationId">Receive SocialOrganizationId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteSocialOrganizationById(Int64 SocialOrganizationId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@SocialOrganizationId", SocialOrganizationId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var results = connetion.Execute(@"DeleteSocialOrganizationById", parameters, commandType: CommandType.StoredProcedure);

                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
