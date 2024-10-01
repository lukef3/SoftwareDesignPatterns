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
    public partial class frmReturnTools : Form
    {
        public frmReturnTools()
        {
            InitializeComponent();
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if (IsValidRentalID(txtRentalID.Text))
            {
                gbxReturnTool.Visible = true;
                txtToolID.Focus();
                gbxRentalID.Enabled = false;
            }
        }

        private bool IsValidRentalID(string rentId)
        {
            Boolean result = false;
            if (!rentId.Equals("")){
                foreach(char c in rentId)
                {
                    if (!Char.IsDigit(c))
                    {
                        MessageBox.Show("Rental ID Must Be Numeric", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtRentalID.Focus();
                        return false;
                    }
                    result = true;
                }
            }
            else
            {
                MessageBox.Show("Rental ID Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtRentalID.Focus();
                result = false;
            }
            return result;
        }

        private void btnReturn_Click(object sender, EventArgs e)
        {
            if (IsValidToolID(txtToolID.Text))
            {
                MessageBox.Show("Tool Succesfully Returned", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtToolID.Clear();
                txtToolID.Focus();
            }
        }

        private bool IsValidToolID(string toolId)
        {
            Boolean result = false;
            if (!toolId.Equals(""))
            {
                foreach (char c in toolId)
                {
                    if (!Char.IsDigit(c))
                    {
                        MessageBox.Show("Tool ID Must Be Numeric", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtToolID.Focus();
                        return false;
                    }
                    result = true;
                }
            }
            else
            {
                MessageBox.Show("Tool ID Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtToolID.Focus();
                result = false;
            }
            return result;
        }

        private void btnFinish_Click(object sender, EventArgs e)
        {
            txtToolID.Clear();
            txtRentalID.Clear();
            gbxReturnTool.Visible = false;
            gbxRentalID.Enabled = true;
        }

        private void frmReturnTools_Load(object sender, EventArgs e)
        {

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
