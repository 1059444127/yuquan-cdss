//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace SanQingShan.Models
{
    public partial class Answer
    {
        public Answer()
        {
            this.Choice = new HashSet<Choice>();
        }
    
        public int Id { get; set; }
        public string FreeText { get; set; }
    
        public virtual Question Question { get; set; }
        public virtual ICollection<Choice> Choice { get; set; }
        public virtual Feedback Feedback { get; set; }
    }
    
}
