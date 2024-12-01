namespace ToolSYS.Entities;

public class ReportData
{
    public string Title { get; set; }
    public string YLabel { get; set; }
    public List<string> XLabels { get; set; }
    public List<double> YValues { get; set; }
    public ChartType ChartType { get; set; }
}

public enum ChartType
{
    Bar,
    Line,
    Scatter,
    Pie,
}