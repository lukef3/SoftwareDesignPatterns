using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmUpdateTool : NavForm
    {
        private readonly IToolService _toolService;
        private readonly RateService _rateService;

        public FrmUpdateTool(INavigation navigation, IToolService toolService) : base(navigation)
        {
            InitializeComponent();
            _toolService = toolService;
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
                string toolId = txtToolID.Text;
                string categoryCode = cboCategories.SelectedItem != null ? cboCategories.SelectedItem.ToString() : string.Empty;
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;
                string status = cboStatus.SelectedItem != null ? cboStatus.SelectedItem.ToString() : string.Empty;
                string phrase = txtPhrase.Text;

                DataSet results = _toolService.GetFilteredTools(toolId, categoryCode, description, manufacturer, status, phrase);

                dgvTools.DataSource = results.Tables["tool"];
                dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                int toolId = Convert.ToInt32(txtToolID.Text);
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;
                string status = cboUpdStatus.SelectedItem.ToString().Substring(0, 1);


                Tool tool = new Tool
                {
                    toolId = toolId,
                    categoryCode = categoryCode,
                    toolDescription = description,
                    toolManufacturer = manufacturer,
                    toolStatus = status
                };

                _toolService.UpdateTool(tool);

                MessageBox.Show(@"Tool has been successfully updated", @"Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                ClearUpdateInputs();
                btnSearch.PerformClick();
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"Error: {ex.Message}", @"Update Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
    }
}
