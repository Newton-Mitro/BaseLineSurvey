using DataAccessLib.Base;
using System;

namespace DataAccessLib.ToiletAndWaterSection.ToiletAndWaterOption
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Toilet And Water Option Table
    /// </summary>
    public class ToiletAndWaterOptionModel : BaseEntity
    {
        public Int64 ToiletAndWaterOptionId { get; set; }
        public Int64 QuestionId { get; set; }
       
        public string OptionText { get; set; }
    }
}
