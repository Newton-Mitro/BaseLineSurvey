using DataAccessLib.Base;

namespace DataAccessLib.FoodSecurities.Models
{
    public class YesterdaysFoodModel : BaseEntity
    {
        public long YesterdaysFoodIdId { get; set; }
        public long KhanaId { get; set; }
        public long FoodId { get; set; }
        public string FoodName { get; set; }
        public long InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
    }
}
