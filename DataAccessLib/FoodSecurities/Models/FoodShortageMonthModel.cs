using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class FoodShortageMonthModel : BaseEntity
    {
        public long FoodShortageMonthId { get; set; }
        public long KhanaId { get; set; }
        public long MonthId { get; set; }
        public string MonthName { get; set; }
        public long InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
    }
}
