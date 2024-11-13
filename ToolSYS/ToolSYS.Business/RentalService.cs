using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using ToolSYS.Data;
using ToolSYS.DTOs;

namespace ToolSYS.Business
{
    public class RentalService
    {
        private readonly RentalData _rentalData;
        private readonly RentalItemData _rentalItemData;
        private readonly RateData _rateData;

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
    }
}
