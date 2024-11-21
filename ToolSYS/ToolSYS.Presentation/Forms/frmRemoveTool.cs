using ToolSYS.Business.Services;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmRemoveTool : NavForm
    {
        private readonly IToolService _toolService;
        public FrmRemoveTool(INavigation navigation, IToolService toolService) : base(navigation)
        {
            InitializeComponent();
            _toolService = toolService;
        }

        private void frmRemoveTool_Load(object sender, EventArgs e)
        {
            RefreshGridView();
            this.AcceptButton = btnConfirm;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            DialogResult confirmRemove = MessageBox.Show(@"Are you sure you want to remove this tool?", @"Confirm", MessageBoxButtons.YesNo);

            if (confirmRemove == DialogResult.Yes)
            {
                try
                {
                    _toolService.RemoveTool(Convert.ToInt32(txtToolID.Text));
                    MessageBox.Show(@"Tool Successfully Removed", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtToolID.Clear();
                    RefreshGridView();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void RefreshGridView()
        {
            dgvTools.DataSource = _toolService.GetAvailableTools().Tables["tool"];
            dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
        }

        private void dgvTools_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvTools.CurrentRow != null) txtToolID.Text = dgvTools.CurrentRow.Cells[0].Value.ToString();
        }


        private void dgvTools_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvTools.CurrentRow != null)
            {
                DialogResult confirmRemove = MessageBox.Show(@"Are you sure you want to remove this tool?", @"Confirm", MessageBoxButtons.YesNo);

                if (confirmRemove == DialogResult.Yes)
                {
                    try
                    {
                        var cellValue = dgvTools.CurrentRow.Cells[0].Value;

                        if (cellValue == null || string.IsNullOrEmpty(cellValue.ToString()))
                        {
                            MessageBox.Show(@"Tool ID is missing or invalid.", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }

                        int toolId = int.Parse(cellValue.ToString());
                        _toolService.RemoveTool(toolId);

                        MessageBox.Show(@"Tool Successfully Removed", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        RefreshGridView();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($@"Error: {ex.Message}", @"Remove Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
    }
}
