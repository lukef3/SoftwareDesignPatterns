using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public class RentalService
    {
        private RentalData _rentalData;
        private RentalItemData _rentalItemData;
        private RateData _rateData;

        public RentalService()
        {
            _rentalData = new RentalData();
            _rentalItemData = new RentalItemData();
            _rateData = new RateData();
        }

        public int GetNextRentalID()
        {
            return _rentalData.GetNextRentalID();
        }

        public decimal CalculateRentalFee(string categoryCode, DateTime rentDate, DateTime returnDate)
        {
            if (rentDate > returnDate)
                throw new Exception("Rent date cannot be later than return date.");

            int daysRented = (returnDate - rentDate).Days + 1;
            Rate rate = _rateData.GetRateByCategoryCode(categoryCode);
            decimal dailyRate = rate.rate;

            return daysRented * dailyRate;
        }

        public void ConfirmRental(Rental rental, List<RentalItem> rentalItems)
        {
            _rentalData.AddRental(rental);

            foreach (var rentalItem in rentalItems)
            {
                _rentalItemData.AddRentalItem(rentalItem);
            }
        }

        public DataTable GetRentalItems(int rentalID)
        {
            if (rentalID <= 0)
                throw new ArgumentException("Invalid Rental ID.");

            return _rentalData.GetRentalItemsByRentalID(rentalID);
        }

        public void ReturnTool(int rentalID, int toolID)
        {
            if (rentalID <= 0 || toolID <= 0)
                throw new ArgumentException("Rental ID and Tool ID must be valid numbers.");

            _rentalData.ReturnTool(rentalID, toolID);
        }


    }
}
