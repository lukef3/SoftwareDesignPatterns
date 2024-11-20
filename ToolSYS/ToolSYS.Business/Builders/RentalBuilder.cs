using System;
using System.Collections.Generic;
using ToolSYS.Entities;

namespace ToolSYS.Business.Builders
{
    public interface IRentalBuilder
    {
        IRentalBuilder SetRentalID(int rentalID);
        IRentalBuilder SetCustomerID(int customerID);
        IRentalBuilder SetTransactionDate(DateTime date);
        IRentalBuilder SetTotalFee(decimal totalFee);
        IRentalBuilder AddRentalItem(RentalItem rentalItem);
        Rental Build();
   }


    public class RentalBuilder : IRentalBuilder
    {
        private readonly Rental _rental;

        public RentalBuilder()
        {
            _rental = new Rental();
        }

        public IRentalBuilder SetRentalID(int rentalID)
        {
            _rental.rentalID = rentalID;
            return this;
        }

        public IRentalBuilder SetCustomerID(int customerID)
        {
            _rental.customerID = customerID;
            return this;
        }

        public IRentalBuilder SetTransactionDate(DateTime date)
        {
            _rental.transactionDate = date;
            return this;
        }

        public IRentalBuilder SetTotalFee(decimal totalFee)
        {
            _rental.totalFee = totalFee;
            return this;
        }

        public IRentalBuilder AddRentalItem(RentalItem rentalItem)
        {
            if (_rental.RentalItems == null)
                _rental.RentalItems = new List<RentalItem>();

            _rental.RentalItems.Add(rentalItem);
            return this;
        }

        public Rental Build()
        {
            ValidateRental();
            return _rental;
        }

        private void ValidateRental()
        {
            if (_rental.rentalID <= 0)
                throw new ArgumentException("Rental ID must be greater than zero.");

            if (_rental.customerID <= 0)
                throw new ArgumentException("Customer ID must be greater than zero.");

            if (_rental.transactionDate == DateTime.MinValue)
                throw new ArgumentException("Transaction date is invalid.");

            if (_rental.totalFee <= 0)
                throw new ArgumentException("Total fee must be greater than zero.");

            if (_rental.RentalItems == null || _rental.RentalItems.Count == 0)
                throw new ArgumentException("At least one rental item must be added.");
        }
    }
}
