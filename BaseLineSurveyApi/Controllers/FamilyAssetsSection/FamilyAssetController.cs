using DataAccessLib.Base;
using DataAccessLib.FamilyAssets;
using DataAccessLib.FamilyAssets.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyAssetsSection
{
    public class FamilyAssetController : ApiController
    {
        FamilyAssetRepository familyAssetRepository;
        public FamilyAssetController()
        {
            familyAssetRepository = new FamilyAssetRepository();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for creating Family Asset
        /// </summary>
        /// <param name="familyAssetModel">Expect FamilyAssetModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateFamilyAsset([FromBody] FamilyAssetModel familyAssetModel)
        {
            return familyAssetRepository.CreateFamilyAsset(familyAssetModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for deleting family asset
        /// </summary>
        /// <param name="FamilyAssetId">Expect FamilyAssetId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject DeleteFamilyAssetsById([FromBody] Int64 FamilyAssetId)
        {
            return familyAssetRepository.DeleteFamilyAssetsById(FamilyAssetId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for getting family assets
        /// </summary>
        /// <param name="KhanaId">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetFamilyAssetByKhanaId([FromBody] Int64 KhanaId)
        {
            return familyAssetRepository.GetFamilyAssetByKhanaId(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 06 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 06 January 2022
        /// Description  : Function for getting child assets types
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetChildAssets()
        {
            return familyAssetRepository.GetChildAssets();
        }
    }
}
