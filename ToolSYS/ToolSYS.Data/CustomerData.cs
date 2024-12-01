using Oracle.ManagedDataAccess.Client;
using System.Data;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public interface ICustomerData
    {
        int GetNextCustomerId();
        void AddCustomer(Customer customer);
        void UpdateCustomer(Customer customer);
        DataSet SearchCustomers(string searchPhrase);
        DataSet GetFilteredCustomers(string custIdAsString, string forename, string surname, string email, string phone, string eircode, string phrase);
    }

    public class CustomerData : ICustomerData
    {
        private readonly string _connectionString = DbConnect.Oradb;

        public int GetNextCustomerId()
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                var cmd = new OracleCommand("GetNextCustomerId", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.Add("p_NextCustomerId", OracleDbType.Int32, ParameterDirection.Output);

                conn.Open();
                cmd.ExecuteNonQuery();
                int nextCustomerId = Convert.ToInt32(cmd.Parameters["p_NextCustomerId"].Value.ToString());
                conn.Close();

                return nextCustomerId;
            }
        }

        public void AddCustomer(Customer customer)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                var cmd = new OracleCommand("AddCustomer", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.Add("p_CustomerID", OracleDbType.Int32).Value = customer.customerId;
                cmd.Parameters.Add("p_Forename", OracleDbType.Varchar2).Value = customer.forename;
                cmd.Parameters.Add("p_Surname", OracleDbType.Varchar2).Value = customer.surname;
                cmd.Parameters.Add("p_Email", OracleDbType.Varchar2).Value = customer.email;
                cmd.Parameters.Add("p_Phone", OracleDbType.Varchar2).Value = customer.phone;
                cmd.Parameters.Add("p_Eircode", OracleDbType.Varchar2).Value = customer.eircode;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        public void UpdateCustomer(Customer customer)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                var cmd = new OracleCommand("UpdateCustomer", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.Add("p_CustomerID", OracleDbType.Int32).Value = customer.customerId;
                cmd.Parameters.Add("p_Forename", OracleDbType.Varchar2).Value = customer.forename;
                cmd.Parameters.Add("p_Surname", OracleDbType.Varchar2).Value = customer.surname;
                cmd.Parameters.Add("p_Email", OracleDbType.Varchar2).Value = customer.email;
                cmd.Parameters.Add("p_Phone", OracleDbType.Varchar2).Value = customer.phone;
                cmd.Parameters.Add("p_Eircode", OracleDbType.Varchar2).Value = customer.eircode;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        public DataSet SearchCustomers(string searchPhrase)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                var cmd = new OracleCommand("SearchCustomers", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.Add("p_SearchPhrase", OracleDbType.Varchar2).Value = searchPhrase;
                cmd.Parameters.Add("p_Cursor", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                conn.Open();
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "customer");
                conn.Close();

                return ds;
            }
        }

        public DataSet GetFilteredCustomers(string custIdAsString, string forename, string surname, string email, string phone, string eircode, string phrase)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                var cmd = new OracleCommand("GetFilteredCustomers", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Handle nullable parameters
                int? customerId = null;
                if (int.TryParse(custIdAsString, out int parsedId))
                    customerId = parsedId;

                cmd.Parameters.Add("p_CustomerID", OracleDbType.Int32).Value = customerId.HasValue ? (object)customerId.Value : DBNull.Value;
                cmd.Parameters.Add("p_Forename", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(forename) ? DBNull.Value : (object)forename;
                cmd.Parameters.Add("p_Surname", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(surname) ? DBNull.Value : (object)surname;
                cmd.Parameters.Add("p_Email", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(email) ? DBNull.Value : (object)email;
                cmd.Parameters.Add("p_Phone", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(phone) ? DBNull.Value : (object)phone;
                cmd.Parameters.Add("p_Eircode", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(eircode) ? DBNull.Value : (object)eircode;
                cmd.Parameters.Add("p_Phrase", OracleDbType.Varchar2).Value = string.IsNullOrEmpty(phrase) ? DBNull.Value : (object)phrase;
                cmd.Parameters.Add("p_Cursor", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                conn.Open();
                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "customer");
                conn.Close();

                return ds;
            }
        }
    }
}
