using System.Data;
using ToolSYS.Business.Builders;
using ToolSYS.Business.Services;
using ToolSYS.Entities;

namespace ToolSYS.Business.Facades;

public interface IRentalFacade
{
    DataTable SearchCustomers(string searchTerm);
    DataTable GetCategories();
    DataTable GetRentableTools(string categoryCode, DateTime fromDate, DateTime toDate);
    void StartNewRental(int customerId);
    void AddToolToRental(int toolId, string categoryCode, string description, string manufacturer, DateTime rentDate, DateTime returnDate);
    decimal CalculateTotalFee();
    void ConfirmRental();
    void ResetRental();
    Rental GetCurrentRental();
}

public class RentalFacade : IRentalFacade
{
    private readonly IToolService _toolService;
    private readonly IRateService _rateService;
    private readonly ICustomerService _customerService;
    private readonly IRentalService _rentalService;
    private IRentalBuilder _rentalBuilder;

    public RentalFacade(
        IToolService toolService,
        IRateService rateService,
        ICustomerService customerService,
        IRentalService rentalService)
    {
        _toolService = toolService;
        _rateService = rateService;
        _customerService = customerService;
        _rentalService = rentalService;
    }

    public DataTable SearchCustomers(string searchTerm)
    {
        DataSet customers = _customerService.SearchCustomers(searchTerm);
        return customers.Tables["customer"];
    }

    public DataTable GetCategories()
    {
        DataSet categories = _rateService.GetAllCategories();
        return categories.Tables[0];
    }

    public DataTable GetRentableTools(string categoryCode, DateTime fromDate, DateTime toDate)
    {
        DataSet tools = _toolService.GetRentableTools(categoryCode, fromDate, toDate);
        return tools.Tables["tool"];
    }

    public void StartNewRental(int customerId)
    {
        int rentalId = _rentalService.GetNextRentalId();
        _rentalBuilder = new RentalBuilder()
            .SetRentalId(rentalId)
            .SetCustomerId(customerId)
            .SetTransactionDate(DateTime.Today);
    }

    public void AddToolToRental(int toolId, string categoryCode, string description, string manufacturer, DateTime rentDate, DateTime returnDate)
    {
        if (_rentalBuilder == null)
            throw new InvalidOperationException("Rental has not been started.");

        decimal rentalFee = _rentalService.CalculateRentalFee(
            _rentalBuilder.GetRental().customerId,
            categoryCode,
            rentDate,
            returnDate);

        var rentalItem = new RentalItem
        {
            rentalId = _rentalBuilder.GetRental().rentalId,
            toolId = toolId,
            rentDate = rentDate,
            returnDate = returnDate,
            rentalFee = rentalFee
        };

        _rentalBuilder.AddRentalItem(rentalItem);
    }

    public decimal CalculateTotalFee()
    {
        if (_rentalBuilder == null)
            return 0;

        var rental = _rentalBuilder.GetRental();

        if (rental.rentalItems == null || !rental.rentalItems.Any())
            return 0;

        return rental.rentalItems.Sum(item => item.rentalFee);
    }

    public void ConfirmRental()
    {
        if (_rentalBuilder == null)
            throw new InvalidOperationException("Rental has not been started.");

        var rental = _rentalBuilder
            .SetTotalFee(CalculateTotalFee())
            .Build();

        _rentalService.ConfirmRental(rental);

        _rentalBuilder = null;
    }

    public void ResetRental()
    {
        _rentalBuilder = null;
    }

    public Rental GetCurrentRental()
    {
        return _rentalBuilder.GetRental();
    }
}