//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Praktika2012.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderCleaningGroup
    {
        public int Id { get; set; }
        public int IdOrder { get; set; }
        public int IdCleaningGroup { get; set; }
    
        public virtual CleaningGroup CleaningGroup { get; set; }
        public virtual Order Order { get; set; }
    }
}
