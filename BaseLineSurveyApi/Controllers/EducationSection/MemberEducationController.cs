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
        public ResponseObject CreateSchoolDropOutInfo([FromBody] SchoolDropOutInfoModel schoolDropOutInfoModel)
        {
            return memberEducationRepository.CreateSchoolDropOutInfo(schoolDropOutInfoModel);
        }

        [HttpPost]
        public ResponseObject DeleteSchoolDropOutInfo([FromBody] Int64 SchoolDropoutId)
        {
            return memberEducationRepository.DeleteSchoolDropOutInfo(SchoolDropoutId);
        }

        [HttpPost]
        public ResponseObject GetSchoolDropOutInfosByKhanaId([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetSchoolDropOutInfosByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject CreateEducationHelpInfo([FromBody] EducationHelpInfoModel educationHelpInfoModel)
        {
            return memberEducationRepository.CreateEducationHelpInfo(educationHelpInfoModel);
        }

        [HttpPost]
        public ResponseObject DeleteEducationHelpInfo([FromBody] Int64 MemberEducationHelpId)
        {
            return memberEducationRepository.DeleteEducationHelpInfo(MemberEducationHelpId);
        }

        [HttpPost]
        public ResponseObject GetEductionHelpInfoByKhanaId([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetEductionHelpInfoByKhanaId(KhanaId);
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
        public ResponseObject GetSchoolDropOutReasons()
        {
            return memberEducationRepository.GetSchoolDropOutReasons();
        }

        [HttpPost]
        public ResponseObject GetSchoolDropOutMembers([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetSchoolDropOutMembers(KhanaId);
        }

        [HttpPost]
        public ResponseObject CreateMemberEducaton([FromBody] MemberEducationModel memberEducationModel)
        {
            return memberEducationRepository.CreateMemberEducaton(memberEducationModel);
        }

        [HttpPost]
        public ResponseObject DeleteMemberEducation([FromBody] Int64 MemberEducationId)
        {
            return memberEducationRepository.DeleteMemberEducation(MemberEducationId);
        }

        [HttpPost]
        public ResponseObject GetMemberEducationsByKhanaAndQuestionId([FromBody] MemberEducationModel memberEducationModel)
        {
            return memberEducationRepository.GetMemberEducationsByKhanaAndQuestionId(memberEducationModel);
        }

        [HttpPost]
        public ResponseObject GetEducationQuestions()
        {
            return memberEducationRepository.GetEducationQuestions();
        }

        [HttpPost]
        public ResponseObject GetEducationOptionsByQuestionId([FromBody] Int64 EducationQuestionId)
        {
            return memberEducationRepository.GetEducationOptionsByQuestionId(EducationQuestionId);
        }

        [HttpPost]
        public ResponseObject GetAgedEducatonTakenMembers([FromBody] Int64 KhanaId)
        {
            return memberEducationRepository.GetAgedEducatonTakenMembers(KhanaId);
        }
    }
}
