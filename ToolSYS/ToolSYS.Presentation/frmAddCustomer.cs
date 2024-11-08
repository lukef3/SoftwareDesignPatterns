using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ToolSYS.Business;
using ToolSYS.DTOs;

namespace ToolSYS.Presentation
{
    public partial class frmAddCustomer : Form
    {
        private CustomerService _customerService;
        public frmAddCustomer()
        {
            InitializeComponent();
            _customerService = new CustomerService();
        }

        private void frmAddCustomer_Load(object sender, EventArgs e)
        {
            txtCustomerID.Text = _customerService.GetNextCustomerID().ToString("0000");
        }
        private void SetToolCategoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.SetToolCategory(this);
        }
        private void UpdateToolRateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateRate(this);
        }
        private void AddToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddTool(this);
        }
        private void UpdateToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateTool(this);
        }
        private void RemoveToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RemoveTool(this);
        }
        private void ViewToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewTools(this);
        }
        private void AddCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddCustomer(this);
        }
        private void UpdateCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateCustomer(this);
        }
        private void RentToolToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RentTools(this);
        }
        private void ReturnToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ReturnTools(this);
        }
        private void ViewRentalsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewRentals(this);
        }
        private void AnnualRevenueAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RevenueAnalysis(this);
        }
        private void AnnualToolTypeAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ToolTypeAnalysis(this);
        }
        private void MainMenuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.MainMenu(this);
        }

        private void BtnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Customer customer = new Customer
                {
                    customerID = Convert.ToInt32(txtCustomerID.Text),
                    forename = txtForename.Text,
                    surname = txtSurname.Text,
                    email = txtEmail.Text,
                    phone = txtPhone.Text,
                    eircode = txtEircode.Text
                };

                _customerService.AddCustomer(customer);
                MessageBox.Show("Customer Successfully Added To The System", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCustomerID.Clear();
                txtForename.Clear();
                txtSurname.Clear();
                txtEmail.Clear();
                txtPhone.Clear();
                txtEircode.Clear();
                txtCustomerID.Text = _customerService.GetNextCustomerID().ToString("0000");

            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }


        }

        private void viewCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewCustomers(this);
        }
    }
}
