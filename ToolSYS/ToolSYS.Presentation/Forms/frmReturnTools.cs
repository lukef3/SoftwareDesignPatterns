using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmReturnTools : NavForm
    {
        private readonly IRentalService _rentalService;
        public FrmReturnTools(INavigation navigation, IRentalService rentalService) : base(navigation)
        {
            InitializeComponent();
            _rentalService = rentalService;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtRentalID.Text, out int rentalId))
            {
                try
                {
                    DataTable rentalItems = _rentalService.GetRentalItems(rentalId);

                    dgvRentalItems.DataSource = rentalItems;
                    dgvRentalItems.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    dgvRentalItems.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;

                    gbxReturnTool.Visible = true;
                    txtToolID.Focus();
                    gbxRentalID.Enabled = false;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($@"Error: {ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show(@"Rental ID must be a valid number.", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtRentalID.Focus();
            }
        }

        private void btnReturn_Click(object sender, EventArgs e)
        {
            if (int.TryParse(txtRentalID.Text, out int rentalId) && int.TryParse(txtToolID.Text, out int toolId))
            {
                try
                {
                    // Return the tool
                    _rentalService.ReturnTool(rentalId, toolId);

                    MessageBox.Show(@"Tool successfully returned.", @"Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    // Refresh the DataGridView
                    DataTable rentalItems = _rentalService.GetRentalItems(rentalId);

                    dgvRentalItems.DataSource = rentalItems;
                    dgvRentalItems.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                    dgvRentalItems.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;

                    txtToolID.Clear();
                    txtToolID.Focus();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($@"Error: {ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show(@"Please select a valid tool", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtToolID.Focus();
            }
        }

        private void btnFinish_Click(object sender, EventArgs e)
        {
            txtToolID.Clear();
            txtRentalID.Clear();
            gbxReturnTool.Visible = false;
            gbxRentalID.Enabled = true;
        }

        private void dgvRentalItems_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtToolID.Text = dgvRentalItems.Rows[dgvRentalItems.CurrentRow.Index].Cells[0].Value.ToString();
        }
    }
}
