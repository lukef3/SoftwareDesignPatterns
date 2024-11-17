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

namespace ToolSYS.Presentation
{
    public partial class frmReturnTools : Form
    {
        private RentalService _rentalService;
        public frmReturnTools()
        {
            InitializeComponent();
            _rentalService = new RentalService();
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtRentalID.Text, out int rentalID))
            {
                try
                {
                    DataTable rentalItems = RentalService.GetRentalItems(rentalID);

                    dgvRentalItems.DataSource = rentalItems;
                    dgvRentalItems.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    dgvRentalItems.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;

                    gbxReturnTool.Visible = true;
                    txtToolID.Focus();
                    gbxRentalID.Enabled = false;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Rental ID must be a valid number.", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtRentalID.Focus();
            }
        }

        private void btnReturn_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtRentalID.Text, out int rentalID) && int.TryParse(txtToolID.Text, out int toolID))
            {
                try
                {
                    // Return the tool
                    RentalService.ReturnTool(rentalID, toolID);

                    MessageBox.Show("Tool successfully returned.", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    // Refresh the DataGridView
                    DataTable rentalItems = RentalService.GetRentalItems(rentalID);

                    dgvRentalItems.DataSource = rentalItems;
                    dgvRentalItems.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    dgvRentalItems.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;

                    txtToolID.Clear();
                    txtToolID.Focus();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a valid tool", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtToolID.Focus();
            }
        }

        private void btnFinish_Click(object sender, EventArgs e)
        {
            txtToolID.Clear();
            txtRentalID.Clear();
            gbxReturnTool.Visible = false;
            gbxRentalID.Enabled = true;
        }

        private void dgvRentalItems_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtToolID.Text = dgvRentalItems.Rows[dgvRentalItems.CurrentRow.Index].Cells[0].Value.ToString();
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
