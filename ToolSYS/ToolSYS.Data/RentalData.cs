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
        private readonly OracleConnection _connection;
        private OracleTransaction _transaction;

        public RentalData(OracleConnection connection)
        {
            _connection = connection;
        }

        public void SetTransaction(OracleTransaction transaction)
        {
            _transaction = transaction;
        }

        public int GetNextRentalId()
        {
            string sqlQuery = "SELECT NVL(MAX(RentalID), 0) + 1 FROM Rentals";
            using (var cmd = new OracleCommand(sqlQuery, _connection))
            {
                cmd.Transaction = _transaction;
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        public void AddRental(Rental rental)
        {
            string sqlQuery = @"
                    INSERT INTO Rentals (RentalID, CustomerID, TransactionDate, TotalFee) 
                    VALUES (:rentalID, :customerID, :transactionDate, :totalFee)";

            using (var cmd = new OracleCommand(sqlQuery, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":rentalID", rental.rentalId);
                cmd.Parameters.Add(":customerID", rental.customerId);
                cmd.Parameters.Add(":transactionDate", rental.transactionDate);
                cmd.Parameters.Add(":totalFee", rental.totalFee);
                cmd.ExecuteNonQuery();
            }
        }

        public DataTable GetRentalItemsByRentalId(int rentalId)
        {
            string query = @"
                    SELECT RentalItems.ToolID, Tools.CategoryCode, Tools.ToolDescription, Tools.ToolManufacturer, 
                           RentalItems.RentDate, RentalItems.ReturnDate, RentalItems.RentalFee
                    FROM RentalItems
                    INNER JOIN Tools ON RentalItems.ToolID = Tools.ToolID
                    WHERE RentalItems.RentalID = :rentalID AND Tools.ToolStatus = 'O'";

            using (var cmd = new OracleCommand(query, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":rentalID", rentalId);

                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                return dt;
            }
        }

        public void ReturnTool(int rentalId, int toolId)
        {
            string updateToolQuery = "UPDATE Tools SET ToolStatus = 'I' WHERE ToolID = :toolID";
            using (var cmd = new OracleCommand(updateToolQuery, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":toolID", toolId);
                cmd.ExecuteNonQuery();
            }

            string updateRentalItemQuery = @"UPDATE RentalItems SET ReturnDate = SYSDATE WHERE RentalID = :rentalID AND ToolID = :toolID";
            using (var cmd = new OracleCommand(updateRentalItemQuery, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":rentalID", rentalId);
                cmd.Parameters.Add(":toolID", toolId);
                cmd.ExecuteNonQuery();
            }
        }
    }
}
