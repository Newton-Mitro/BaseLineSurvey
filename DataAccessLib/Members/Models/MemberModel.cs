using DataAccessLib.Base;
using System;

namespace DataAccessLib.MemberSection.MemberSection
{
    public class MemberModel : BaseEntity
    {
        public long MemberId { get; set; }
        public long RelationWithFamilyHeadId { get; set; }
        public string MemberName { get; set; }
        public long GenderCode { get; set; }
        public long FirstProfessionCode { get; set; }
        public long SecondProfessionCode { get; set; }
        public long IncomeRelatedWork { get; set; }
        public long MaritalStatusCode { get; set; }
        public long EducationalStatusCode { get; set; }
        public bool CurrentlyStudying { get; set; }
        public long DisabledTypeCode { get; set; }
        public long KhanaId { get; set; }
        public long InformationStatusCode { get; set; }
        public DateTime DateOfBirth { get; set; }

    }
}
