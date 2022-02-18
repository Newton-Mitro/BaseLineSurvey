using DataAccessLib.Base;

namespace DataAccessLib.LandAndFarmingSection.Models
{
    public class FamilyLandModel : BaseEntity
    {
        public long FarmingLandId { get; set; }
        public long LandOwnershipTypeId { get; set; }
        public string LandOwnershipTypeName { get; set; }
        public long CropTypeId { get; set; }
        public string CropTypeName { get; set; }
        public long KhanaId { get; set; }
        public decimal LandAmount { get; set; }
        public decimal CropAmount { get; set; }
        public long InformationStatusCode { get; set; }
        public string InformationStatusName { get; set; }
    }
}
