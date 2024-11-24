using ToolSYS.Business.Services;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmSetToolCategory : NavForm
    {
        private readonly IRateService _rateService;
        public FrmSetToolCategory(INavigation navigation, IRateService rateService) : base(navigation)
        {
            InitializeComponent();
            _rateService = rateService;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Rate rate = new Rate
                {
                    categoryCode = txtCategoryCode.Text,
                    categoryDesc = txtCategoryDesc.Text,
                    rate = decimal.Parse(txtRate.Text)
                };

                _rateService.AddRate(rate);
                MessageBox.Show(@"Rate successfully added!", @"Success", MessageBoxButtons.OK,
                    MessageBoxIcon.Information);

                txtCategoryCode.Clear();
                txtCategoryDesc.Clear();
                txtRate.Clear();
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
