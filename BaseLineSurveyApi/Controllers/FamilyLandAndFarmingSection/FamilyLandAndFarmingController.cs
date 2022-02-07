using DataAccessLib.Base;
using DataAccessLib.LandAndFarmingSection;
using DataAccessLib.LandAndFarmingSection.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.FamilyLandAndFarmingSection
{
    public class FamilyLandAndFarmingController : ApiController
    {
        LandAndFarmingRepository landAndFarmingRepository;
        public FamilyLandAndFarmingController()
        {
            landAndFarmingRepository = new LandAndFarmingRepository();
        }
        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 January 2022
        /// Description  : Function for Create Family Farming Land
        /// </summary>
        /// <param name="familyLandModel">Expect FamilyLandModel</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject CreateFamilyFarmingLand([FromBody] FamilyLandModel familyLandModel)
        {
            return landAndFarmingRepository.CreateFamilyFarmingLand(familyLandModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 January 2022
        /// Description  : Function for Delete Family Farming Land By Id
        /// </summary>
        /// <param name="FarmingLandId">Expect FarmingLandId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject DeleteFamilyFarmingLandById([FromBody] Int64 FarmingLandId)
        {
            return landAndFarmingRepository.DeleteFamilyFarmingLandById(FarmingLandId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 January 2022
        /// Description  : Function for Get Family Farming Land By KhanaId
        /// </summary>
        /// <param name="KhanaId">Expect KhanaId</param>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetFamilyFarmingLandByKhanaId([FromBody] Int64 KhanaId)
        {
            return landAndFarmingRepository.GetFamilyFarmingLandByKhanaId(KhanaId);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 January 2022
        /// Description  : Function for Get Crop Types
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetCropTypes()
        {
            return landAndFarmingRepository.GetCropTypes();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 January 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 January 2022
        /// Description  : Function for Get Land Ownership Types
        /// </summary>
        /// <returns>ResponseObject</returns>
        [HttpPost]
        public ResponseObject GetLandOwnershipTypes()
        {
            return landAndFarmingRepository.GetLandOwnershipTypes();
        }
    }
}
