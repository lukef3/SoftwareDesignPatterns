using System.Data;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public interface IRentalService
    {
        int GetNextRentalId();
        decimal CalculateRentalFee(int customerId, string categoryCode, DateTime rentDate, DateTime returnDate);
        void ConfirmRental(Rental rental);
        DataTable GetRentalItems(int rentalId);
        void ReturnTool(int rentalId, int toolId);
    }
    public class RentalService : IRentalService
    {
        private readonly IRentalData _rentalData;
        private readonly IRentalItemData _rentalItemData;
        private readonly IRateData _rateData;

        public RentalService(IRentalData rentalData, IRentalItemData rentalItemData, IRateData rateData)
        {
            _rentalData = rentalData;
            _rentalItemData = rentalItemData;     
            _rateData = rateData;     
        }

        public int GetNextRentalId()
        {
            return _rentalData.GetNextRentalId();
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
            _rentalData.AddRental(rental);

            foreach (var rentalItem in rental.rentalItems)
            {
                _rentalItemData.AddRentalItem(rentalItem);
            }
        }

        public DataTable GetRentalItems(int rentalId)
        {
            if (rentalId <= 0)
                throw new ArgumentException("Invalid Rental ID.");

            return _rentalData.GetRentalItemsByRentalId(rentalId);
        }

        public void ReturnTool(int rentalId, int toolId)
        {
            if (rentalId <= 0 || toolId <= 0)
                throw new ArgumentException("Rental ID and Tool ID must be valid numbers.");

            _rentalData.ReturnTool(rentalId, toolId);
        }


    }
}
