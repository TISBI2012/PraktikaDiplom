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
    
    public partial class OrderConsumables
    {
        public int Id { get; set; }
        public int IdOrder { get; set; }
        public int IdConsumables { get; set; }
    
        public virtual Consumables Consumables { get; set; }
        public virtual Order Order { get; set; }
    }
}
