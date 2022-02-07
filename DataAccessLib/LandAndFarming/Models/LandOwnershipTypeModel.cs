using DataAccessLib.Base;

namespace DataAccessLib.LandAndFarmingSection.Models
{
    public class LandOwnershipTypeModel : BaseEntity
    {
        public long LandOwnershipTypeId { get; set; }
        public string LandOwnershipTypeName { get; set; }
    }
}
