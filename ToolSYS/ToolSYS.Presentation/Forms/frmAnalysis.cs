using ScottPlot;
using System.Data;
using ToolSYS.Business.Services;
using ToolSYS.Business.Strategies;
using ToolSYS.Entities;
using ToolSYS.Presentation.Nav;

namespace ToolSYS.Presentation.Forms
{
    public partial class FrmAnalysis : NavForm
    {
        private readonly IAnalysisService _analysisService;
        private IReportStrategy _reportStrategy;

        public FrmAnalysis(INavigation navigation, IAnalysisService analysisService) : base(navigation)
        {
            InitializeComponent();
            _analysisService = analysisService;
        }

        private void frmAnalysis_Load(object sender, EventArgs e)
        {
            InitializeReportTypes();
            LoadYears();
        }

        private void InitializeReportTypes()
        {
            cboReportType.Items.Add("Revenue Analysis");
            cboReportType.Items.Add("Tool Rental Analysis");
            cboReportType.Items.Add("Tool Type Distribution");
            cboReportType.SelectedIndex = 0;
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

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                ValidateSelections();
                ReportData reportData = _analysisService.GetReportData(Convert.ToInt32(cboYears.Text), cboReportType.Text);
                RenderGraph(reportData);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, @"Invalid Selection", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }

        private void ValidateSelections()
        {
            if (cboYears.SelectedIndex < 0)
                throw new ArgumentException("Please select a year.");
            if (cboReportType.SelectedIndex < 0)
                throw new ArgumentException("Please select a report.");
            }

        private void RenderGraph(ReportData reportData)
        {
            formsPlot1.Plot.Clear();
            switch (reportData.ChartType)
            {
                case ChartType.Bar:
                    RenderBarChart(reportData);
                    break;

                case ChartType.Line:
                    RenderLineChart(reportData);
                    break;

                case ChartType.Scatter:
                    RenderScatterChart(reportData);
                    break;

                case ChartType.Pie:
                    RenderPieChart(reportData);
                    break;

                default:
                    throw new NotSupportedException($"Chart type '{reportData.ChartType}' is not supported.");
            }

            formsPlot1.Plot.Title(reportData.Title);
            formsPlot1.Plot.YLabel(reportData.YLabel);

            formsPlot1.Refresh();
        }

        private void RenderBarChart(ReportData data)
        {
            double[] ys = data.YValues.ToArray();
            double[] xs = Enumerable.Range(0, ys.Length).Select(x => (double)x).ToArray();
            var bar = formsPlot1.Plot.AddBar(ys);
            bar.PositionOffset = 0;
            bar.BarWidth = 0.6;
            bar.FillColor = System.Drawing.Color.Blue;
            bar.Label = "Revenue";
            formsPlot1.Plot.XTicks(xs, data.XLabels.ToArray());
            formsPlot1.Plot.Legend();
        }

        private void RenderLineChart(ReportData data)
        {
            double[] ys = data.YValues.ToArray();
            double[] xs = Enumerable.Range(0, ys.Length).Select(x => (double)x).ToArray();
            var line = formsPlot1.Plot.AddScatter(xs, ys, label: "Revenue");
            line.MarkerSize = 5;
            line.LineWidth = 2;
            formsPlot1.Plot.XTicks(xs, data.XLabels.ToArray());
            formsPlot1.Plot.Legend();
        }

        private void RenderScatterChart(ReportData data)
        {
            double[] ys = data.YValues.ToArray();
            double[] xs = Enumerable.Range(0, ys.Length).Select(x => (double)x).ToArray();
            var scatter = formsPlot1.Plot.AddScatter(xs, ys, markerSize: 10, label: "Revenue");
            scatter.MarkerShape = MarkerShape.filledCircle;
            scatter.Color = System.Drawing.Color.Red;
            formsPlot1.Plot.XTicks(xs, data.XLabels.ToArray());
            formsPlot1.Plot.Legend();
        }

        private void RenderPieChart(ReportData data)
        {
            double[] ys = data.YValues.ToArray();
            var pie = formsPlot1.Plot.AddPie(ys);
            pie.SliceLabels = data.XLabels.ToArray();
            pie.ShowLabels = true;
            pie.DonutSize = 0.6;
        }
    }
}
