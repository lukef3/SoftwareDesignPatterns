using FluentValidation;
using ToolSYS.Business.Facades;
using ToolSYS.Business.Services;
using ToolSYS.Business.Validators;
using ToolSYS.Data;
using ToolSYS.Data.UnitOfWork;
using ToolSYS.Entities;
using ToolSYS.Presentation.Forms;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            IToolData toolData = new ToolData();
            IToolService toolService = new ToolService(toolData);

            IRateData rateData = new RateData();
            IRateService rateService = new RateService(rateData);
            
            ICustomerData customerData = new CustomerData();
            IValidator<Customer> customerValidator = new CustomerValidator();
            ICustomerService customerService = new CustomerService(customerData, customerValidator);

            IAnalysisData analysisData = new AnalysisData();
            IAnalysisService analysisService = new AnalysisService(analysisData);

            IUnitOfWork unitOfWork = new UnitOfWork(DbConnect.Oradb);
            IRentalService rentalService = new RentalService(rateData, unitOfWork);

            IRentalFacade rentalFacade = new RentalFacade(toolService, rateService, customerService, rentalService);

            INavigation navigation = new Navigation(toolService, rateService, customerService, analysisService, rentalService, rentalFacade);
            
            Application.Run(new FrmMainMenu(navigation));
        }
    }
}
