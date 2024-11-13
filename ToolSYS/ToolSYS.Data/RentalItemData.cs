using Oracle.ManagedDataAccess.Client;
using System;
using ToolSYS.DTOs;

namespace ToolSYS.Data
{
    public class RentalItemData
    {
        private readonly string _connectionString = DBConnect.oradb;

        public void AddRentalItem(RentalItem rentalItem)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                conn.Open();

                string sqlInsert = @"
                    INSERT INTO RentalItems (RentalID, ToolID, RentDate, ReturnDate, RentalFee) 
                    VALUES (:rentalID, :toolID, :rentDate, :returnDate, :rentalFee)";

                var cmd = new OracleCommand(sqlInsert, conn);
                cmd.Parameters.Add(":rentalID", OracleDbType.Int32).Value = rentalItem.rentalID;
                cmd.Parameters.Add(":toolID", OracleDbType.Int32).Value = rentalItem.toolID;
                cmd.Parameters.Add(":rentDate", OracleDbType.Date).Value = rentalItem.rentDate;
                cmd.Parameters.Add(":returnDate", OracleDbType.Date).Value = rentalItem.returnDate;
                cmd.Parameters.Add(":rentalFee", OracleDbType.Decimal).Value = rentalItem.rentalFee;

                cmd.ExecuteNonQuery();

                // Update tool status to 'Out'
                string sqlUpdateTool = "UPDATE Tools SET ToolStatus = 'O' WHERE ToolID = :toolID";

                cmd = new OracleCommand(sqlUpdateTool, conn);
                cmd.Parameters.Add(":toolID", OracleDbType.Int32).Value = rentalItem.toolID;

                cmd.ExecuteNonQuery();
            }
        }
    }
}
