using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class FoodSecurityModel : BaseEntity
    {
        public long FoodSecuritieId { get; set; }
        public long KhanaId { get; set; }
        public long InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
        public int NumberOfMealYeasterday { get; set; }
        public int DontEatOrHalfEat { get; set; }
    }
}
