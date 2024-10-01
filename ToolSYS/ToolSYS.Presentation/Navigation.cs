using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS
{
    class Navigation
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
            frmAnnualRevenueAnalysis nextForm = new frmAnnualRevenueAnalysis();
            nextForm.ShowDialog();
            form.Close();
        }

        public static void ToolTypeAnalysis(Form form)
        {
            form.Hide();
            frmAnnualToolTypeAnalysis nextForm = new frmAnnualToolTypeAnalysis();
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
