﻿using System.Data;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Strategies
{
    public interface IReportStrategy
    {
        ReportData GenerateReport(int year, string reportType);
    }

    public class RevenueReport : IReportStrategy
    {
        private readonly IAnalysisData _analysisData;
        public RevenueReport(IAnalysisData analysisData)
        {
            _analysisData = analysisData;
        }

        public ReportData GenerateReport(int year, string reportType)
        {
            var (labels, values) = GetData(year);

            return new ReportData
            {
                Title = $"Revenue per Month for {year}",
                YLabel = "Revenue (Euro)",
                XLabels = labels.ToList(),
                YValues = values.ToList(),
                ChartType = ChartType.Line
            };
        }

        private (string[] Labels, double[] Values) GetData(int year)
        {
            var revenueTable = _analysisData.GetMonthlyRevenues(year);
            string[] months = GetMonthNames();
            var revenues = new double[12];
            foreach (DataRow row in revenueTable.Rows)
            {
                if (int.TryParse(row["Month"].ToString(), out var monthNumber) &&
                    double.TryParse(row["Revenue"].ToString(), out var revenue))
                {
                    var monthIndex = monthNumber - 1;
                    if (monthIndex is >= 0 and < 12)
                    {
                        revenues[monthIndex] = revenue;
                    }
                }
            }
            return (months, revenues);
        }

        private string[] GetMonthNames()
        {
            return new string[]
            {
                "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            };
        }
    }

    public class RentalReport : IReportStrategy
    {
        private readonly IAnalysisData _analysisData;
        public RentalReport(IAnalysisData analysisData)
        {
            _analysisData = analysisData;
        }

        public ReportData GenerateReport(int year, string reportType)
        {
            var (labels, values) = GetData(year);

            return new ReportData
            {
                Title = $"Rentals per Month for {year}",
                YLabel = "Rentals (Count)",
                XLabels = labels.ToList(),
                YValues = values.ToList(),
                ChartType = ChartType.Line
            };
        }

        private (string[] Labels, double[] Values) GetData(int year)
        {
            var rentalTable = _analysisData.GetMonthlyRentals(year);
            string[] months = GetMonthNames();
            var rentals = new double[12];
            foreach (DataRow row in rentalTable.Rows)
            {
                if (int.TryParse(row["Month"].ToString(), out var monthNumber) &&
                    double.TryParse(row["NumRentals"].ToString(), out var rental))
                {
                    var monthIndex = monthNumber - 1;
                    if (monthIndex is >= 0 and < 12)
                    {
                        rentals[monthIndex] = rental;
                    }
                }
            }
            return (months, rentals);
        }

        private string[] GetMonthNames()
        {
            return new string[]
            {
                "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            };
        }
    }

    public class ToolTypeDistributionReport : IReportStrategy
    {
        private readonly IAnalysisData _analysisData;

        public ToolTypeDistributionReport(IAnalysisData analysisData)
        {
            _analysisData = analysisData ?? throw new ArgumentNullException(nameof(analysisData));
        }

        public ReportData GenerateReport(int year, string reportType)
        {
            var (labels, values) = GetData(year);

            return new ReportData
            {
                Title = $"Tool Type Rental Distribution for {year}",
                YLabel = "Number of Rentals",
                XLabels = labels.ToList(),
                YValues = values.ToList(),
                ChartType = ChartType.Pie
            };
        }

        private (string[] Labels, double[] Values) GetData(int year)
        {
            var categoryRentalTable = _analysisData.GetCategoryRentals(year);
            List<string> categories = new List<string>();
            var rentalCounts = new List<double>();

            foreach (DataRow row in categoryRentalTable.Rows)
            {
                var category = row["CategoryDesc"].ToString();
                if (double.TryParse(row["NumRentals"].ToString(), out var count))
                {
                    categories.Add(category);
                    rentalCounts.Add(count);
                }
            }

            return (categories.ToArray(), rentalCounts.ToArray());
        }
    }
}



/*
public interface IReportStrategy
{
    string GetTitle(int year, string? category = null);
    (string[] Labels, double[] Values) GetData(int year, string? category = null);
    bool needsCategory { get; }
}

public class RevenueReport : IReportStrategy
{
    private readonly IAnalysisData _analysisData;

    public RevenueReport(IAnalysisData analysisData)
    {
        _analysisData = analysisData;
    }

    public bool needsCategory => false;

    public string GetTitle(int year, string? category = null)
    {
        return $"Revenue per Month for {year}";
    }

    public (string[] Labels, double[] Values) GetData(int year, string? category = null)
    {
        DataTable revenueTable = _analysisData.GetMonthlyRevenues(year);

        string[] months = GetMonthNames();
        double[] revenues = new double[12];

        foreach (DataRow row in revenueTable.Rows)
        {
            int monthIndex = int.Parse(row["Month"].ToString()) - 1;
            revenues[monthIndex] = Convert.ToDouble(row["Revenue"]);
        }

        return (months, revenues);
    }

    private string[] GetMonthNames()
    {
        return new string[]
        {
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        };
    }
}


public class ToolRentalReport : IReportStrategy
{
    private readonly IAnalysisData _analysisData;

    public ToolRentalReport(IAnalysisData analysisData)
    {
        _analysisData = analysisData;
    }

    public bool needsCategory => true;

    public string GetTitle(int year, string? category)
    {
        return $"Tool Rentals in {year} for Category {category}";
    }

    public (string[] Labels, double[] Values) GetData(int year, string? category)
    {
        DataTable dt = _analysisData.GetMonthlyRentalsByCategory(year, category);

        string[] months = GetMonthNames();
        double[] rentals = new double[12];

        foreach (DataRow row in dt.Rows)
        {
            int monthIndex = int.Parse(row["Month"].ToString().Substring(5, 2)) - 1;
            rentals[monthIndex] = Convert.ToDouble(row["NumRentals"]);
        }

        return (months, rentals);
    }

    private string[] GetMonthNames()
    {
        return new string[]
        {
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        };
    }
}
}*/