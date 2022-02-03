using ApplicationDataAccess;
using Model;
using Model.Base;
using Model.Khana;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace DataAccessLib
{
    public class BSSelect
    {
        string conStringName = "BS_DB_Connection"; //This variable will hold database connection string name
        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create date  : January 27, 2022
        //-- Description  : Function for Getting Khana by user id
        //-- Version      : 1.0
        //-- ============================================================================
        public List<ResponseObject> GetKhanaByUserId(Basic _dbModel)
        {
            SqlConnection conn = new SqlConnection(DBConnection.ConnVal(conStringName));
            conn.Open();
            List<ResponseObject> _modelList = new List<ResponseObject>();
            SqlCommand dCmd = new SqlCommand("SelectKhanasByUserId", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dCmd);
            dCmd.CommandType = CommandType.StoredProcedure;
            dCmd.CommandTimeout = 0;
            dCmd.Parameters.AddWithValue("@UserId", _dbModel.UserId);
            dCmd.Parameters.AddWithValue("@AccessedBy", _dbModel.AccessedBy);
            SqlParameter ReturnResult = new SqlParameter("@ReturnResult", SqlDbType.VarChar, 200) { Direction = ParameterDirection.Output };
            ReturnResult.Direction = ParameterDirection.Output;
            dCmd.Parameters.Add(ReturnResult);
            DataSet dSet = new DataSet();
            try
            {
                sda.Fill(dSet);
                List<Khana> khanaList = new List<Khana>();

                if (dSet.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < dSet.Tables[0].Rows.Count; i++)
                    {
                        Khana _modal = new Khana();
                        _modal.KhanaId = Convert.ToInt32(dSet.Tables[0].Rows[i]["KhanaId"].ToString());
                        _modal.DistrictId = Convert.ToInt32(dSet.Tables[0].Rows[i]["DistrictId"].ToString());
                        _modal.DistrictName = dSet.Tables[0].Rows[i]["DistrictName"].ToString();
                        _modal.UpazilaId = Convert.ToInt32(dSet.Tables[0].Rows[i]["UpazilaId"].ToString());
                        _modal.UpazilaName = dSet.Tables[0].Rows[i]["UpazilaName"].ToString();
                        _modal.PariseId = Convert.ToInt32(dSet.Tables[0].Rows[i]["PariseId"].ToString());
                        _modal.PariseName = dSet.Tables[0].Rows[i]["PariseName"].ToString();
                        _modal.ServiceCenterId = Convert.ToInt32(dSet.Tables[0].Rows[i]["ServiceCenterId"].ToString());
                        _modal.ServiceCenterName = dSet.Tables[0].Rows[i]["ServiceCenterName"].ToString();
                        _modal.VillageId = Convert.ToInt32(dSet.Tables[0].Rows[i]["VillageId"].ToString());
                        _modal.VillageName = dSet.Tables[0].Rows[i]["VillageName"].ToString();
                        _modal.ReligionId = Convert.ToInt32(dSet.Tables[0].Rows[i]["ReligionId"].ToString());
                        _modal.ReligionName = dSet.Tables[0].Rows[i]["ReligionName"].ToString();
                        _modal.RaceId = Convert.ToInt32(dSet.Tables[0].Rows[i]["RaceId"].ToString());
                        _modal.RaceName = dSet.Tables[0].Rows[i]["RaceName"].ToString();
                        _modal.InformationStatusCode = Convert.ToInt32(dSet.Tables[0].Rows[i]["InformationStatusCode"].ToString());
                        _modal.HouseReference = dSet.Tables[0].Rows[i]["HouseReference"].ToString();
                        _modal.CreatedBy = Convert.ToInt32(dSet.Tables[0].Rows[i]["CreatedBy"].ToString());
                        _modal.CreatorName = dSet.Tables[0].Rows[i]["CreatorName"].ToString();
                        _modal.UpdatedBy = Convert.ToInt32(dSet.Tables[0].Rows[i]["UpdatedBy"].ToString());
                        _modal.UpdatorName = dSet.Tables[0].Rows[i]["UpdatorName"].ToString();
                        _modal.CreatedAt = Convert.ToDateTime(dSet.Tables[0].Rows[i]["CreatedAt"].ToString());
                        _modal.UpdatedAt = Convert.ToDateTime(dSet.Tables[0].Rows[i]["UpdatedAt"].ToString());

                        khanaList.Add(_modal);
                    }
                }
                string json = JsonConvert.SerializeObject(khanaList, Formatting.None);
                var s = JsonConvert.DeserializeObject(json);
                string result = (string)dCmd.Parameters["@ReturnResult"].Value;
                ResponseObject _objddl = new ResponseObject();
                _objddl.Data = result == "Success" ? json : "";
                _objddl.Message = result;

                _modelList.Add(_objddl);
                return _modelList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                dSet.Dispose();
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }

        }
    }
}
