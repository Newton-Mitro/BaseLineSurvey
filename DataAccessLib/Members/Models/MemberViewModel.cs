using DataAccessLib.MemberSection.MemberSection;

namespace DataAccessLib.MemberSection.Models
{
    public class MemberViewModel : MemberModel
    {
        public string RelationWithFamilyHeadName { get; set; }
        public string GenderName { get; set; }
        public string FirstProfessionName { get; set; }
        public string SecondProfessionName { get; set; }
        public string MaritalStatusName { get; set; }
        public string EducationalStatusName { get; set; }
        public string DisabledTypeName { get; set; }
        public string InformationStatusName { get; set; }
    }
}
