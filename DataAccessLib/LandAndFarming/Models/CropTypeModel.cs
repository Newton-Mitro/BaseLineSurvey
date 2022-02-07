using DataAccessLib.Base;

namespace DataAccessLib.LandAndFarmingSection.Models
{
    public class CropTypeModel : BaseEntity
    {
        public long CropTypeId { get; set; }
        public string CropTypeName { get; set; }
    }
}
