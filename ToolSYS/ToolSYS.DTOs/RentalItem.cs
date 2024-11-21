namespace ToolSYS.Entities
{
    public class RentalItem(int rentallId, int toolId, DateTime rentDate, DateTime returnDate, decimal rentalFee)
    {
        public int rentalId { get; set; } = rentallId;
        public int toolId { get; set; } = toolId;
        public DateTime rentDate { get; set; } = rentDate;
        public DateTime returnDate { get; set; } = returnDate;
        public decimal rentalFee { get; set; } = rentalFee;

        public RentalItem() : this(0, 0, DateTime.MinValue, DateTime.MinValue, 0)
        {
        }
    }
}

