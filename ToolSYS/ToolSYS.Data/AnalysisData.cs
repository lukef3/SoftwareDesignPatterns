using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace ToolSYS.Data
{
    public class AnalysisData
    {
        private readonly string _connectionString = DBConnect.oradb;

        public DataTable GetDistinctYears()
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT DISTINCT TO_CHAR(TransactionDate, 'YYYY') AS Year FROM Rentals ORDER BY Year";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                conn.Open();

                DataTable yearsTable = new DataTable();
                using (OracleDataReader reader = cmd.ExecuteReader())
                {
                    yearsTable.Load(reader);
                }

                return yearsTable;
            }
        }

        public DataTable GetMonthlyRevenues(int year)
        {
            string sqlQuery = @"
                    SELECT TO_CHAR(TransactionDate, 'MM') AS Month, SUM(TotalFee) AS Revenue
                    FROM Rentals
                    WHERE TO_CHAR(TransactionDate, 'YYYY') = :year
                    GROUP BY TO_CHAR(TransactionDate, 'MM')
                    ORDER BY TO_CHAR(TransactionDate, 'MM')";

            using (var conn = new OracleConnection(_connectionString))
            {
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":year", year.ToString());

                DataTable revenueTable = new DataTable();
                OracleDataAdapter da = new OracleDataAdapter(cmd);

                conn.Open();
                da.Fill(revenueTable);

                return revenueTable;
            }
        }

        public DataTable GetMonthlyRentalsByCategory(int year, string categoryCode)
        {
            string sqlQuery = @"
                SELECT TO_CHAR(TransactionDate, 'YYYY-MM') AS Month, COUNT(*) AS NumRentals
                FROM Rentals
                JOIN RentalItems ON Rentals.RentalID = RentalItems.RentalID
                JOIN Tools ON RentalItems.ToolID = Tools.ToolID
                WHERE TO_CHAR(TransactionDate, 'YYYY') = :year AND Tools.CategoryCode = :categoryCode
                GROUP BY TO_CHAR(TransactionDate, 'YYYY-MM')
                ORDER BY Month";

            using (var conn = new OracleConnection(_connectionString))
            {
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":year", year.ToString());
                cmd.Parameters.Add(":categoryCode", categoryCode);

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();

                conn.Open();
                da.Fill(dt);

                return dt;
            }
        }
    }
}