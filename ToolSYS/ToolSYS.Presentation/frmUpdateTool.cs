using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Entities;
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
            cboCategories.Items.Add(""); 
            DataSet categories = _rateService.GetAllCategories(); 

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
                cboUpdCategories.Items.Add(category); 
            }

            cboStatus.Items.Add("");
            cboStatus.Items.Add("I - In");
            cboStatus.Items.Add("O - Out");
            cboStatus.Items.Add("U - Unavailable");

            cboUpdStatus.Items.Add("I - In");
            cboUpdStatus.Items.Add("U - Unavailable");
            this.AcceptButton = btnSearch; 
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string toolID = txtToolID.Text;
                string categoryCode = cboCategories.SelectedItem != null ? cboCategories.SelectedItem.ToString() : string.Empty;
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;
                string status = cboStatus.SelectedItem != null ? cboStatus.SelectedItem.ToString() : string.Empty;
                string phrase = txtPhrase.Text;

                DataSet results = _toolService.GetFilteredTools(toolID, categoryCode, description, manufacturer, status, phrase);

                dgvTools.DataSource = results.Tables["tool"];
                dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                int toolID = Convert.ToInt32(txtToolID.Text);
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;
                string status = cboUpdStatus.SelectedItem.ToString().Substring(0, 1);


                Tool tool = new Tool
                {
                    toolID = toolID,
                    categoryCode = categoryCode,
                    toolDescription = description,
                    toolManufacturer = manufacturer,
                    toolStatus = status
                };

                _toolService.UpdateTool(tool);

                MessageBox.Show("Tool has been successfully updated", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                ClearUpdateInputs();
                btnSearch.PerformClick();
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
