using FluentValidation;
using System.Data;
using System.Text.RegularExpressions;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public interface ICustomerService
    {
        int GetNextCustomerId();
        void AddCustomer(Customer customer);
        void UpdateCustomer(Customer customer);
        DataSet SearchCustomers(string searchPhrase);
        DataSet GetFilteredCustomers(string customerId, string forename, string surname, string email, string phone, string eircode, string phrase);
    }

    public class CustomerService : ICustomerService
    {
        private readonly ICustomerData _customerData;
        private readonly IValidator<Customer> _customerValidator;

        public CustomerService(ICustomerData customerData, IValidator<Customer> customerValidator)
        {
            _customerData = customerData;
            _customerValidator = customerValidator;
        }

        public int GetNextCustomerId()
        {
            return _customerData.GetNextCustomerId();
        }

        public void AddCustomer(Customer customer)
        {
            var validationResult = _customerValidator.Validate(customer);

            if (!validationResult.IsValid)
            {
                var errors = string.Join("\n", validationResult.Errors.Select(e => e.ErrorMessage));
                throw new ValidationException(errors);
            }

            _customerData.AddCustomer(customer);
        }

        public void UpdateCustomer(Customer customer)
        {
            var validationResult = _customerValidator.Validate(customer);

            if (!validationResult.IsValid)
            {
                var errors = string.Join("\n", validationResult.Errors.Select(e => e.ErrorMessage));
                throw new ValidationException(errors);
            }

            _customerData.UpdateCustomer(customer);
        }

        public DataSet SearchCustomers(string searchPhrase)
        {
            return _customerData.SearchCustomers(searchPhrase);
        }

        public DataSet GetFilteredCustomers(string customerId, string forename, string surname, string email, string phone, string eircode, string phrase)
        {
            return _customerData.GetFilteredCustomers(customerId, forename, surname, email, phone, eircode, phrase);
        }
    }
}
