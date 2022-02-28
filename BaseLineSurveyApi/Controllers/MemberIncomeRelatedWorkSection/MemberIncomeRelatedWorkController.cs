using DataAccessLib.Base;
using DataAccessLib.MemberIncomeRelatedWorkSection;
using DataAccessLib.MemberIncomeRelatedWorkSection.Models;
using System.Collections.Generic;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.MemberIncomeRelatedWorkSection
{
    public class MemberIncomeRelatedWorkController : ApiController
    {
        MemberIncomeRelatedWorkRepository memberIncomeRelatedWorkRepository;
        public MemberIncomeRelatedWorkController()
        {
            memberIncomeRelatedWorkRepository = new MemberIncomeRelatedWorkRepository();
        }

        [HttpPost]
        public ResponseObject CreateOrUpdateMemberIncomeRelatedWork([FromBody] IEnumerable<MemberIncomeRelatedWorkModel> memberIncomeRelatedWorkModels)
        {
            return memberIncomeRelatedWorkRepository.CreateOrUpdateMemberIncomeRelatedWork(memberIncomeRelatedWorkModels);
        }

        [HttpPost]
        public ResponseObject GetMemberIncomeRelatedWorkByKhanaAndMemberId([FromBody] MemberIncomeRelatedWorkModel memberIncomeRelatedWorkModel)
        {
            return memberIncomeRelatedWorkRepository.GetMemberIncomeRelatedWorkByKhanaAndMemberId(memberIncomeRelatedWorkModel);
        }
    }
}
