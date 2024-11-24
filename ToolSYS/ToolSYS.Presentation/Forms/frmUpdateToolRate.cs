using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmUpdateToolRate : NavForm
    {
        private readonly IRateService _rateService;

        public FrmUpdateToolRate(INavigation navigation, IRateService rateService) : base(navigation)
        {
            InitializeComponent();
            _rateService = rateService;
        }

        private void FrmUpdateToolRate_Load(object sender, EventArgs e)
        {
            LoadCategories();
        }

        private void CboCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

            if(cboCategories.SelectedIndex == -1)
            {
                groupBox2.Visible = false;
            }
            else
            {
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                Rate rate = _rateService.GetRateByCategoryCode(categoryCode);

                txtCategoryDescription.Text = rate.categoryDesc;
                txtRate.Text = rate.rate.ToString();

                groupBox2.Visible = true;
            }
        }
    
        private void BtnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Rate rate = new Rate
                {
                    categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2),
                    categoryDesc = txtCategoryDescription.Text,
                    rate = Convert.ToDecimal(txtRate.Text)
                };

                _rateService.UpdateRate(rate);

                MessageBox.Show(@"Tool Category Has Been Successfully Updated", @"Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                groupBox2.Visible = false;
                cboCategories.SelectedIndex = -1;

                cboCategories.Items.Clear();
                LoadCategories();

            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LoadCategories()
        {
            cboCategories.Items.Add("");
            DataSet categories = _rateService.GetAllCategories();

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
            }
        }
    }
}
