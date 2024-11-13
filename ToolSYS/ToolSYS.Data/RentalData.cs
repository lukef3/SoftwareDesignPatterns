using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToolSYS.DTOs;

namespace ToolSYS.Data
{
    public class RentalData
    {
        public int GetNextRentalID()
        {
            using (var conn = new OracleConnection(DBConnect.oradb))
            {
                conn.Open();
                string sqlQuery = "SELECT NVL(MAX(RentalID), 0) + 1 FROM Rentals";
                var cmd = new OracleCommand(sqlQuery, conn);
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        public void AddRental(Rental rental)
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
    }
}
