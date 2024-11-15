namespace ToolSYS.Entities
{
    public class Rental
    {
        public int rentalID { get; set; }
        public int customerID { get; set; }
        public DateTime transactionDate {  get; set; }
        public decimal totalFee { get; set; }

        public Rental(int rentalID, int customerID, DateTime transactionDate, decimal totalFee)
        {
            this.rentalID = rentalID;
            this.customerID = customerID;
            this.transactionDate = transactionDate;
            this.totalFee = totalFee;
        }

        public Rental()
        {
            rentalID = 0;
            customerID = 0;
            totalFee = 0;
        }
    }
}
