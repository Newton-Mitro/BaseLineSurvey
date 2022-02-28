using DataAccessLib.Base;

namespace DataAccessLib.FamilyFishFarmings.Models
{
    public class FamilyFishFarmingModel : BaseEntity
    {
        public long FamilyFishFarmingId { get; set; }
        public long KhanaId { get; set; }
        public bool RelatedWithFishFarming { get; set; }
        public int NumberOfWaterLands { get; set; }
        public float AreaOfWaterLands { get; set; }
    }
}
