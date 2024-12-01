using FluentValidation;
using System.Text.RegularExpressions;
using ToolSYS.Entities;

namespace ToolSYS.Business.Validators
{
    public class CustomerValidator : AbstractValidator<Customer>
    {
        public CustomerValidator()
        {
            RuleFor(c => c.forename)
                .NotEmpty().WithMessage("Forename is required.")
                .MaximumLength(20).WithMessage("Forename cannot exceed 20 characters.")
                .Matches("^[A-Za-z]+$").WithMessage("Forename must consist of letters only.");

            RuleFor(c => c.surname)
                .NotEmpty().WithMessage("Surname is required.")
                .MaximumLength(20).WithMessage("Surname cannot exceed 20 characters.")
                .Matches("^[A-Za-z]+$").WithMessage("Surname must consist of letters only.");

            RuleFor(c => c.email)
                .NotEmpty().WithMessage("Email is required.")
                .Matches(@"^[^@\s]+@[^@\s]+\.[^@\s]+$").WithMessage("Email format is invalid.");
            
            RuleFor(c => c.phone)
                .NotEmpty().WithMessage("Phone number is required.")
                .Length(6, 15).WithMessage("Phone number must be between 6 and 15 digits.")
                .Matches("^[0-9]+$").WithMessage("Phone number must consist of digits only.");

            RuleFor(c => c.eircode)
                .NotEmpty().WithMessage("Eircode is required.")
                .Matches(@"^([AC-FHKNPRTV-Y]{1}[0-9]{2}|D6W)[ ]?[0-9AC-FHKNPRTV-Y]{4}$", RegexOptions.IgnoreCase).WithMessage("Invalid Eircode.");
        }
    }
}
