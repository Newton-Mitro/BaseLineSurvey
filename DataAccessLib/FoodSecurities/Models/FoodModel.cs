using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class FoodModel : BaseEntity
    {
        public long FoodId { get; set; }
        public string FoodName { get; set; }
    }
}
