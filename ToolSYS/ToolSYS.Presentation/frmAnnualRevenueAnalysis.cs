using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using ToolSYS.Business.Services;

namespace ToolSYS.Presentation
{
    public partial class frmAnnualRevenueAnalysis : Form
    {
        private readonly AnalysisService analysisService;

        public frmAnnualRevenueAnalysis()
        {
            InitializeComponent();
            analysisService = new AnalysisService();
        }

        private void frmAnnualRevenueAnalysis_Load(object sender, EventArgs e)
        {
            LoadYears();
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

        private void cboYears_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboYears.SelectedItem != null)
            {
                try
                {
                    int selectedYear = int.Parse(cboYears.SelectedItem.ToString());
                    FillChart(selectedYear);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error loading revenue data: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void FillChart(int year)
        {
            try
            {
                var (months, revenues) = analysisService.GetMonthlyRevenues(year);

                formsPlot1.Plot.Clear();
                formsPlot1.Plot.AddBar(revenues);

                double[] xPositions = Enumerable.Range(0, 12).Select(i => (double)i).ToArray();
                formsPlot1.Plot.XTicks(xPositions, months);

                formsPlot1.Plot.Title($"Revenue Analysis for {year}");
                formsPlot1.Plot.YLabel("Revenue");
                formsPlot1.Plot.XLabel("Months");

                formsPlot1.Refresh();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error plotting data: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
