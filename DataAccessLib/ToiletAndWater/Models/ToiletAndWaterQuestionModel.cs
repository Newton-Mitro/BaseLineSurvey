using DataAccessLib.Base;
using System;

namespace DataAccessLib.ToiletAndWaterSection.ToiletAndWaterQuestion
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Toilet And Water Question Table
    /// </summary>
    public class ToiletAndWaterQuestionModel : BaseEntity
    {
        public Int64 ToiletAndWaterQuestionId { get; set; }
        public Int64 QuestionId { get; set; }
        public bool IsAnswered { get; set; }
        public string QuestionText { get; set; }
    }
}
