using System;
using System.Collections.Generic;

namespace ToolSYS.Entities
{
    public class Rental
    {
        public int rentalID { get; set; }
        public int customerID { get; set; }
        public DateTime transactionDate { get; set; }
        public decimal totalFee { get; set; }
        public List<RentalItem> RentalItems { get; set; }

        public Rental(int rentalID, int customerID, DateTime transactionDate, decimal totalFee)
        {
            this.rentalID = rentalID;
            this.customerID = customerID;
            this.transactionDate = transactionDate;
            this.totalFee = totalFee;
            this.RentalItems = new List<RentalItem>();
        }

        public Rental()
        {
            rentalID = 0;
            customerID = 0;
            transactionDate = DateTime.MinValue;
            totalFee = 0;
            RentalItems = new List<RentalItem>();
        }
    }
}