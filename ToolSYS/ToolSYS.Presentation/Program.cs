using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ToolSYS.Business.Facades;
using ToolSYS.Business.Services;
using ToolSYS.Data;
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
            ICustomerService customerService = new CustomerService(customerData);

            IAnalysisData analysisData = new AnalysisData();
            IAnalysisService analysisService = new AnalysisService(analysisData);

            IRentalData rentalData = new RentalData();
            IRentalItemData rentalItemData = new RentalItemData();
            IRentalService rentalService = new RentalService(rentalData, rentalItemData, rateData);

            IRentalFacade rentalFacade = new RentalFacade(toolService, rateService, customerService, rentalService);

            INavigation navigation = new Navigation(toolService, rateService, customerService, analysisService, rentalService, rentalFacade);


            Application.Run(new FrmMainMenu(navigation));
        }
    }
}
