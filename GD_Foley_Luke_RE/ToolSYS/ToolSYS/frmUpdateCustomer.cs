using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS
{
    public partial class frmUpdateCustomer : Form
    {
        public frmUpdateCustomer()
        {
            InitializeComponent();
        }
        Customer customer = new Customer();

        private void btnSearch_Click(object sender, EventArgs e)
        {
            String id = "";

            if (!String.IsNullOrEmpty(txtCustomerID.Text))
            {
                if (Customer.IsValidCustomerID(txtCustomerID.Text, txtCustomerID))
                {
                    id = txtCustomerID.Text;
                }
                else
                {
                    return;
                }
            }
            dgvCustomers.DataSource = Customer.GetFilteredCustomers(id, txtForename.Text, txtSurname.Text, txtEmail.Text, txtPhone.Text, txtEircode.Text, txtPhrase.Text).Tables["customer"];
            dgvCustomers.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvCustomers.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
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
            customer.SetCustomerID(Convert.ToInt32(txtUpdCustomerID.Text));
            if(Customer.IsValidForename(txtUpdForename.Text, txtUpdForename))
            {
                customer.SetForename(txtUpdForename.Text);
                if(Customer.IsValidSurname(txtUpdSurname.Text, txtUpdSurname))
                {
                    customer.SetSurname(txtUpdSurname.Text);
                    if(Customer.IsValidEmail(txtUpdEmail.Text, txtUpdEmail))
                    {
                        customer.SetEmail(txtUpdEmail.Text);
                        if(Customer.IsValidPhone(txtUpdPhone.Text, txtUpdPhone))
                        {
                            customer.SetPhone(txtUpdPhone.Text);
                            if(Customer.IsValidEircode(txtUpdEircode.Text, txtUpdEircode))
                            {
                                customer.SetEircode(txtUpdEircode.Text);
                                customer.UpdateCustomer();
                                MessageBox.Show("Tool Has Been Successfully Updated", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                txtUpdCustomerID.Clear();
                                txtUpdForename.Clear();
                                txtUpdSurname.Clear();
                                txtUpdEmail.Clear();
                                txtUpdPhone.Clear();
                                txtUpdEircode.Clear();
                            }
                        }
                    }

                }
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
