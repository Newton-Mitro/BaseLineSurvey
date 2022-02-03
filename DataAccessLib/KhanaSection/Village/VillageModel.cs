using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.Village
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Village Table
    /// </summary>
    public class VillageModel : BaseEntity
    {
        public Int64 ParishesServiceCentersId { get; set; }
        public Int64 VillageId { get; set; }
        public string VillageName { get; set; }
    }
}
