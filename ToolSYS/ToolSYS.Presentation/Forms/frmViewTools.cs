using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmViewTools : NavForm
    {
        private readonly IToolService _toolService;
        private readonly IRateService _rateService;

        public FrmViewTools(INavigation navigation, IToolService toolService, IRateService rateService) : base(navigation)
        {
            InitializeComponent();
            _toolService = toolService;
            _rateService = rateService;
        }

        private void frmViewTools_Load(object sender, EventArgs e)
        {
            cboCategories.Items.Add("");
            cboCategories.Items.Add("");
            DataSet categories = _rateService.GetAllCategories();

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
            }

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
