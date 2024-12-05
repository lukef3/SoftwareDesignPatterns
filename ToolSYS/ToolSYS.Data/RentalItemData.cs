using Oracle.ManagedDataAccess.Client;
using System.Data.Common;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public interface IRentalItemData
    {
        void AddRentalItem(RentalItem rentalItem);
    }
    
    public class RentalItemData : IRentalItemData
    {
        private readonly OracleConnection _connection;
        private OracleTransaction _transaction;
        public RentalItemData(OracleConnection connection)
        {
            _connection = connection;
        }

        public void SetTransaction(OracleTransaction transaction)
        {
            _transaction = transaction;
        }

        public void AddRentalItem(RentalItem rentalItem)
        {
            string sqlInsert = @"INSERT INTO RentalItems (RentalID, ToolID, RentDate, ReturnDate, RentalFee) 
                    VALUES (:rentalID, :toolID, :rentDate, :returnDate, :rentalFee)";

            using (var cmd = new OracleCommand(sqlInsert, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":rentalID", OracleDbType.Int32).Value = rentalItem.rentalId;
                cmd.Parameters.Add(":toolID", OracleDbType.Int32).Value = rentalItem.toolId;
                cmd.Parameters.Add(":rentDate", OracleDbType.Date).Value = rentalItem.rentDate;
                cmd.Parameters.Add(":returnDate", OracleDbType.Date).Value = rentalItem.returnDate;
                cmd.Parameters.Add(":rentalFee", OracleDbType.Decimal).Value = rentalItem.rentalFee;

                cmd.ExecuteNonQuery();
            }

            string sqlUpdateStatus = "UPDATE Tools SET ToolStatus = 'O' WHERE ToolID = :toolID";

            using (var cmd = new OracleCommand(sqlUpdateStatus, _connection))
            {
                cmd.Transaction = _transaction;
                cmd.Parameters.Add(":toolID", OracleDbType.Int32).Value = rentalItem.toolId;

                cmd.ExecuteNonQuery();
            }
        }
    }
}
