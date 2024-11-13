using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToolSYS.DTOs
{
    public class RentalItem
    {
        public int rentalID { get; set; }
        public int toolID { get; set; }
        public DateTime rentDate { get; set; }
        public DateTime returnDate { get; set; }
        public decimal rentalFee { get; set; }

        public RentalItem(int rentallID, int toolID, DateTime rentDate, DateTime returnDate, decimal rentalFee)
        {
            this.rentalID = rentallID;
            this.toolID = toolID;
            this.rentDate = rentDate;
            this.returnDate = returnDate;
            this.rentalFee = rentalFee;
        }

        public RentalItem()
        {
            this.rentalID = 0;
            this.toolID = 0;
            this.rentDate = DateTime.MinValue;
            this.returnDate = DateTime.MinValue;
            this.rentalFee = 0;
        }
    }
}

