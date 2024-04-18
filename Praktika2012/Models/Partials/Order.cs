using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Praktika2012.Models
{
    public partial class Order
    {
        public string ConsumableList
        {
            get
            {
                string result = "";
                foreach (var orderConsumable in OrderConsumables)
                {
                    result += orderConsumable.Consumables.Name + ", ";
                }
                return result;
            }
        }

    }
}
