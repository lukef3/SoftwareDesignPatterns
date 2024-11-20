﻿using ToolSYS.Business.Services;

namespace ToolSYS.Business.Strategies
{
    public interface IReportStrategy
    {
        string GetTitle(int year, string category = null);
        (string[] Labels, double[] Values) GetData(int year, string category = null);
        bool NeedsCategory { get; }
    }

    public class RevenueReport : IReportStrategy
    {
        private readonly AnalysisService _analysisService;

        public RevenueReport()
        {
            _analysisService = new AnalysisService();
        }

        public bool NeedsCategory => false;

        public string GetTitle(int year, string category = null)
        {
            return $"Revenue per month {year}";
        }

        public (string[] Labels, double[] Values) GetData(int year, string category = null)
        {
            return _analysisService.GetMonthlyRevenues(year);
        }
    }

    public class ToolRentalReport : IReportStrategy
    {
        private readonly AnalysisService _analysisService;

        public ToolRentalReport()
        {
            _analysisService = new AnalysisService();
        }

        public bool NeedsCategory => true;

        public string GetTitle(int year, string category)
        {
            return $"Tool Rentals in {year} for Category {category}";
        }

        public (string[] Labels, double[] Values) GetData(int year, string category)
        {
            return _analysisService.GetMonthlyToolRentals(year, category);
        }
    }
}