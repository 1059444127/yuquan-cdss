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
    public partial class Subject
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> Age { get; set; }
        public string Role { get; set; }
        public string Title { get; set; }
        public string Specialty { get; set; }
        public string Dept { get; set; }
    
        public virtual Feedback Feedback { get; set; }
    }
    
}
