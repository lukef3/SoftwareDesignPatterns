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
}