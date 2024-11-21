namespace ToolSYS.Entities
{
    public class Rental
    {
        public int rentalId { get; set; }
        public int customerId { get; set; }
        public DateTime transactionDate { get; set; }
        public decimal totalFee { get; set; }
        public List<RentalItem> rentalItems { get; set; }

        public Rental(int rentalId, int customerId, DateTime transactionDate, decimal totalFee)
        {
            this.rentalId = rentalId;
            this.customerId = customerId;
            this.transactionDate = transactionDate;
            this.totalFee = totalFee;
            this.rentalItems = new List<RentalItem>();
        }

        public Rental()
        {
            rentalId = 0;
            customerId = 0;
            transactionDate = DateTime.MinValue;
            totalFee = 0;
            rentalItems = new List<RentalItem>();
        }
    }
}