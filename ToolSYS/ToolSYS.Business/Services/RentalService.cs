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
        private readonly RentalItemData _rentalItemData;
        private readonly RateData _rateData;
        private readonly CustomerService _customerService;

        public RentalService()
        {
            _rentalItemData = new RentalItemData();     
            _rateData = new RateData();     
            _customerService = new CustomerService();   
        }

        public static int GetNextRentalID()
        {
            return RentalData.GetNextRentalID();
        }

        public decimal CalculateRentalFee(int customerID, string categoryCode, DateTime rentDate, DateTime returnDate)
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

            foreach (var rentalItem in rental.RentalItems)
            {
                _rentalItemData.AddRentalItem(rentalItem);
            }
        }

        public static DataTable GetRentalItems(int rentalID)
        {
            if (rentalID <= 0)
                throw new ArgumentException("Invalid Rental ID.");

            return RentalData.GetRentalItemsByRentalID(rentalID);
        }

        public static void ReturnTool(int rentalID, int toolID)
        {
            if (rentalID <= 0 || toolID <= 0)
                throw new ArgumentException("Rental ID and Tool ID must be valid numbers.");

            RentalData.ReturnTool(rentalID, toolID);
        }


    }
}
