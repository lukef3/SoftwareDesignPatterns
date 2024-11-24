using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{

    public partial class FrmAddTool : NavForm
    {
        private readonly IToolService _toolService;
        private readonly IRateService _rateService;
        public FrmAddTool(INavigation navigation, IToolService toolService, IRateService rateService) : base(navigation)
        {
            InitializeComponent();
            _toolService = toolService;
            _rateService = rateService;
        }

        private void frmAddTool_Load(object sender, EventArgs e)
        {
            txtToolID.Text = _toolService.GetNextToolId().ToString("000");

            cboCategories.Items.Add("");
            DataSet categories = _rateService.GetAllCategories();

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
                    MessageBox.Show(@"Tool Category Must Be Selected", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    cboCategories.Focus();
                    return;
                }

                if (string.IsNullOrWhiteSpace(txtToolID.Text) ||
                    string.IsNullOrWhiteSpace(txtDescription.Text) ||
                    string.IsNullOrWhiteSpace(txtManufacturer.Text))
                {
                    MessageBox.Show(@"All fields must be filled.", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (!int.TryParse(txtToolID.Text, out int toolId))
                {
                    MessageBox.Show(@"Tool ID must be a valid number.", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtToolID.Focus();
                    return;
                }

                string? selectedCategory = cboCategories.SelectedItem?.ToString();
                if (selectedCategory == null || selectedCategory.Length < 2)
                {
                    MessageBox.Show(@"Invalid Category Selected", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    cboCategories.Focus();
                    return;
                }

                string categoryCode = selectedCategory[..2];
                string description = txtDescription.Text;
                string manufacturer = txtManufacturer.Text;

                Tool tool = new Tool
                {
                    toolId = toolId,
                    categoryCode = categoryCode,
                    toolDescription = description,
                    toolManufacturer = manufacturer
                };

                _toolService.AddTool(tool);

                MessageBox.Show(@"Tool Successfully Added To The System", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

                txtDescription.Clear();
                txtManufacturer.Clear();
                cboCategories.SelectedIndex = -1;
                txtToolID.Text = _toolService.GetNextToolId().ToString("000");
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"Error: {ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
