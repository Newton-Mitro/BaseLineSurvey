using DataAccessLib.Base;
using DataAccessLib.SocialAndCooperativeSection.SocialOrganizations;
using DataAccessLib.SocialAndCooperativeSection.SocialOrganizations.Models;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.SocialAndCooperativeSection
{
    public class SocialOrganizationController : ApiController
    {
        SocialOrganizationRepository socialOrganizationRepository;
        public SocialOrganizationController()
        {
            socialOrganizationRepository = new SocialOrganizationRepository();
        }

        [HttpPost]
        public ResponseObject CreateSocialOrganization([FromBody] SocialOrganizationModel socialOrganizationModel)
        {
            return socialOrganizationRepository.CreateSocialOrganization(socialOrganizationModel);
        }

        [HttpPost]
        public ResponseObject GetSocialOrganizationsByVillageId([FromBody] long VillageId)
        {
            return socialOrganizationRepository.GetSocialOrganizationsByVillageId(VillageId);
        }

        [HttpPost]
        public ResponseObject GetSocialWorkTypes()
        {
            return socialOrganizationRepository.GetSocialWorkTypes();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateOrganizationWorkForChildrens([FromBody] IEnumerable<OrganizationWorkForChildrenModel> organizationWorkForChildrenModels)
        {
            return socialOrganizationRepository.CreateOrUpdateOrganizationWorkForChildrens(organizationWorkForChildrenModels);
        }

        [HttpPost]
        public ResponseObject GetOrganizationWorkForChildrensByVillageId([FromBody] long VillageId)
        {
            return socialOrganizationRepository.GetOrganizationWorkForChildrensByVillageId(VillageId);
        }

        [HttpPost]
        public ResponseObject DeleteSocialOrganizationById([FromBody] long SocialOrganizationId)
        {
            return socialOrganizationRepository.DeleteSocialOrganizationById(SocialOrganizationId);
        }
    }
}
