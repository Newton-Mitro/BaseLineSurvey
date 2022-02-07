using DataAccessLib.Base;
using DataAccessLib.MemberEducations;
using DataAccessLib.MemberEducations.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.EducationSection
{
    public class MemberEducationController : ApiController
    {
        public MemberEducationRepository memberEducationRepository;
        public MemberEducationController()
        {
            memberEducationRepository = new MemberEducationRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateDropOutInfo([FromBody] SchoolDropOutInfoModel schoolDropOutInfoModel)
        {
            return memberEducationRepository.CreateOrUpdateDropOutInfo(schoolDropOutInfoModel);
        }

        [HttpPost]
        public ResponseObject DeleteDropOutInfo([FromBody] Int64 SchoolDropoutId)
        {
            return memberEducationRepository.DeleteDropOutInfo(SchoolDropoutId);
        }

        [HttpPost]
        public ResponseObject GetDropOutInfosByKhanaId([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetDropOutInfosByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetEducationHelpTypes()
        {
            return memberEducationRepository.GetEducationHelpTypes();
        }

        [HttpPost]
        public ResponseObject GetHelpingOrganizations()
        {
            return memberEducationRepository.GetHelpingOrganizations();
        }

        [HttpPost]
        public ResponseObject GetDropOutReasons()
        {
            return memberEducationRepository.GetDropOutReasons();
        }

        [HttpPost]
        public ResponseObject GetSchoolDropOutMembers([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetSchoolDropOutMembers(KhanaId);
        }
    }
}
