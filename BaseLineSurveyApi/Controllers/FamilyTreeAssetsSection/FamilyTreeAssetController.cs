using DataAccessLib.Base;
using DataAccessLib.FamilyTreeAsset;
using DataAccessLib.FamilyTreeAsset.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyTreeAssetsSection
{
    public class FamilyTreeAssetController : ApiController
    {
        FamilyTreeAssetRepository familyTreeAssetRepository;
        public FamilyTreeAssetController()
        {
            familyTreeAssetRepository = new FamilyTreeAssetRepository();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for creating Family Tree Asset
        /// </summary>
        /// <param name="familyTreeAssetModel">Expect FamilyTreeAssetModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateFamilyTreeAsset([FromBody] FamilyTreeAssetModel familyTreeAssetModel)
        {
            return familyTreeAssetRepository.CreateFamilyTreeAsset(familyTreeAssetModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for deleting family tree asset
        /// </summary>
        /// <param name="FamilyTreeAssetId">Expect FamilyTreeAssetId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject DeleteFamilyTreeAssetById([FromBody] Int64 FamilyTreeAssetId)
        {
            return familyTreeAssetRepository.DeleteFamilyTreeAssetById(FamilyTreeAssetId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for getting family tree assets
        /// </summary>
        /// <param name="KhanaId">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetFamilyTreeAssetByKhanaId([FromBody] Int64 KhanaId)
        {
            return familyTreeAssetRepository.GetFamilyTreeAssetByKhanaId(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for getting tree types
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetTreeTypes()
        {
            return familyTreeAssetRepository.GetTreeTypes();
        }
    }
}
