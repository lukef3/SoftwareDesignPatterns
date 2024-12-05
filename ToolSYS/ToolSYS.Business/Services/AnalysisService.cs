using System.Data;
using ToolSYS.Business.Factories;
using ToolSYS.Business.Strategies;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public interface IAnalysisService
    {
        DataTable GetDistinctYears();
        ReportData GetReportData(int year, string reportType);

    }

    public class AnalysisService : IAnalysisService
    {
        private readonly IAnalysisData _analysisData;

        public AnalysisService(IAnalysisData analysisData)
        {
            _analysisData = analysisData;
        }

        public ReportData GetReportData(int year, string reportType)
        {
            IReportStrategy strategy = ReportStrategySimpleFactory.GetStrategy(reportType, _analysisData);
            return strategy.GenerateReport(year, reportType);
        }

        public DataTable GetDistinctYears()
        {
            return _analysisData.GetDistinctYears();
        }
    }
}