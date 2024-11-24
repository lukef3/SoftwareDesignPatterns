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

        public CustomerService(ICustomerData customerData)
        {
            _customerData = customerData;
        }

        public int GetNextCustomerId()
        {
            return _customerData.GetNextCustomerId();
        }

        public void AddCustomer(Customer customer)
        {
            ValidateCustomer(customer);
            _customerData.AddCustomer(customer);
        }

        public void UpdateCustomer(Customer customer)
        {
            ValidateCustomer(customer);
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

        private static void ValidateCustomer(Customer customer)
        {
            if (string.IsNullOrWhiteSpace(customer.forename) || customer.forename.Length > 20)
                throw new ArgumentException("Forename must be between 1 and 20 characters and consist of letters only.");
            if (!customer.forename.All(char.IsLetter))
                throw new ArgumentException("Forename must consist of letters only.");

            if (string.IsNullOrWhiteSpace(customer.surname) || customer.surname.Length > 20)
                throw new ArgumentException("Surname must be between 1 and 20 characters and consist of letters only.");
            if (!customer.surname.All(char.IsLetter))
                throw new ArgumentException("Surname must consist of letters only.");

            Regex emailRegex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            if (!emailRegex.IsMatch(customer.email))
                throw new ArgumentException("Invalid email address.");

            if (!customer.phone.All(char.IsDigit) || customer.phone.Length < 6 || customer.phone.Length > 15)
                throw new ArgumentException("Phone number must be between 6 and 15 digits.");

            Regex eircodeRegex = new Regex(@"^([AC-FHKNPRTV-Y]{1}[0-9]{2}|D6W)[ ]?[0-9AC-FHKNPRTV-Y]{4}$", RegexOptions.IgnoreCase);
            if (!eircodeRegex.IsMatch(customer.eircode))
                throw new ArgumentException("Invalid Eircode.");
        }
    }
}
