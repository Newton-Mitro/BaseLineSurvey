using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.KhanaSection.Khana
{
    public class KhanaRepository
    {
        string conStringName = "BS_DB_Connection"; //Database Connection String Name
        
        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : January 27, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 29, 2022
        //-- Description  : Function for getting khanas by user id
        //-- Version      : 1.0
        //-- ============================================================================

        public ResponseObject GetKhanasByUserId(Basic _dbModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@UserId", _dbModel.UserId, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@AccessedBy", _dbModel.AccessedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                var khanas = connetion.Query<KhanaView>(@"SelectKhanasByUserId", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = JsonConvert.SerializeObject(khanas);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : January 27, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 29, 2022
        //-- Description  : Function for insert khana to khana table
        //-- Version      : 1.0
        //-- ============================================================================
        public ResponseObject CreateKhana(Khana khana)
        {
            var parameters = new DynamicParameters(khana);
            parameters.Add("@AccessedBy", khana.CreatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                connetion.Execute(@"InsertKhana", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = "";
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        //-- =========================================================================
        //-- Author       : Newtn Mitro
        //-- Create Date  : January 29, 2022
        //-- Updated By   : Newton Mitro
        //-- Updated Date : January 29, 2022
        //-- Description  : Function for insert khana to khana table
        //-- Version      : 1.0
        //-- ============================================================================
        public ResponseObject UpdateKhana(Khana khana)
        {
            var parameters = new DynamicParameters(khana);
            parameters.Add("@AccessedBy", khana.UpdatedBy, DbType.Int64, ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString(conStringName)))
            {
                connetion.Execute(@"UpdateKhana", parameters, commandType: CommandType.StoredProcedure);
                ResponseObject responseObject = new ResponseObject();
                responseObject.Data = "";
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }


    }
}
