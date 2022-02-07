using DataAccessLib.Base;
using System;

namespace DataAccessLib.MemberSection.EducationStatusSection
{
    public class EducationStatusModel : BaseEntity
    {
        public Int64 EducationalStatusCode { get; set; }
        public string EducationName { get; set; }
    }
}
