using ApplicationDataAccess;
using Dapper;
using DataAccessLib.Base;
using DataAccessLib.MemberDisease.Models;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib.MemberDisease
{
    public class MemberDiseaseRepository
    {
        ResponseObject responseObject;
        public MemberDiseaseRepository()
        {
            responseObject = new ResponseObject();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 February 2022
        /// Description  : Function for creating family disease
        /// </summary>
        /// <param name="memberDiseaseModel">Receive MemberDiseaseModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject CreateMemberDisease(MemberDiseaseModel memberDiseaseModel)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", memberDiseaseModel.KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@MemberId", memberDiseaseModel.MemberId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@DiseaseCode", memberDiseaseModel.DiseaseCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@FirstTreatmentFrom", memberDiseaseModel.FirstTreatmentFrom, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@TreatmentCentercode", memberDiseaseModel.TreatmentCentercode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@DoctorTypeCode", memberDiseaseModel.DoctorTypeCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@IfCovid_NumberOfDose", memberDiseaseModel.IfCovid_NumberOfDose, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@InformationStatusCode", memberDiseaseModel.InformationStatusCode, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@AccessedBy", memberDiseaseModel.CreatedBy, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"InsertMemberDisease", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 February 2022
        /// Description  : Function for deleting family disease
        /// </summary>
        /// <param name="MemberDiseasId">Receive MemberDiseaseModel as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject DeleteMemberDiseaseById(Int64 MemberDiseasId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@MemberDiseasId", MemberDiseasId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Execute(@"DeleteMemberDiseaseById", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 02 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 02 February 2022
        /// Description  : Function for getting family diseases
        /// </summary>
        /// <param name="KhanaId">Receive KhanaId as Input Parameter</param>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetMemberDiseasesByKhanaId(Int64 KhanaId)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@KhanaId", KhanaId, DbType.Int64, direction: ParameterDirection.Input);
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<MemberDiseaseModel>(@"SelectMemberDiseasesByKhanaId", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for getting Get Disease
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetDisease()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<DiseaseModel>(@"SelectDiseases", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for getting Doctor Types
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetDoctorTypes()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<DoctorTypeModel>(@"SelectDoctorTypes", parameters, commandType: CommandType.StoredProcedure);
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
        /// Description  : Function for getting Treatment Centers
        /// </summary>
        /// <returns>Return ResponseObject</returns>
        public ResponseObject GetTreatmentCenters()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@ReturnResult", " ", DbType.String, direction: ParameterDirection.Output);
            using (IDbConnection connetion = new SqlConnection(DBConnection.GetConnectionString()))
            {
                var res = connetion.Query<TreatmentCenterModel>(@"SelectTreatmentCenters", parameters, commandType: CommandType.StoredProcedure);
                responseObject.Data = JsonConvert.SerializeObject(res);
                responseObject.Message = parameters.Get<string>("@ReturnResult");
                return responseObject;
            }
        }
    }
}
