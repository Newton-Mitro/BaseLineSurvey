using DataAccessLib.Base;
using System;

namespace DataAccessLib.KhanaSection.ServiceCenter
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Service Center Table
    /// </summary>
    public class ServiceCenterModel : BaseEntity
    {
        public Int64 ParishesServiceCentersId { get; set; }
        public Int64 ParishId { get; set; }
        public Int64 ServiceCenterId { get; set; }
        public string ServiceCenterName { get; set; }
    }
}
