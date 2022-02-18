using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class MonthModel : BaseEntity
    {
        public long MonthId { get; set; }
        public string MonthName { get; set; }
    }
}
