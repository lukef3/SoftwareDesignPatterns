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
    
    public partial class frmAddTool : Form
    {
        public frmAddTool()
        {
            InitializeComponent();
        }

        private void frmAddTool_Load(object sender, EventArgs e)
        {
            txtToolID.Text = Tool.GetNextToolID().ToString("000");

            Rate.LoadCategories(cboCategories);
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if(cboCategories.SelectedIndex >= 0)
            {
                if (Tool.IsValidDescription(txtDescription.Text, txtDescription))
                {
                    if (Tool.IsValidManufacturer(txtManufacturer.Text, txtManufacturer))
                    {
                        Tool tool = new Tool(Convert.ToInt32(txtToolID.Text), cboCategories.Text, txtDescription.Text, txtManufacturer.Text);

                        tool.AddTool();

                        MessageBox.Show("Tool Successfully Added To The System", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        txtDescription.Clear();
                        txtManufacturer.Clear();
                        cboCategories.SelectedIndex = -1;

                        txtToolID.Text = Tool.GetNextToolID().ToString("000");
                    }
                }
            }
            else
            {
                MessageBox.Show("Tool Category Must Be Selected", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                cboCategories.Focus();
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
