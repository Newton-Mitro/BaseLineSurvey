using DataAccessLib.Base;
using DataAccessLib.MemberRiskedProfessions;
using DataAccessLib.MemberRiskedProfessions.Models;
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
        public ResponseObject CreateOrUpdateMemberSleepingPlace([FromBody] MemberSleepingPlaceModel memberSleepingPlaceModel )
        {
            return memberRiskProfessionRepository.CreateOrUpdateMemberSleepingPlace(memberSleepingPlaceModel);
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
        public ResponseObject DeleteMemberSleepingPlace([FromBody] long MemberSleepingPlaceId)
        {
            return memberRiskProfessionRepository.DeleteMemberSleepingPlace(MemberSleepingPlaceId);
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
    }
}
