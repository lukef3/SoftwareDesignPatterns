using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using ToolSYS.Business.Services;
using ToolSYS.Data;

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

            //IToolData toolData = new ToolData();
            // Similarly, instantiate other repositories if needed:
            // IRateRepository rateRepository = new RateRepository();
            // IRentalItemRepository rentalItemRepository = new RentalItemData();
            // ...

            // Instantiate services with injected repositories
            //IToolService toolService = new ToolService(toolData);
            // Similarly, instantiate other services if needed:
            // IRateService rateService = new RateService(rateRepository);
            // IRentalService rentalService = new RentalService(rentalItemRepository, customerService);
            // ...

            // Instantiate forms with injected services
            //ToolsForm toolsForm = new ToolsForm(toolService);


            Application.Run(new frmMainMenu());
        }
    }
}
