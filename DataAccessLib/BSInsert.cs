using ApplicationDataAccess;
using Model;
using Model.Khana;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLib
{
    public class BSInsert
    {
        string conStringName = "BS_DB_Connection"; //This variable will hold database connection string name
        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create date  : January 27, 2022
        //-- Description  : Function for Savings Khana to DB
        //-- Version      : 1.0
        //-- ============================================================================
        public List<ResponseObject> SaveKhana(Khana _dbModel)
        {
            SqlConnection conn = new SqlConnection(DBConnection.ConnVal(conStringName));
            conn.Open();
            List<ResponseObject> _modelList = new List<ResponseObject>();
            SqlCommand dCmd = new SqlCommand("InsertKhana", conn);
            SqlDataAdapter sda = new SqlDataAdapter(dCmd);
            dCmd.CommandType = CommandType.StoredProcedure;
            dCmd.CommandTimeout = 0;
            dCmd.Parameters.AddWithValue("@DistrictId", _dbModel.DistrictId);
            dCmd.Parameters.AddWithValue("@UpazilaId", _dbModel.UpazilaId);
            dCmd.Parameters.AddWithValue("@PariseId", _dbModel.PariseId);
            dCmd.Parameters.AddWithValue("@ServiceCenterId", _dbModel.ServiceCenterId);
            dCmd.Parameters.AddWithValue("@VillageId", _dbModel.VillageId);
            dCmd.Parameters.AddWithValue("@ReligionId", _dbModel.ReligionId);
            dCmd.Parameters.AddWithValue("@RaceId", _dbModel.RaceId);
            dCmd.Parameters.AddWithValue("@AccessedBy", _dbModel.AccessedBy);
            SqlParameter ReturnResult = new SqlParameter("@ReturnResult", SqlDbType.VarChar, 200) { Direction = ParameterDirection.Output };
            ReturnResult.Direction = ParameterDirection.Output;
            dCmd.Parameters.Add(ReturnResult);
            DataSet dSet = new DataSet();
            try
            {
                sda.Fill(dSet);
                
                string result = (string)dCmd.Parameters["@ReturnResult"].Value;
                ResponseObject _objddl = new ResponseObject();
                _objddl.Data = "";
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
