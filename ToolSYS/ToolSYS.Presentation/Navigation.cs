using System.Windows.Forms;
using ToolSYS.Business.Services;

namespace ToolSYS.Presentation
{
    /*public interface INavigationService
    {
        void NavigateToSetToolCategory(Form currentForm);
        void NavigateToUpdateRate(Form currentForm);
        void NavigateToAddTool(Form currentForm);
        void NavigateToUpdateTool(Form currentForm);
        void NavigateToRemoveTool(Form currentForm);
        void NavigateToViewTools(Form currentForm);
        void NavigateToRentTools(Form currentForm);
        void NavigateToReturnTools(Form currentForm);
        void NavigateToViewRentals(Form currentForm);
        void NavigateToAddCustomer(Form currentForm);
        void NavigateToUpdateCustomer(Form currentForm);
        void NavigateToViewCustomers(Form currentForm);
        void NavigateToAnalysis(Form currentForm);
        void NavigateToMainMenu(Form currentForm);
    }

    public class NavigationService : INavigationService
    {
        private readonly IToolService _toolService;
        public void NavigateToSetToolCategory(Form form)
        {
            form.Hide();
            frmSetToolCategory nextForm = new frmSetToolCategory(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToUpdateRate(Form form)
        {
            form.Hide();
            frmUpdateToolRate nextForm = new frmUpdateToolRate(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToAddTool(Form form)
        {
            form.Hide();
            frmAddTool nextForm = new frmAddTool(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToUpdateTool(Form form)
        {
            form.Hide();
            frmUpdateTool nextForm = new frmUpdateTool(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToRemoveTool(Form form)
        {
            form.Hide();
            frmRemoveTool nextForm = new frmRemoveTool(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToViewTools(Form form)
        {
            form.Hide();
            frmViewTools nextForm = new frmViewTools(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToRentTools(Form form)
        {
            form.Hide();
            frmRentTools nextForm = new frmRentTools(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToReturnTools(Form form)
        {
            form.Hide();
            frmReturnTools nextForm = new frmReturnTools(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToViewRentals(Form form)
        {
            form.Hide();
            frmViewRentals nextForm = new frmViewRentals(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToAddCustomer(Form form)
        {
            form.Hide();
            frmAddCustomer nextForm = new frmAddCustomer(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToUpdateCustomer(Form form)
        {
            form.Hide();
            frmUpdateCustomer nextForm = new frmUpdateCustomer(this);
            nextForm.ShowDialog();
            form.Close();
        }
        public void NavigateToViewCustomers(Form form)
        {
            form.Hide();
            frmViewCustomers nextForm = new frmViewCustomers(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToAnalysis(Form form)
        {
            form.Hide();
            frmAnalysis nextForm = new frmAnalysis(this);
            nextForm.ShowDialog();
            form.Close();
        }

        public void NavigateToMainMenu(Form form)
        {
            form.Hide();
            frmMainMenu nextForm = new frmMainMenu(this);
            nextForm.ShowDialog();
            form.Close();
        }
    }*/


    static class Navigation
    {
        public static void SetToolCategory(Form form)
        {
            form.Hide();
            frmSetToolCategory nextForm = new frmSetToolCategory();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void UpdateRate(Form form)
        {
            form.Hide();
            frmUpdateToolRate nextForm = new frmUpdateToolRate();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void AddTool(Form form)
        {
            form.Hide();
            frmAddTool nextForm = new frmAddTool();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void UpdateTool(Form form)
        {
            form.Hide();
            frmUpdateTool nextForm = new frmUpdateTool();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void RemoveTool(Form form)
        {
            form.Hide();
            frmRemoveTool nextForm = new frmRemoveTool();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void ViewTools(Form form)
        {
            form.Hide();
            frmViewTools nextForm = new frmViewTools();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void RentTools(Form form)
        {
            form.Hide();
            frmRentTools nextForm = new frmRentTools();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void ReturnTools(Form form)
        {
            form.Hide();
            frmReturnTools nextForm = new frmReturnTools();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void ViewRentals(Form form)
        {
            form.Hide();
            frmViewRentals nextForm = new frmViewRentals();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void AddCustomer(Form form)
        {
            form.Hide();
            frmAddCustomer nextForm = new frmAddCustomer();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void UpdateCustomer(Form form)
        {
            form.Hide();
            frmUpdateCustomer nextForm = new frmUpdateCustomer();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void ViewCustomers(Form form)
        {
            form.Hide();
            frmViewCustomers nextForm = new frmViewCustomers();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void RevenueAnalysis(Form form)
        {
            form.Hide();
            form.Close();
        }

        public static void ToolTypeAnalysis(Form form)
        {
            form.Hide();
            frmAnalysis nextForm = new frmAnalysis();
            nextForm.ShowDialog();
            form.Close();
        }
        public static void MainMenu(Form form)
        {
            form.Hide();
            frmMainMenu nextForm = new frmMainMenu();
            nextForm.ShowDialog();
            form.Close();
        }
    }
}
