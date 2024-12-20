﻿using System.Data;
using ToolSYS.Business.Facades;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmRentTools : NavForm
    {
        /*private readonly IToolService _toolService;
        private readonly IRateService _rateService;
        private readonly ICustomerService _customerService;
        private readonly IRentalService _rentalService;*/

        private readonly IRentalFacade _rentalFacade;
        public FrmRentTools(INavigation navigation, IRentalFacade rentalFacade) : base(navigation)
        {
            InitializeComponent();
            _rentalFacade = rentalFacade;

            /*_toolService = toolService;
            _rateService = rateService;
            _customerService = customerService;
            _rentalService = rentalService;*/
        }

        private void frmRentTools_Load(object sender, EventArgs e)
        {
            dtpFrom.MinDate = DateTime.Today;
            dtpTo.MinDate = DateTime.Today;
            txtRentalID.Text = "";
            cboCategories.Items.Add("");
            DataTable categories = _rentalFacade.GetCategories();

            foreach (DataRow row in categories.Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
            }
            dgvRental.Columns.Add("ToolID", "ID");
            dgvRental.Columns.Add("CategoryCode", "Category Code");
            dgvRental.Columns.Add("ToolDescription", "Description");
            dgvRental.Columns.Add("ToolManufacturer", "Manufacturer");
            dgvRental.Columns.Add("RentDate", "Rent Date");
            dgvRental.Columns.Add("ReturnDate", "Return Date");
            dgvRental.Columns.Add("RentalFee", "Rental Fee");
            Miscellaneous.SetDataGridViewProperties(dgvRental);
        }
        private void btnCustomerSearch_Click(object sender, EventArgs e)
        {
            dgvCustomers.DataSource = _rentalFacade.SearchCustomers(txtCustomerSearch.Text);
            
            dgvCustomers.Columns[0].HeaderText = @"ID";
            dgvCustomers.Columns[1].HeaderText = @"Forename";
            dgvCustomers.Columns[2].HeaderText = @"Surname";
            dgvCustomers.Columns[3].HeaderText = @"Email";
            dgvCustomers.Columns[4].HeaderText = @"Phone";
            dgvCustomers.Columns[5].HeaderText = @"Eircode";
            Miscellaneous.SetDataGridViewProperties(dgvCustomers);
        }
        

        private void dgvCustomers_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvCustomers.CurrentRow != null)
            {
                int customerId = Convert.ToInt32(dgvCustomers.CurrentRow.Cells[0].Value);
                _rentalFacade.StartNewRental(customerId);

                txtRentalID.Text = _rentalFacade.GetCurrentRental().rentalId.ToString("000");
                txtCustomerID.Text = dgvCustomers.CurrentRow.Cells[0].Value.ToString();
                txtForename.Text = dgvCustomers.CurrentRow.Cells[1].Value.ToString();
                txtSurname.Text = dgvCustomers.CurrentRow.Cells[2].Value.ToString();
                txtEmail.Text = dgvCustomers.CurrentRow.Cells[3].Value.ToString();
                txtPhone.Text = dgvCustomers.CurrentRow.Cells[4].Value.ToString();
                txtEircode.Text = dgvCustomers.CurrentRow.Cells[5].Value.ToString();
            }
        }

        private void txtCustomerSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            if(e.KeyChar == (char)13)
            {
                btnCustomerSearch.PerformClick();
            }
        }

        private void dgvTools_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnAddToRental.PerformClick();
        }

        private void btnAddToRental_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(txtCustomerID.Text))
                    throw new ArgumentException("Please select a customer.");
                  
                int customerId = Convert.ToInt32(txtCustomerID.Text);
                if (dgvTools.CurrentRow != null)
                {
                    int toolId = Convert.ToInt32(dgvTools.CurrentRow.Cells[0].Value);
                    string categoryCode = dgvTools.CurrentRow.Cells[1].Value.ToString() ?? throw new ArgumentException("Category Code is missing.");
                    string description = dgvTools.CurrentRow.Cells[2].Value.ToString() ?? throw new ArgumentException("Description is missing.");
                    string manufacturer = dgvTools.CurrentRow.Cells[3].Value.ToString() ?? throw new ArgumentException("Manufacturer is missing.");
                    DateTime rentDate = dtpFrom.Value;
                    DateTime returnDate = dtpTo.Value;

                    if (dgvRental.Rows.Count >= 1)
                    {
                        foreach (DataGridViewRow row in dgvRental.Rows)
                        {
                            if (Convert.ToInt32(dgvTools.CurrentRow.Cells["ID"].Value) == toolId)
                            {
                                MessageBox.Show(@"Tool Has Already Been Added To Rental", @"Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                return;
                            }
                        }
                    }

                    _rentalFacade.AddToolToRental(toolId, categoryCode, description, manufacturer, rentDate, returnDate);

                    decimal rentalFee = _rentalFacade.GetCurrentRental().rentalItems
                        .First(item => item.toolId == toolId).rentalFee;

                    dgvRental.Rows.Add(
                        toolId,
                        categoryCode,
                        description,
                        manufacturer,
                        rentDate.ToString("dd-MMM-yy"),
                        returnDate.ToString("dd-MMM-yy"),
                        rentalFee.ToString("0.00")
                    );
                }
                else
                {
                    throw new ArgumentException("Please select a tool.");
                }

                UpdateTotalFee();
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void UpdateTotalFee()
        {
            txtTotalFee.Text = dgvRental.Rows.Cast<DataGridViewRow>()
                                .Sum(row => Convert.ToDecimal(row.Cells["RentalFee"].Value))
                                .ToString("0.00");
        }

        private void btnConfirmRental_Click(object sender, EventArgs e)
        {
            try
            {
                _rentalFacade.ConfirmRental();

                /*if (string.IsNullOrEmpty(txtCustomerID.Text))
                    throw new ArgumentException("Please select a customer.");

                if (dgvRental.Rows.Count == 0)
                    throw new ArgumentException("No tools have been added to the rental.");

                var rentalBuilder = new RentalBuilder()
                    .SetRentalId(Convert.ToInt32(txtRentalID.Text))
                    .SetCustomerId(Convert.ToInt32(txtCustomerID.Text))
                    .SetTransactionDate(DateTime.Today)
                    .SetTotalFee(Convert.ToDecimal(txtTotalFee.Text));

                foreach (DataGridViewRow row in dgvRental.Rows)
                {
                    var rentDateValue = row.Cells["RentDate"].Value?.ToString();
                    var returnDateValue = row.Cells["ReturnDate"].Value?.ToString();

                    if (string.IsNullOrEmpty(rentDateValue))
                        throw new ArgumentException("Rent date is missing for one of the tools.");
                    if (string.IsNullOrEmpty(returnDateValue))
                        throw new ArgumentException("Return date is missing for one of the tools.");

                    RentalItem rentalItem = new()
                    {
                        rentalId = Convert.ToInt32(txtRentalID.Text),
                        toolId = Convert.ToInt32(row.Cells["ToolID"].Value ?? throw new ArgumentException("Tool ID is missing.")),
                        rentDate = DateTime.Parse(rentDateValue),
                        returnDate = DateTime.Parse(returnDateValue),
                        rentalFee = Convert.ToDecimal(row.Cells["RentalFee"].Value ?? throw new ArgumentException("Rental fee is missing."))
                    };

                    rentalBuilder.AddRentalItem(rentalItem);
                }

                Rental rental = rentalBuilder.Build();

                _rentalService.ConfirmRental(rental);
                */
                MessageBox.Show(@"Rental Successful", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                RefreshForm();
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void RefreshForm()
        {
            cboCategories.SelectedIndexChanged -= cboCategories_SelectedIndexChanged!;
            txtRentalID.Text = "";
            txtCustomerSearch.Clear();
            txtCustomerID.Clear();
            txtForename.Clear();
            txtPhone.Clear();
            txtEmail.Clear();
            txtEircode.Clear();
            txtSurname.Clear();
            txtTotalFee.Clear();
            dgvCustomers.DataSource = null;
            dgvCustomers.Rows.Clear();
            dgvTools.DataSource = null;
            dgvTools.Rows.Clear();
            dgvRental.Rows.Clear();
            cboCategories.SelectedIndex = -1;
            dtpFrom.Value = DateTime.Today;
            dtpTo.Value = DateTime.Today;
            cboCategories.SelectedIndexChanged += cboCategories_SelectedIndexChanged!;
        }

        private void cboCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboCategories.SelectedIndex >= 1 && cboCategories.SelectedItem != null)
            {
                string categoryCode = cboCategories.SelectedItem.ToString()![..2];

                dgvTools.DataSource = _rentalFacade
                    .GetRentableTools(categoryCode: categoryCode, dtpFrom.Value, dtpTo.Value);

                dgvTools.Columns[0].HeaderText = @"ID";
                dgvTools.Columns[1].HeaderText = @"Category Code";
                dgvTools.Columns[2].HeaderText = @"Description";
                dgvTools.Columns[3].HeaderText = @"Manufacturer";
                dgvTools.Columns[4].HeaderText = @"Status";
                Miscellaneous.SetDataGridViewProperties(dgvTools);
            }
            else
            {
                MessageBox.Show(@"Please select a valid category.", @"Invalid Selection", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}
