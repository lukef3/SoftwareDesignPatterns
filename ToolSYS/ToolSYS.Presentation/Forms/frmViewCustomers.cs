using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmViewCustomers : NavForm
    {
        private CustomerService _customerService;

        public FrmViewCustomers(INavigation navigation) : base(navigation)
        {
            InitializeComponent();
            _customerService = new CustomerService();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                string customerId = txtCustomerID.Text;
                string forename = txtForename.Text;
                string surname = txtSurname.Text;
                string email = txtEmail.Text;
                string phone = txtPhone.Text;
                string eircode = txtEircode.Text;
                string phrase = txtPhrase.Text;

                DataSet results = _customerService.GetFilteredCustomers(customerId, forename, surname, email, phone, eircode, phrase);

                dgvCustomers.DataSource = results.Tables["customer"];
                dgvCustomers.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
                dgvCustomers.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void frmViewCustomers_Load(object sender, EventArgs e)
        {
            this.AcceptButton = btnSearch;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtCustomerID.Clear();
            txtForename.Clear();
            txtSurname.Clear();
            txtEmail.Clear();
            txtPhone.Clear();
            txtEircode.Clear();
            txtPhrase.Clear();
        }
    }
}
