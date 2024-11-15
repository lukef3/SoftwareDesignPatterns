using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ToolSYS.Business.Services;
using ToolSYS.Entities;

namespace ToolSYS.Presentation
{
    public partial class frmUpdateCustomer : Form
    {
        private CustomerService _customerService;
        public frmUpdateCustomer()
        {
            InitializeComponent();
            _customerService = new CustomerService();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string customerID = txtCustomerID.Text;
                string forename = txtForename.Text;
                string surname = txtSurname.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                string eircode = txtEircode.Text;
                string phrase = txtPhrase.Text;

                DataSet results = _customerService.GetFilteredCustomers(customerID, forename, surname, email, phone, eircode, phrase);

                dgvCustomers.DataSource = results.Tables["customer"];
                dgvCustomers.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvCustomers.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtCustomerID.Clear();
            txtForename.Clear();
            txtSurname.Clear();
            txtEmail.Clear();
            txtPhone.Clear();
            txtEircode.Clear();
            txtPhrase.Clear();
        }

        private void frmUpdateCustomer_Load(object sender, EventArgs e)
        {

        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Customer customer = new Customer {
                    customerID = Convert.ToInt32(txtUpdCustomerID.Text),
                    forename = txtUpdForename.Text,
                    surname = txtUpdSurname.Text,
                    email = txtUpdEmail.Text,
                    phone = txtUpdPhone.Text,
                    eircode = txtUpdEircode.Text
                };

                _customerService.UpdateCustomer(customer);

                MessageBox.Show("Customer has been successfully updated.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtUpdCustomerID.Clear();
                txtUpdForename.Clear();
                txtUpdSurname.Clear();
                txtUpdEmail.Clear();
                txtUpdPhone.Clear();
                txtUpdEircode.Clear();
            }
            catch (Exception ex)
            {
                // Handle unexpected errors
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgvCustomers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtUpdCustomerID.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[0].Value.ToString();
            txtUpdForename.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[1].Value.ToString();
            txtUpdSurname.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[2].Value.ToString();
            txtUpdEmail.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[3].Value.ToString();
            txtUpdPhone.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[4].Value.ToString();
            txtUpdEircode.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[5].Value.ToString();
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
        private void viewCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewCustomers(this);
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
    }
}
