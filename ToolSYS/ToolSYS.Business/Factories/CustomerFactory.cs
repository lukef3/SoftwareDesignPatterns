using ToolSYS.Entities;

namespace ToolSYS.Business.Factories;

// Factory class for creating Customer objects
public static class CustomerFactory
{
    public static Customer CreateCustomer(int id, string forename, string surname, string email, string phone, string eircode, int rentalFrequency)
    {
        if (rentalFrequency >= 5)
        {
            return new VipCustomer
            {
                customerID = id,
                forename = forename,
                surname = surname,
                email = email,
                phone = phone,
                eircode = eircode,
                rentalFrequency = rentalFrequency
            };
        }

        return new RegularCustomer
        {
            customerID = id,
            forename = forename,
            surname = surname,
            email = email,
            phone = phone,
            eircode = eircode
        };
    }
}

