using DataAccessLib.Base;
using DataAccessLib.MemberSection.MemberSection;
using DataAccessLib.MemberSection.Models;
using System;
using System.Web.Http;

namespace BaseLineSurveyApi.Controllers.MemberSection
{
    public class MemberController : ApiController
    {
        public MemberRepository MemberRepository;
        public MemberController()
        {
            MemberRepository = new MemberRepository();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for insert member's information to member table
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject CreateMember([FromBody] MemberModel member)
        {
            return MemberRepository.CreateMember(member);
        }

        //-- =========================================================================
        //-- Author       : Raven Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for update member to member table
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject UpdateMember([FromBody] MemberModel member)
        {
            return MemberRepository.UpdateMember(member);
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting members by khana id
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetMembersByKhanaId([FromBody] Int64 KhanaId)
        {
            return MemberRepository.GetMembersByKhanaId(KhanaId);
        }


        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all disable types
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetDisableTypes()
        {
            return MemberRepository.GetDisableTypes();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all education statuses
        //-- Version      : 1.0
        //-- ============================================================================
        [HttpPost]
        public ResponseObject GetEducationStatuses()
        {
            return MemberRepository.GetEducationStatuses();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all genders
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetGenders()
        {
            return MemberRepository.GetGenders();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all marital statuses
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetMaritalStatuses()
        {
            return MemberRepository.GetMaritalStatuses();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all professions
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetProfessions()
        {
            return MemberRepository.GetProfessions();
        }

        //-- =========================================================================
        //-- Author       : Raven Mark Quiah
        //-- Create Date  : February 01, 2022
        //-- Updated By   : 
        //-- Updated Date : 
        //-- Description  : Function for getting all relationships
        //-- Version      : 1.0
        //-- ============================================================================

        [HttpPost]
        public ResponseObject GetRelationships()
        {
            return MemberRepository.GetRelationships();
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 03 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 03 February 2022
        /// Description  : Function for Get Family Members By  
        /// </summary>
        /// <param name="memberSearchModel"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseObject GetFamilyMembersByAge([FromBody] MemberSearchModel memberSearchModel)
        {
            return MemberRepository.GetFamilyMembersByAge(memberSearchModel);
        }

        /// <summary>
        /// Developer    : Newton Mitro
        /// Created At   : 09 February 2022
        /// Updated By   : Newton Mitro
        /// Updated At   : 09 February 2022
        /// Description  : Function for Get Family Members Between Age
        /// </summary>
        /// <param name="memberSearchModel"></param>
        /// <returns></returns>
        [HttpPost]
        public ResponseObject GetFamilyMembersBetweenAge([FromBody] MemberSearchModel memberSearchModel)
        {
            return MemberRepository.GetFamilyMembersBetweenAge(memberSearchModel);
        }
    }
}