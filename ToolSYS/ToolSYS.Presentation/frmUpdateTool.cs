using System.Data;
using ToolSYS.Business;
using ToolSYS.DTOs;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace ToolSYS.Presentation
{
    public partial class frmUpdateTool : Form
    {
        private readonly ToolService _toolService;
        private readonly RateService _rateService;

        public frmUpdateTool()
        {
            InitializeComponent();
            _toolService = new ToolService();
            _rateService = new RateService();
        }

        private void frmUpdateTool_Load(object sender, EventArgs e)
        {
            cboCategories.Items.Add(""); // Add empty entry
            DataSet categories = _rateService.GetAllCategories(); // Load categories from service

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
                cboUpdCategories.Items.Add(category); // Add to both ComboBoxes
            }

            cboStatus.Items.Add("");
            cboStatus.Items.Add("I - In");
            cboStatus.Items.Add("O - Out");
            cboStatus.Items.Add("U - Unavailable");

            cboUpdStatus.Items.Add("I - In");
            cboUpdStatus.Items.Add("U - Unavailable");
            this.AcceptButton = btnSearch; // Allow Enter key to trigger Search
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

        private void dgvTools_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvTools.CurrentRow != null)
            {
                txtUpdToolID.Text = dgvTools.CurrentRow.Cells[0].Value.ToString();

                string categoryCode = dgvTools.CurrentRow.Cells[1].Value.ToString();
                cboUpdCategories.SelectedItem = cboUpdCategories.Items.Cast<string>()
                    .FirstOrDefault(item => item.StartsWith(categoryCode));

                txtUpdDescription.Text = dgvTools.CurrentRow.Cells[2].Value.ToString();
                txtUpdManufacturer.Text = dgvTools.CurrentRow.Cells[3].Value.ToString();

                string status = dgvTools.CurrentRow.Cells[4].Value.ToString();
                cboUpdStatus.SelectedItem = cboUpdStatus.Items.Cast<string>()
                    .FirstOrDefault(item => item.StartsWith(status));
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                 // Validate and create ToolDTO
                var tool = new DTOs.Tool
                {
                    toolID = int.Parse(txtUpdToolID.Text),
                    categoryCode = cboUpdCategories.SelectedItem.ToString().Substring(0, 2),
                    toolDescription = txtUpdDescription.Text,
                    toolManufacturer = txtUpdManufacturer.Text,
                    toolStatus = cboUpdStatus.SelectedItem.ToString().Substring(0, 1)
                };

                _toolService.UpdateTool(tool); // Update tool using service
                MessageBox.Show("Tool has been successfully updated", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // Clear inputs
                ClearUpdateInputs();
                btnSearch.PerformClick(); // Refresh grid
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}", "Update Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void ClearUpdateInputs()
        {
            txtUpdToolID.Clear();
            txtUpdDescription.Clear();
            txtUpdManufacturer.Clear();
            cboUpdCategories.SelectedIndex = -1;
            cboUpdStatus.SelectedIndex = -1;
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
