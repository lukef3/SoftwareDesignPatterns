using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using ToolSYS.Business.Services;
using ToolSYS.Business.Strategies;

namespace ToolSYS.Presentation
{
    public partial class frmAnalysis : Form
    {
        private readonly AnalysisService analysisService;
        private readonly RateService rateService;
        private IReportStrategy report;

        public frmAnalysis()
        {
            InitializeComponent();
            analysisService = new AnalysisService();
            rateService = new RateService();
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
                DataSet categories = rateService.GetAllCategories();

                foreach (DataRow row in categories.Tables[0].Rows)
                {
                    string category = $"{row["CategoryCode"]} - {row["CategoryDesc"]}";
                    cboCategories.Items.Add(category);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LoadYears()
        {
            try
            {
                DataTable yearsTable = analysisService.GetDistinctYears();
                cboYears.Items.Clear();

                foreach (DataRow row in yearsTable.Rows)
                {
                    cboYears.Items.Add(row["Year"].ToString());
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void SetReportType()
        {
            if (cboReportType.SelectedItem.ToString() == "Revenue Analysis")
            {
                report = new RevenueReport(analysisService);
            }
            else
            {
                report = new ToolRentalReport(analysisService);
            }
            lblCategory.Visible = report.NeedsCategory;
            cboCategories.Visible = report.NeedsCategory;
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
                MessageBox.Show(ex.Message, "Invalid Selection", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void ValidateSelections()
        {
            if (report.NeedsCategory)
            {
                if (cboCategories.SelectedIndex < 0)
                    throw new ArgumentException("Please select a tool category.");
            }

            if (cboYears.SelectedIndex < 0)
                throw new ArgumentException("Please select a year.");
        }

        private void UpdateChart()
        {
            try
            {
                int selectedYear = int.Parse(cboYears.SelectedItem.ToString());
                string categoryCode = null;

                if (report.NeedsCategory && cboCategories.SelectedItem != null)
                {
                    categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                }
                var (labels, values) = report.GetData(selectedYear, categoryCode);

                formsPlot1.Plot.Clear();
                formsPlot1.Plot.AddBar(values);
                double[] xPositions = Enumerable.Range(0, labels.Length)
                    .Select(i => (double)i).ToArray();
                formsPlot1.Plot.XTicks(xPositions, labels);
                formsPlot1.Plot.Title(report.GetTitle(selectedYear, categoryCode));
                formsPlot1.Plot.XLabel("Months");
                formsPlot1.Refresh();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error in plotting chart: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void SetToolCategoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.SetToolCategory(this);
        }
        private void UpdateToolRateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateRate(this);
        }
        private void AddToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddTool(this);
        }
        private void UpdateToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateTool(this);
        }
        private void RemoveToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RemoveTool(this);
        }
        private void ViewToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewTools(this);
        }
        private void AddCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddCustomer(this);
        }
        private void UpdateCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateCustomer(this);
        }
        private void viewCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewCustomers(this);
        }
        private void RentToolToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RentTools(this);
        }
        private void ReturnToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ReturnTools(this);
        }
        private void ViewRentalsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewRentals(this);
        }
        private void AnnualRevenueAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RevenueAnalysis(this);
        }
        private void AnnualToolTypeAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ToolTypeAnalysis(this);
        }
        private void MainMenuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.MainMenu(this);
        }


    }
}
