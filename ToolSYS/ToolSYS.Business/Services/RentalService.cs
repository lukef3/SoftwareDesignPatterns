using System.Data;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public class RentalService
    {
        private readonly RentalItemData _rentalItemData;
        private readonly RateData _rateData;

        public RentalService()
        {
            _rentalItemData = new RentalItemData();     
            _rateData = new RateData();     
        }

        public static int GetNextRentalId()
        {
            return RentalData.GetNextRentalId();
        }

        public decimal CalculateRentalFee(int customerId, string categoryCode, DateTime rentDate, DateTime returnDate)
        {
            if (rentDate > returnDate)
                throw new ArgumentException("Rent date cannot be later than return date.");

            int daysRented = (returnDate - rentDate).Days + 1;
            Rate rate = _rateData.GetRateByCategoryCode(categoryCode);
            decimal dailyRate = rate.rate;
            decimal fee = dailyRate * daysRented;

            return fee;
        }

        public void ConfirmRental(Rental rental)
        {
            RentalData.AddRental(rental);

            foreach (var rentalItem in rental.rentalItems)
            {
                _rentalItemData.AddRentalItem(rentalItem);
            }
        }

        public static DataTable GetRentalItems(int rentalId)
        {
            if (rentalId <= 0)
                throw new ArgumentException("Invalid Rental ID.");

            return RentalData.GetRentalItemsByRentalId(rentalId);
        }

        public static void ReturnTool(int rentalId, int toolId)
        {
            if (rentalId <= 0 || toolId <= 0)
                throw new ArgumentException("Rental ID and Tool ID must be valid numbers.");

            RentalData.ReturnTool(rentalId, toolId);
        }


    }
}
