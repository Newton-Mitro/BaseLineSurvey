using DataAccessLib.Base;
using DataAccessLib.MemberRiskedProfessions;
using DataAccessLib.MemberRiskedProfessions.Models;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.MemberRiskProfession
{
    public class MemberRiskProfessionController : ApiController
    {
        MemberRiskProfessionRepository memberRiskProfessionRepository;
        public MemberRiskProfessionController()
        {
            memberRiskProfessionRepository = new MemberRiskProfessionRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateMemberSleepingPlace([FromBody] IEnumerable<MemberSleepingPlaceModel> memberSleepingPlaceModels )
        {
            return memberRiskProfessionRepository.CreateOrUpdateMemberSleepingPlace(memberSleepingPlaceModels);
        }

        [HttpPost]
        public ResponseObject GetMembersWhoHasRiskProfessionByKhanaId([FromBody] long KhanaId)
        {
            return memberRiskProfessionRepository.GetMembersWhoHasRiskProfessionByKhanaId(KhanaId);
        }

        [HttpPost]
        public ResponseObject GetMemberSleepingPlacesByKhanaId([FromBody] long KhanaId)
        {
            return memberRiskProfessionRepository.GetMemberSleepingPlacesByKhanaId(KhanaId);
        }


        [HttpPost]
        public ResponseObject GetSleepingPlaces()
        {
            return memberRiskProfessionRepository.GetSleepingPlaces();
        }

        [HttpPost]
        public ResponseObject GetTorturedReasons()
        {
            return memberRiskProfessionRepository.GetTorturedReasons();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateMemberTorturedReason([FromBody] IEnumerable<MemberTorturedReasonModel> memberTorturedReasonModels)
        {
            return memberRiskProfessionRepository.CreateOrUpdateMemberTorturedReason(memberTorturedReasonModels);
        }

        [HttpPost]
        public ResponseObject GetMemberTorturedReasonByKhanaAndMemberId([FromBody] MemberTorturedReasonModel memberTorturedReasonModel)
        {
            return memberRiskProfessionRepository.GetMemberTorturedReasonByKhanaAndMemberId(memberTorturedReasonModel);
        }
    }
}
