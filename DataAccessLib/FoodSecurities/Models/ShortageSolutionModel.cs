using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class ShortageSolutionModel : BaseEntity
    {
        public long ShortageSolutionId { get; set; }
        public string SolutionName { get; set; }
    }
}
