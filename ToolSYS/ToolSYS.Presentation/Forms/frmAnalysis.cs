using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Business.Strategies;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmAnalysis : NavForm
    {
        private readonly IAnalysisService _analysisService;
        private readonly IRateService _rateService;
        private IReportStrategy _report;

        public FrmAnalysis(INavigation navigation, IRateService rateService, IAnalysisService analysisService) : base(navigation)
        {
            InitializeComponent();
            _analysisService = analysisService;
            _rateService = rateService;
        }

        private void frmAnalysis_Load(object sender, EventArgs e)
        {
            InitializeReportTypes();
            LoadYears();
            LoadCategories();
            SetReportType();
        }

        private void InitializeReportTypes()
        {
            cboReportType.Items.Add("Revenue Analysis");
            cboReportType.Items.Add("Tool Rental Analysis");
            cboReportType.SelectedIndex = 0;
        }

        private void LoadCategories()
        {
            try
            {
                cboCategories.Items.Clear();
                DataSet categories = _rateService.GetAllCategories();

                foreach (DataRow row in categories.Tables[0].Rows)
                {
                    string category = $"{row["CategoryCode"]} - {row["CategoryDesc"]}";
                    cboCategories.Items.Add(category);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LoadYears()
        {
            try
            {
                DataTable yearsTable = _analysisService.GetDistinctYears();
                cboYears.Items.Clear();

                foreach (DataRow row in yearsTable.Rows)
                {
                    cboYears.Items.Add(row["Year"].ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"{ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void SetReportType()
        {
            if (cboReportType.SelectedItem != null && cboReportType.SelectedItem.ToString() == "Revenue Analysis")
            {
                _report = new RevenueReport(_analysisService);
            }
            else
            {
                _report = new ToolRentalReport(_analysisService);
            }
            lblCategory.Visible = _report.needsCategory;
            cboCategories.Visible = _report.needsCategory;
        }

        private void cboReportType_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            SetReportType();
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                ValidateSelections();
                UpdateChart();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, @"Invalid Selection", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void ValidateSelections()
        {
            if (_report.needsCategory)
            {
                if (cboCategories.SelectedIndex < 0)
                    throw new ArgumentException("Please select a tool category.");
            }

            if (cboYears.SelectedIndex < 0)
                throw new ArgumentException("Please select a year.");
        }

        private void UpdateChart()
        {
            UpdateChart(cboCategories);
        }

        private void UpdateChart(ComboBox cboCategories)
        {
            try
            {
                int selectedYear = int.Parse(cboYears.SelectedItem.ToString());
                string categoryCode = null;

                if (_report.needsCategory && cboCategories.SelectedItem != null)
                {
                    categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                }
                var (labels, values) = _report.GetData(selectedYear, categoryCode);

                formsPlot1.Plot.Clear();
                formsPlot1.Plot.AddBar(values);
                double[] xPositions = Enumerable.Range(0, labels.Length)
                    .Select(i => (double)i).ToArray();
                formsPlot1.Plot.XTicks(xPositions, labels);
                formsPlot1.Plot.Title(_report.GetTitle(selectedYear, categoryCode));
                formsPlot1.Plot.XLabel("Months");
                formsPlot1.Refresh();
            }
            catch (Exception ex)
            {
                MessageBox.Show($@"Error in plotting chart: {ex.Message}", @"Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
