using Oracle.ManagedDataAccess.Client;
using System.Data;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public interface IRentalData
    {
        int GetNextRentalId();
        void AddRental(Rental rental);
        DataTable GetRentalItemsByRentalId(int rentalId);
        void ReturnTool(int rentalId, int toolId);
    }
    
    public class RentalData : IRentalData
    {
        public int GetNextRentalId()
        {
            using (var conn = new OracleConnection(DbConnect.Oradb))
            {
                conn.Open();
                string sqlQuery = "SELECT NVL(MAX(RentalID), 0) + 1 FROM Rentals";
                var cmd = new OracleCommand(sqlQuery, conn);
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        public void AddRental(Rental rental)
        {
            using (var conn = new OracleConnection(DbConnect.Oradb))
            {
                conn.Open();
                string sqlQuery = @"
                    INSERT INTO Rentals (RentalID, CustomerID, TransactionDate, TotalFee) 
                    VALUES (:rentalID, :customerID, :transactionDate, :totalFee)";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":rentalID", rental.rentalId);
                cmd.Parameters.Add(":customerID", rental.customerId);
                cmd.Parameters.Add(":transactionDate", rental.transactionDate);
                cmd.Parameters.Add(":totalFee", rental.totalFee);
                cmd.ExecuteNonQuery();
            }
        }

        public DataTable GetRentalItemsByRentalId(int rentalId)
        {
            using (var conn = new OracleConnection(DbConnect.Oradb))
            {
                string query = @"
                    SELECT RentalItems.ToolID, Tools.CategoryCode, Tools.ToolDescription, Tools.ToolManufacturer, 
                           RentalItems.RentDate, RentalItems.ReturnDate, RentalItems.RentalFee
                    FROM RentalItems
                    INNER JOIN Tools ON RentalItems.ToolID = Tools.ToolID
                    WHERE RentalItems.RentalID = :rentalID AND Tools.ToolStatus = 'O'";

                OracleCommand cmd = new OracleCommand(query, conn);
                cmd.Parameters.Add(":rentalID", rentalId);

                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                return dt;
            }
        }

        public void ReturnTool(int rentalId, int toolId)
        {
            using (var conn = new OracleConnection(DbConnect.Oradb))
            {
                conn.Open();

                string updateToolQuery = "UPDATE Tools SET ToolStatus = 'I' WHERE ToolID = :toolID";
                OracleCommand updateToolCmd = new OracleCommand(updateToolQuery, conn);
                updateToolCmd.Parameters.Add(":toolID", toolId);
                updateToolCmd.ExecuteNonQuery();

                string updateRentalItemQuery = @"
                    UPDATE RentalItems
                    SET ReturnDate = SYSDATE
                    WHERE RentalID = :rentalID AND ToolID = :toolID";
                OracleCommand updateRentalCmd = new OracleCommand(updateRentalItemQuery, conn);
                updateRentalCmd.Parameters.Add(":rentalID", rentalId);
                updateRentalCmd.Parameters.Add(":toolID", toolId);
                updateRentalCmd.ExecuteNonQuery();
            }
        }
    }
}
