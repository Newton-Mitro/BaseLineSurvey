using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons;
using DataAccessLib.SocialAndCooperativeSection.FamilyDefaulderReasons.Models;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.SocialAndCooperativeSection
{
    public class FamilyDefaulderReasonController : ApiController
    {
        FamilyDefaulderReasonRepository familyDefaulderReasonRepository;
        public FamilyDefaulderReasonController()
        {
            familyDefaulderReasonRepository = new FamilyDefaulderReasonRepository();
        }

        [HttpPost]
        public ResponseObject CreateFamilyMemberDefaulterReason([FromBody] IEnumerable<FamilyMemberDefaulderReasonModel> familyMemberDefaulderReasonModels)
        {
            return familyDefaulderReasonRepository.CreateFamilyMemberDefaulterReason(familyMemberDefaulderReasonModels);
        }

        [HttpPost]
        public ResponseObject GetFamilyMemberDefaulterReasonByKhanaId([FromBody] long KhanaId)
        {
            return familyDefaulderReasonRepository.GetFamilyMemberDefaulterReasonByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetDefaulderReasons()
        {
            return familyDefaulderReasonRepository.GetDefaulderReasons();
        }
    }
}
