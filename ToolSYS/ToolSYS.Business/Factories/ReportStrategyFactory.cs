using ToolSYS.Business.Strategies;
using ToolSYS.Data;

namespace ToolSYS.Business.Factories;

public class ReportStrategyFactory
{
    public static IReportStrategy GetStrategy(string reportType, IAnalysisData analysisData)
    {
        return reportType switch
        {
            "Revenue Analysis" => new RevenueReport(analysisData),
            "Tool Rental Analysis" => new RentalReport(analysisData),
            "Tool Type Distribution" => new ToolTypeDistributionReport(analysisData),
        _ => throw new ArgumentException("Invalid report type")
        };
    }
}