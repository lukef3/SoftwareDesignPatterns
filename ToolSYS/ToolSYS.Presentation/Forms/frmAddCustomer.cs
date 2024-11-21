using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmAddCustomer : NavForm
    {
        private readonly CustomerService _customerService;
        public FrmAddCustomer(INavigation navigation) : base (navigation)
        {
            InitializeComponent();
            _customerService = new CustomerService();
        }

        private void frmAddCustomer_Load(object sender, EventArgs e)
        {
            txtCustomerID.Text = _customerService.GetNextCustomerId().ToString("0000");
        }
        
        private void BtnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Customer customer = new Customer
                {
                    customerId = Convert.ToInt32(txtCustomerID.Text),
                    forename = txtForename.Text,
                    surname = txtSurname.Text,
                    email = txtEmail.Text,
                    phone = txtPhone.Text,
                    eircode = txtEircode.Text
                };

                _customerService.AddCustomer(customer);
                MessageBox.Show(@"Customer Successfully Added To The System", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCustomerID.Clear();
                txtForename.Clear();
                txtSurname.Clear();
                txtEmail.Clear();
                txtPhone.Clear();
                txtEircode.Clear();
                txtCustomerID.Text = _customerService.GetNextCustomerId().ToString("0000");

            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
