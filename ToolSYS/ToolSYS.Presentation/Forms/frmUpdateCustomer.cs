using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmUpdateCustomer : NavForm
    {
        private readonly ICustomerService _customerService;
        public FrmUpdateCustomer(INavigation navigation, ICustomerService customerService) : base(navigation)
        {
            InitializeComponent();
            _customerService = customerService;
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

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Customer customer = new Customer {
                    customerId = Convert.ToInt32(txtUpdCustomerID.Text),
                    forename = txtUpdForename.Text,
                    surname = txtUpdSurname.Text,
                    email = txtUpdEmail.Text,
                    phone = txtUpdPhone.Text,
                    eircode = txtUpdEircode.Text
                };

                _customerService.UpdateCustomer(customer);

                MessageBox.Show(@"Customer has been successfully updated.", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtUpdCustomerID.Clear();
                txtUpdForename.Clear();
                txtUpdSurname.Clear();
                txtUpdEmail.Clear();
                txtUpdPhone.Clear();
                txtUpdEircode.Clear();
            }
            catch (Exception ex)
            {
                // Handle unexpected errors
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgvCustomers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtUpdCustomerID.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[0].Value.ToString();
            txtUpdForename.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[1].Value.ToString();
            txtUpdSurname.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[2].Value.ToString();
            txtUpdEmail.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[3].Value.ToString();
            txtUpdPhone.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[4].Value.ToString();
            txtUpdEircode.Text = dgvCustomers.Rows[dgvCustomers.CurrentRow.Index].Cells[5].Value.ToString();
        }
    }
}
