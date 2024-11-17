namespace ToolSYS.Entities
{
    // Base Customer class
    public abstract class Customer
    {
        public int customerID { get; set; }
        public string forename { get; set; }
        public string surname { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string eircode { get; set; }

        public abstract decimal ApplyDiscount(decimal baseFee);
    }

    public class RegularCustomer : Customer
    {
        public override decimal ApplyDiscount(decimal baseFee)
        {
            // Regular customers don't receive discounts
            return baseFee;
        }
    }

    public class VipCustomer : Customer
    {
        public int rentalFrequency { get; set; }

        public override decimal ApplyDiscount(decimal baseFee)
        {
            // VIP customers get a discount of 5% per rental up to a maximum of 20%
            int discountPercentage = Math.Min(20, rentalFrequency * 5);
            return baseFee * (1 - discountPercentage / 100m);
        }
    }

}
