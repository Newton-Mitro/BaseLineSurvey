using DataAccessLib.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLib.KhanaSection.Race
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Race Table
    /// </summary>
    public class RaceModel : BaseEntity
    {
        public Int64 RaceId { get; set; }
        public string RaceName { get; set; }
    }
}
