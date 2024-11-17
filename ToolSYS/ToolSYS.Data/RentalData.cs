using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public static class RentalData
    {
        public static int GetNextRentalID()
        {
            using (var conn = new OracleConnection(DBConnect.oradb))
            {
                conn.Open();
                string sqlQuery = "SELECT NVL(MAX(RentalID), 0) + 1 FROM Rentals";
                var cmd = new OracleCommand(sqlQuery, conn);
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        public static void AddRental(Rental rental)
        {
            using (var conn = new OracleConnection(DBConnect.oradb))
            {
                conn.Open();
                string sqlQuery = @"
                    INSERT INTO Rentals (RentalID, CustomerID, TransactionDate, TotalFee) 
                    VALUES (:rentalID, :customerID, :transactionDate, :totalFee)";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":rentalID", rental.rentalID);
                cmd.Parameters.Add(":customerID", rental.customerID);
                cmd.Parameters.Add(":transactionDate", rental.transactionDate);
                cmd.Parameters.Add(":totalFee", rental.totalFee);
                cmd.ExecuteNonQuery();
            }
        }

        public static DataTable GetRentalItemsByRentalID(int rentalID)
        {
            using (var conn = new OracleConnection(DBConnect.oradb))
            {
                string query = @"
                    SELECT RentalItems.ToolID, Tools.CategoryCode, Tools.ToolDescription, Tools.ToolManufacturer, 
                           RentalItems.RentDate, RentalItems.ReturnDate, RentalItems.RentalFee
                    FROM RentalItems
                    INNER JOIN Tools ON RentalItems.ToolID = Tools.ToolID
                    WHERE RentalItems.RentalID = :rentalID AND Tools.ToolStatus = 'O'";

                OracleCommand cmd = new OracleCommand(query, conn);
                cmd.Parameters.Add(":rentalID", rentalID);

                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                return dt;
            }
        }

        public static void ReturnTool(int rentalID, int toolID)
        {
            using (var conn = new OracleConnection(DBConnect.oradb))
            {
                conn.Open();

                string updateToolQuery = "UPDATE Tools SET ToolStatus = 'I' WHERE ToolID = :toolID";
                OracleCommand updateToolCmd = new OracleCommand(updateToolQuery, conn);
                updateToolCmd.Parameters.Add(":toolID", toolID);
                updateToolCmd.ExecuteNonQuery();

                string updateRentalItemQuery = @"
                    UPDATE RentalItems
                    SET ReturnDate = SYSDATE
                    WHERE RentalID = :rentalID AND ToolID = :toolID";
                OracleCommand updateRentalCmd = new OracleCommand(updateRentalItemQuery, conn);
                updateRentalCmd.Parameters.Add(":rentalID", rentalID);
                updateRentalCmd.Parameters.Add(":toolID", toolID);
                updateRentalCmd.ExecuteNonQuery();
            }
        }
    }
}
