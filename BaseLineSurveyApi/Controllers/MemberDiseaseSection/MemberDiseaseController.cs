using DataAccessLib.Base;
using DataAccessLib.MemberDisease;
using DataAccessLib.MemberDisease.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.MemberDiseaseSection
{
    public class MemberDiseaseController : ApiController
    {
        public MemberDiseaseRepository memberDiseaseRepository;
        public MemberDiseaseController()
        {
            memberDiseaseRepository = new MemberDiseaseRepository();
        }

        [HttpPost]
        public ResponseObject CreateMemberDisease([FromBody] MemberDiseaseModel memberDiseaseModel)
        {
            return memberDiseaseRepository.CreateMemberDisease(memberDiseaseModel);
        }

        [HttpPost]
        public ResponseObject DeleteMemberDiseaseById([FromBody] Int64 MemberDiseasId)
        {
            return memberDiseaseRepository.DeleteMemberDiseaseById(MemberDiseasId);
        }

        [HttpPost]
        public ResponseObject GetMemberDiseasesByKhanaId([FromBody] Int64 KhanaId)
        {
            return memberDiseaseRepository.GetMemberDiseasesByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetDoctorTypes()
        {
            return memberDiseaseRepository.GetDoctorTypes();
        }

        [HttpPost]
        public ResponseObject GetTreatmentCenters()
        {
            return memberDiseaseRepository.GetTreatmentCenters();
        }

        [HttpPost]
        public ResponseObject GetDisease()
        {
            return memberDiseaseRepository.GetDisease();
        }
    }
}
