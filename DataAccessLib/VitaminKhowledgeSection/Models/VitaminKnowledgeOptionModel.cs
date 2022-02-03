using DataAccessLib.Base;
using System;

namespace DataAccessLib.VitaminKhowledgeSection.VitaminKnowledgeOption
{
    /// <summary>
    /// Developer    : Newton Mitro
    /// Created At   : 29 January 2022
    /// Updated By   : Newton Mitro
    /// Updated At   : 29 January 2022
    /// Description  : Data model for Vitamin Knowledge Option Table
    /// </summary>
    public class VitaminKnowledgeOptionModel : BaseEntity
    {
        public Int64 VitaminKnowledgeOptionId { get; set; }
        public string OptionText { get; set; }
    }
}
