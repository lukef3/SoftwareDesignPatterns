using ToolSYS.Entities;

namespace ToolSYS.Business.Builders
{
    public interface IRentalBuilder
    {
        IRentalBuilder SetRentalId(int rentalId);
        IRentalBuilder SetCustomerId(int customerId);
        IRentalBuilder SetTransactionDate(DateTime date);
        IRentalBuilder SetTotalFee(decimal totalFee);
        IRentalBuilder AddRentalItem(RentalItem rentalItem);
        Rental Build();
        Rental GetRental();
    }


    public class RentalBuilder : IRentalBuilder
    {
        private readonly Rental _rental;

        public RentalBuilder()
        {
            _rental = new Rental();
        }

        public IRentalBuilder SetRentalId(int rentalId)
        {
            _rental.rentalId = rentalId;
            return this;
        }

        public IRentalBuilder SetCustomerId(int customerId)
        {
            _rental.customerId = customerId;
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
            _rental.rentalItems ??= new List<RentalItem>();
            _rental.rentalItems.Add(rentalItem);
            return this;
        }

        public Rental Build()
        {
            ValidateRental();
            return _rental;
        }

        public Rental GetRental()
        {
            return _rental;
        }

        private void ValidateRental()
        {
            if (_rental.rentalId <= 0)
                throw new ArgumentException("Rental ID must be greater than zero.");

            if (_rental.customerId <= 0)
                throw new ArgumentException("Customer ID must be greater than zero.");

            if (_rental.transactionDate == DateTime.MinValue)
                throw new ArgumentException("Transaction date is invalid.");

            if (_rental.totalFee <= 0)
                throw new ArgumentException("Total fee must be greater than zero.");

            if (_rental.rentalItems == null || !_rental.rentalItems.Any())
                throw new ArgumentException("At least one rental item must be added.");
        }
    }
}
