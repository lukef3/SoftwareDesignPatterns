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

    public partial class frmAddTool : Form
    {
        private ToolService toolService;
        private RateService rateService;
        public frmAddTool()
        {
            InitializeComponent();
            toolService = new ToolService();
            rateService = new RateService();
        }

        private void frmAddTool_Load(object sender, EventArgs e)
        {
            txtToolID.Text = toolService.GetNextToolID().ToString("000");

            cboCategories.Items.Add("");
            DataSet categories = rateService.GetAllCategories();

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
            }
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                if (cboCategories.SelectedIndex < 0)
                {
                    MessageBox.Show("Tool Category Must Be Selected", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    cboCategories.Focus();
                    return;
                }

                int toolID = Convert.ToInt32(txtToolID.Text);
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;

                Tool tool = new Tool
                {
                    toolID = toolID,
                    categoryCode = categoryCode,
                    toolDescription = description,
                    toolManufacturer = manufacturer
                };

                toolService.AddTool(tool);

                MessageBox.Show("Tool Successfully Added To The System", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                txtDescription.Clear();
                txtManufacturer.Clear();
                cboCategories.SelectedIndex = -1;
                txtToolID.Text = toolService.GetNextToolID().ToString("000");
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
