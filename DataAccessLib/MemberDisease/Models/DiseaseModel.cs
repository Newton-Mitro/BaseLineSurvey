using DataAccessLib.Base;

namespace DataAccessLib.MemberDisease.Models
{
    public class DiseaseModel : BaseEntity
    {
        public long DiseaseCode { get; set; }
        public string DiseaseName { get; set; }
    }
}
