using System.Data;
using ToolSYS.Data;

namespace ToolSYS.Business.Services
{
    public class AnalysisService
    {
        private readonly AnalysisData _analysisData;

        public AnalysisService()
        {
            _analysisData = new AnalysisData();
        }

        public DataTable GetDistinctYears()
        {
            return _analysisData.GetDistinctYears();
        }

        public (string[] Months, double[] Revenues) GetMonthlyRevenues(int year)
        {
            DataTable revenueTable = _analysisData.GetMonthlyRevenues(year);

            string[] months = new string[12];
            double[] revenues = new double[12];

            for (int i = 0; i < 12; i++)
            {
                months[i] = GetMonthName(i + 1);
                revenues[i] = 0;
            }

            foreach (DataRow row in revenueTable.Rows)
            {
                int monthIndex = int.Parse(row["Month"].ToString()) - 1;
                revenues[monthIndex] = Convert.ToDouble(row["Revenue"]);
            }

            return (months, revenues);
        }

        public (string[] Months, double[] Rentals) GetMonthlyToolRentals(int year, string categoryCode)
        {
            DataTable dt = _analysisData.GetMonthlyRentalsByCategory(year, categoryCode);

            string[] months = new string[12];
            double[] rentals = new double[12];

            for (int i = 0; i < 12; i++)
            {
                months[i] = GetMonthName(i + 1);
                rentals[i] = 0;
            }

            foreach (DataRow row in dt.Rows)
            {
                int monthIndex = int.Parse(row["Month"].ToString().Substring(5, 2)) - 1;
                rentals[monthIndex] = Convert.ToDouble(row["NumRentals"]);
            }

            return (months, rentals);
        }

        private static string GetMonthName(int month)
        {
            string[] monthNames = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
            return month >= 1 && month <= 12 ? monthNames[month - 1] : "Invalid";
        }
    }
}