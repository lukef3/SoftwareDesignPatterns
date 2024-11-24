using System.Data;
using Oracle.ManagedDataAccess.Client;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public interface IRateData
    {
        void AddRate(Rate rate);
        Rate GetRateByCategoryCode(string categoryCode);
        void UpdateRate(Rate rate);
        DataSet GetAllCategories();
        bool DoesCategoryCodeExist(string categoryCode);
    }

    public class RateData : IRateData
    {
        private readonly string _connectionString = DbConnect.Oradb;

        public void AddRate(Rate rate)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "INSERT INTO Rates (CategoryCode, CategoryDesc, Rate) VALUES (:categoryCode, :categoryDesc, :rate)";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryCode", rate.categoryCode);
                cmd.Parameters.Add(":categoryDesc", rate.categoryDesc);
                cmd.Parameters.Add(":rate", rate.rate);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public Rate GetRateByCategoryCode(string categoryCode)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery =
                    "SELECT CategoryCode, CategoryDesc, Rate FROM Rates WHERE CategoryCode = :categoryCode";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryCode", categoryCode);

                conn.Open();
                OracleDataReader dr = cmd.ExecuteReader();

                dr.Read();
                return new Rate
                {
                    categoryCode = dr.GetString(0),
                    categoryDesc = dr.GetString(1),
                    rate = dr.GetDecimal(2)
                };
            }
        }

        public void UpdateRate(Rate rate)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "UPDATE Rates SET CategoryDesc = :categoryDesc, Rate = :rate WHERE CategoryCode = :categoryCode";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryDesc", rate.categoryDesc);
                cmd.Parameters.Add(":rate", rate.rate);
                cmd.Parameters.Add(":categoryCode", rate.categoryCode);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public DataSet GetAllCategories()
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT * FROM Rates ORDER BY CategoryCode";
                OracleDataAdapter da = new OracleDataAdapter(sqlQuery, conn);

                DataSet ds = new DataSet();
                da.Fill(ds, "Rates");

                return ds;
            }
        }

        public bool DoesCategoryCodeExist(string categoryCode)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT COUNT(*) FROM Rates WHERE CategoryCode = :categoryCode";
                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryCode", OracleDbType.Varchar2).Value = categoryCode;

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();

                return count > 0;
            }
        }
    }
}
