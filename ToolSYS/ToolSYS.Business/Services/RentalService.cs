using System.Data;
using ToolSYS.Data;
using ToolSYS.Data.UnitOfWork;
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
        private readonly IRateData _rateData;
        private readonly IUnitOfWork _unitOfWork;

        public RentalService(IRateData rateData, IUnitOfWork unitOfWork)
        {
            _rateData = rateData;     
            _unitOfWork = unitOfWork;
        }

        public int GetNextRentalId()
        {
            return _unitOfWork.Rentals.GetNextRentalId();
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
            try
            {
                _unitOfWork.BeginTransaction();

                _unitOfWork.Rentals.AddRental(rental);

                foreach (var rentalItem in rental.rentalItems)
                {
                    _unitOfWork.RentalItems.AddRentalItem(rentalItem);
                }

                _unitOfWork.Commit();
            }
            catch
            {
                _unitOfWork.Rollback();
                throw;
            }
        }

        public DataTable GetRentalItems(int rentalId)
        {
            if (rentalId <= 0)
                throw new ArgumentException("Invalid Rental ID.");

            return _unitOfWork.Rentals.GetRentalItemsByRentalId(rentalId);
        }

        public void ReturnTool(int rentalId, int toolId)
        {
            if (rentalId <= 0 || toolId <= 0)
                throw new ArgumentException("Rental ID and Tool ID must be valid numbers.");

            _unitOfWork.Rentals.ReturnTool(rentalId, toolId);
        }


    }
}
