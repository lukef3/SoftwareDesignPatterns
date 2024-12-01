using System.Windows.Forms;
using ToolSYS.Business.Facades;
using ToolSYS.Business.Services;
using ToolSYS.Presentation.Forms;

namespace ToolSYS.Presentation.Nav
{
    public interface INavigation
    {
        void NavigateToSetToolCategory(Form form);
        void NavigateToUpdateRate(Form form);
        void NavigateToAddTool(Form form);
        void NavigateToUpdateTool(Form form);
        void NavigateToRemoveTool(Form form);
        void NavigateToViewTools(Form form);
        void NavigateToRentTools(Form form);
        void NavigateToReturnTools(Form form);
        void NavigateToViewRentals(Form form);
        void NavigateToAddCustomer(Form form);
        void NavigateToUpdateCustomer(Form form);
        void NavigateToViewCustomers(Form form);
        void NavigateToAnalysis(Form form);
        void NavigateToMainMenu(Form form);
    }

    public class Navigation : INavigation
    {
        private readonly IToolService _toolService;
        private readonly IRateService _rateService;
        private readonly ICustomerService _customerService;
        private readonly IAnalysisService _analysisService;
        private readonly IRentalService _rentalService;
        private readonly IRentalFacade _rentalFacade;

        public Navigation(IToolService toolService, IRateService rateService, ICustomerService customerService, IAnalysisService analysisService, IRentalService rentalService, IRentalFacade rentalFacade)
        {
            _toolService = toolService;
            _rateService = rateService;
            _customerService = customerService;
            _analysisService = analysisService;
            _rentalService = rentalService;
            _rentalFacade = rentalFacade;
        }

        public void NavigateToSetToolCategory(Form form)
        {
            form.Hide();
            FrmSetToolCategory nextForm = new FrmSetToolCategory(this, _rateService);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToUpdateRate(Form form)
        {
            form.Hide();
            FrmUpdateToolRate nextForm = new FrmUpdateToolRate(this, _rateService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToAddTool(Form form)
        {
            form.Hide();
            FrmAddTool nextForm = new FrmAddTool(this, _toolService, _rateService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToUpdateTool(Form form)
        {
            form.Hide();
            FrmUpdateTool nextForm = new FrmUpdateTool(this, _toolService, _rateService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToRemoveTool(Form form)
        {
            form.Hide();
            FrmRemoveTool nextForm = new FrmRemoveTool(this, _toolService);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToViewTools(Form form)
        {
            form.Hide();
            FrmViewTools nextForm = new FrmViewTools(this, _toolService, _rateService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToRentTools(Form form)
        {
            form.Hide();
            FrmRentTools nextForm = new FrmRentTools(this, _rentalFacade);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToReturnTools(Form form)
        {
            form.Hide();
            FrmReturnTools nextForm = new FrmReturnTools(this, _rentalService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToViewRentals(Form form)
        {
            form.Hide();
            FrmViewRentals nextForm = new FrmViewRentals(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToAddCustomer(Form form)
        {
            form.Hide();
            FrmAddCustomer nextForm = new FrmAddCustomer(this, _customerService);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToUpdateCustomer(Form form)
        {
            form.Hide();
            FrmUpdateCustomer nextForm = new FrmUpdateCustomer(this, _customerService);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToViewCustomers(Form form)
        {
            form.Hide();
            FrmViewCustomers nextForm = new FrmViewCustomers(this, _customerService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToAnalysis(Form form)
        {
            form.Hide();
            FrmAnalysis nextForm = new FrmAnalysis(this, _analysisService);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToMainMenu(Form form)
        {
            form.Hide();
            FrmMainMenu nextForm = new FrmMainMenu(this);
            nextForm.ShowDialog();
            form.Close();
        }
    }
}
