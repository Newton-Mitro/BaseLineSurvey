using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class RunFamilyWhenShortageModel : BaseEntity
    {
        public long RunFamilyWhenShortId { get; set; }
        public long KhanaId { get; set; }
        public long ShortageSolutionId { get; set; }
        public string SolutionName { get; set; }
        public long InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
    }
}
