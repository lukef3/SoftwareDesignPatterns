using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using ToolSYS.Business.Services;

namespace ToolSYS.Presentation
{
    public partial class frmAnnualToolTypeAnalysis : Form
    {
        private AnalysisService analysisService;
        private RateService rateService;

        public frmAnnualToolTypeAnalysis()
        {
            InitializeComponent();
            analysisService = new AnalysisService();
            rateService = new RateService();
        }

        private void frmAnnualToolTypeAnalysis_Load(object sender, EventArgs e)
        {
            LoadCategories();
            LoadYears();
        }

        private void LoadCategories()
        {
            cboCategories.Items.Clear();
            DataSet categories = rateService.GetAllCategories();

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
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

                if (cboYears.Items.Count > 0)
                {
                    cboYears.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading years: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if (cboCategories.SelectedIndex >= 0 && cboYears.SelectedIndex >= 0)
            {
                int year = int.Parse(cboYears.SelectedItem.ToString());
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                FillChart(year, categoryCode);
            }
            else
            {
                MessageBox.Show("Please select both year and tool category.", "Invalid Selection", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void FillChart(int year, string categoryCode)
        {
            try
            {
                var (months, rentals) = analysisService.GetMonthlyToolRentals(year, categoryCode);

                // Clear and update the chart using ScottPlot
                formsPlot1.Plot.Clear();
                formsPlot1.Plot.AddBar(rentals);

                // Generate X-axis positions as double[]
                double[] xPositions = Enumerable.Range(0, 12).Select(i => (double)i).ToArray();
                formsPlot1.Plot.XTicks(xPositions, months);

                formsPlot1.Plot.Title($"Tool Rentals in {year} for Category {categoryCode}");
                formsPlot1.Plot.YLabel("Number of Rentals");
                formsPlot1.Plot.XLabel("Months");

                formsPlot1.Refresh();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error generating chart: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
