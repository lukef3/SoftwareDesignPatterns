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

namespace ToolSYS.Presentation
{
    public partial class frmViewTools : Form
    {
        private ToolService _toolService;

        public frmViewTools()
        {
            InitializeComponent();
            _toolService = new ToolService();
        }

        private void frmViewTools_Load(object sender, EventArgs e)
        {
            cboCategories.Items.Add("");
            Rate.LoadCategories(cboCategories);

            cboStatus.Items.Add("");
            cboStatus.Items.Add("I - In");
            cboStatus.Items.Add("O - Out");
            cboStatus.Items.Add("U - Unavailable");
            this.AcceptButton = btnSearch;          //https://social.msdn.microsoft.com/Forums/vstudio/en-US/0a5e3852-af4e-44ed-bef0-30ab02224a20/press-enter-key-instead-of-clicking-on-a-button?forum=csharpgeneral
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string toolID = _toolService.IsValidToolID(txtToolID.Text) ? txtToolID.Text : null;
                string categoryCode = cboCategories.SelectedIndex > -1 ? cboCategories.SelectedItem.ToString() : null;
                string status = cboStatus.SelectedIndex > -1 ? cboStatus.SelectedItem.ToString() : null;

                if (toolID == null && !string.IsNullOrEmpty(txtToolID.Text))
                {
                    // Invalid ToolID; Tool.IsValidToolID already shows an error message
                    return;
                }

                RefreshGridView(toolID, categoryCode, status);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void RefreshGridView(string toolID, string categoryCode, string status)
        {
            try
            {
                var filteredTools = _toolService.GetFilteredTools(
                    toolID,
                    categoryCode,
                    txtDescription.Text,
                    txtManufacturer.Text,
                    status,
                    txtPhrase.Text);

                dgvTools.DataSource = filteredTools.Tables["tool"];
                dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while refreshing the grid: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtToolID.Clear();
            cboCategories.SelectedIndex = -1;
            txtDescription.Clear();
            txtManufacturer.Clear();
            cboStatus.SelectedIndex = -1;
            txtPhrase.Clear();
        }
    }
}
