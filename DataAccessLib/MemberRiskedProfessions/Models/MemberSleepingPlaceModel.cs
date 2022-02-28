using DataAccessLib.Base;

namespace DataAccessLib.MemberRiskedProfessions.Models
{
    public class MemberSleepingPlaceModel : BaseEntity
    {
        public long MemberSleepingPlaceId { get; set; }
        public long SleepingPlaceId { get; set; }
        public long KhanaId { get; set; }
        public long MemberId { get; set; }

        public long InformationStatusCode { get; set; }
        
    }
}
