using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using ToolSYS.Data;
using ToolSYS.DTOs;

namespace ToolSYS.Business
{
    public class CustomerService
    {
        private readonly CustomerData _customerData;

        public CustomerService()
        {
            _customerData = new CustomerData();
        }

        public int GetNextCustomerID()
        {
            return _customerData.GetNextCustomerID();
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

        public DataSet GetFilteredCustomers(string customerID, string forename, string surname, string email, string phone, string eircode, string phrase)
        {
            return _customerData.GetFilteredCustomers(customerID, forename, surname, email, phone, eircode, phrase);
        }

        private void ValidateCustomer(Customer customer)
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
