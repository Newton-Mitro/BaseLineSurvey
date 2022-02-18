using DataAccessLib.Base;

namespace DataAccessLib.MemberRiskedProfessions.Models
{
    public class SleepingPlaceModel : BaseEntity
    {
        public long SleepingPlaceId { get; set; }
        public string SleepingPlaceText { get; set; }
    }
}
