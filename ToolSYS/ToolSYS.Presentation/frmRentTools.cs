using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS.Presentation
{
    public partial class frmRentTools : Form
    {
        public frmRentTools()
        {
            InitializeComponent();
        }

        private void frmRentTools_Load(object sender, EventArgs e)
        {
            dtpFrom.MinDate = DateTime.Today;
            dtpTo.MinDate = DateTime.Today;
            txtRentalID.Text = Rental.GetNextRentalID().ToString();
            Rate.LoadCategories(cboCategories);
            dgvRental.Columns.Add("ToolID", "ID");
            dgvRental.Columns.Add("CategoryCode", "Category Code");
            dgvRental.Columns.Add("ToolDescription", "Description");
            dgvRental.Columns.Add("ToolManufacturer", "Manufacturer");
            dgvRental.Columns.Add("RentDate", "Rent Date");
            dgvRental.Columns.Add("ReturnDate", "Return Date");
            dgvRental.Columns.Add("RentalFee", "Rental Fee");
            Miscellaneous.SetDataGridViewProperties(dgvRental);
        }
        private void btnCustomerSearch_Click(object sender, EventArgs e)
        {
            dgvCustomers.DataSource = Customer.SearchCustomers(txtCustomerSearch.Text).Tables["customer"];
            
            dgvCustomers.Columns[0].HeaderText = "ID";
            dgvCustomers.Columns[1].HeaderText = "Forename";
            dgvCustomers.Columns[2].HeaderText = "Surname";
            dgvCustomers.Columns[3].HeaderText = "Email";
            dgvCustomers.Columns[4].HeaderText = "Phone";
            dgvCustomers.Columns[5].HeaderText = "Eircode";
            Miscellaneous.SetDataGridViewProperties(dgvCustomers);

        }
        

        private void dgvCustomers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtCustomerID.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[0].Value.ToString();
            txtForename.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[1].Value.ToString();
            txtSurname.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[2].Value.ToString();
            txtEmail.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[3].Value.ToString();
            txtPhone.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[4].Value.ToString();
            txtEircode.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[5].Value.ToString();
        }

        private void txtCustomerSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == (char)13)
            {
                btnCustomerSearch.PerformClick();
            }
        }

        private void dgvTools_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnAddToRental.PerformClick();
        }

        private void btnAddToRental_Click(object sender, EventArgs e)
        {
            if (dgvTools.SelectedCells.Count == 1)
            {
                String id = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[0].Value.ToString();
                String categoryCode = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[1].Value.ToString();
                String description = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[2].Value.ToString();
                String manufacturer = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[3].Value.ToString();
                String rentDate = String.Format("{0:dd-MMM-yy}", dtpFrom.Value);
                String returnDate = String.Format("{0:dd-MMM-yy}", dtpTo.Value);
                String rentalFee = RentalItem.CalculateRentalFee(categoryCode, dtpFrom.Value, dtpTo.Value).ToString();

                if (dgvRental.Rows.Count >= 1) {
                    foreach (DataGridViewRow row in dgvRental.Rows)
                    {
                        if (row.Cells["ToolID"].Value.ToString() == id)
                        {
                            MessageBox.Show("Tool Has Already Been Added To Rental", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }

                    }
                }

                dgvRental.Rows.Add(id, categoryCode, description, manufacturer, rentDate, returnDate, rentalFee);

                decimal sum = 0;
                foreach (DataGridViewRow row in dgvRental.Rows)
                {
                    if (!row.IsNewRow && row.Cells[6].Value != null)
                    {
                        sum += Convert.ToDecimal(row.Cells[6].Value);
                    }
                }

                txtTotalFee.Text = sum.ToString();
                
            }
            else
            {
                MessageBox.Show("PLease select a Tool", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnConfirmRental_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txtCustomerID.Text))
            {
                if (!String.IsNullOrEmpty(txtTotalFee.Text))
                {
                    Rental rental = new Rental(Convert.ToInt32(txtRentalID.Text), Convert.ToInt32(txtCustomerID.Text), DateTime.Today, Convert.ToDecimal(txtTotalFee.Text));
                    rental.AddRental();

                    RentalItem rentalItem = new RentalItem();
                    foreach (DataGridViewRow row in dgvRental.Rows)
                    {
                        rentalItem.SetRentallID(Convert.ToInt32(txtRentalID.Text));
                        rentalItem.SetToolID(Convert.ToInt32(row.Cells[0].Value.ToString()));
                        rentalItem.SetRentDate(Convert.ToDateTime(row.Cells[4].Value.ToString()));
                        rentalItem.SetReturnDate(Convert.ToDateTime(row.Cells[5].Value.ToString()));
                        rentalItem.SetRentalFee(Convert.ToDecimal(row.Cells[6].Value.ToString()));
                        rentalItem.AddRentalItem();
                        MessageBox.Show("Rental Succesful", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        RefreshForm();

                    }


                }
                else
                    MessageBox.Show("No Tools Have Been Added To The Rental", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
                MessageBox.Show("Customer Must Be Selected", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private void RefreshForm()
        {
            txtCustomerSearch.Clear();
            txtCustomerID.Clear();
            txtForename.Clear();
            txtPhone.Clear();
            txtEmail.Clear();
            txtEircode.Clear();
            txtSurname.Clear();
            txtTotalFee.Clear();
            dgvCustomers.DataSource = null;
            dgvCustomers.Rows.Clear();
            dgvTools.DataSource = null;
            dgvTools.Rows.Clear();
            dgvRental.Rows.Clear();
            cboCategories.SelectedIndex = -1;
            dtpFrom.Value = DateTime.Today;
            dtpTo.Value = DateTime.Today;
        }

        private void cboCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboCategories.SelectedIndex >= 0)
            {
                dgvTools.DataSource = Tool.GetRentableTools(cboCategories.SelectedItem.ToString().Substring(0, 2), dtpFrom, dtpTo).Tables["tool"];

                dgvTools.Columns[0].HeaderText = "ID";
                dgvTools.Columns[1].HeaderText = "Category Code";
                dgvTools.Columns[2].HeaderText = "Description";
                dgvTools.Columns[3].HeaderText = "Manufacturer";
                dgvTools.Columns[4].HeaderText = "Status";
                Miscellaneous.SetDataGridViewProperties(dgvTools);

            }
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
