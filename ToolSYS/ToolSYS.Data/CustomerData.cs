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
                string sqlQuery = "SELECT MAX(CustomerID) FROM Customers";
                var cmd = new OracleCommand(sqlQuery, conn);

                conn.Open();
                int nextCustomerId = cmd.ExecuteScalar() == DBNull.Value ? 1 : Convert.ToInt32(cmd.ExecuteScalar()) + 1;
                conn.Close();

                return nextCustomerId;
            }
        }

        public void AddCustomer(Customer customer)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "INSERT INTO Customers (CustomerID, Forename, Surname, Email, Phone, Eircode) " +
                                  "VALUES (:customerID, :forename, :surname, :email, :phone, :eircode)";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":customerID", OracleDbType.Int32).Value = customer.customerId;
                cmd.Parameters.Add(":forename", OracleDbType.Varchar2).Value = customer.forename;
                cmd.Parameters.Add(":surname", OracleDbType.Varchar2).Value = customer.surname;
                cmd.Parameters.Add(":email", OracleDbType.Varchar2).Value = customer.email;
                cmd.Parameters.Add(":phone", OracleDbType.Varchar2).Value = customer.phone;
                cmd.Parameters.Add(":eircode", OracleDbType.Varchar2).Value = customer.eircode;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        public void UpdateCustomer(Customer customer)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "UPDATE Customers SET Forename = :forename, Surname = :surname, Email = :email, Phone = :phone, Eircode = :eircode " +
                                  "WHERE CustomerID = :customerID";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":customerID", OracleDbType.Int32).Value = customer.customerId;
                cmd.Parameters.Add(":forename", OracleDbType.Varchar2).Value = customer.forename;
                cmd.Parameters.Add(":surname", OracleDbType.Varchar2).Value = customer.surname;
                cmd.Parameters.Add(":email", OracleDbType.Varchar2).Value = customer.email;
                cmd.Parameters.Add(":phone", OracleDbType.Varchar2).Value = customer.phone;
                cmd.Parameters.Add(":eircode", OracleDbType.Varchar2).Value = customer.eircode;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }

        public DataSet SearchCustomers(string searchPhrase)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode " +
                                  "FROM Customers WHERE LOWER(Forename) LIKE LOWER(:phrase) OR LOWER(Surname) LIKE LOWER(:phrase) " +
                                  "OR LOWER(Email) LIKE LOWER(:phrase) OR LOWER(Phone) LIKE LOWER(:phrase) OR LOWER(Eircode) LIKE LOWER(:phrase)";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":phrase", OracleDbType.Varchar2).Value = $"%{searchPhrase}%";

                OracleDataAdapter da = new OracleDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds, "customer");
                return ds;
            }
        }


        public DataSet GetFilteredCustomers(String custIdAsString, String forename, String surname, String email, String phone, String eircode, String phrase)
        {
            OracleConnection conn = new OracleConnection(DbConnect.Oradb);

            String sqlQuery = DetermineSqlQuery(custIdAsString, forename, surname, email, phone, eircode, phrase);

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            conn.Close();

            return ds;

        }
        private static String DetermineSqlQuery(String custIdAsString, String forename, String surname, String email, String phone, String eircode, String phrase)
        {
            String sqlQuery = "";

            if (string.IsNullOrEmpty(custIdAsString) && String.IsNullOrEmpty(forename) && string.IsNullOrEmpty(surname) && string.IsNullOrEmpty(email) && string.IsNullOrEmpty(phone) && string.IsNullOrEmpty(eircode) && string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode FROM Customers";
            }
            else if (!string.IsNullOrEmpty(custIdAsString) || !string.IsNullOrEmpty(forename) || !string.IsNullOrEmpty(surname) || !string.IsNullOrEmpty(email) || !string.IsNullOrEmpty(phone) || !string.IsNullOrEmpty(eircode) || !string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode FROM Customers WHERE 1 = 1";

                if (!string.IsNullOrEmpty(custIdAsString))
                {
                    int custId;
                    if (Decimal.TryParse(custIdAsString, out _))
                    {
                        custId = Convert.ToInt32(custIdAsString);
                        sqlQuery += " AND CustomerID = " + custId;
                    }
                }

                if (!string.IsNullOrEmpty(forename))
                {
                    sqlQuery += " AND LOWER(Forename) LIKE LOWER('%" + forename + "%')";      //https://stackoverflow.com/questions/2876789/how-can-i-search-case-insensitive-in-a-column-using-like-wildcard
                }

                if (!string.IsNullOrEmpty(surname))
                {
                    sqlQuery += " AND LOWER(Surname) LIKE LOWER('%" + surname + "%')";
                }

                if (!string.IsNullOrEmpty(email))
                {
                    sqlQuery += " AND LOWER(Email) LIKE LOWER('%" + email + "%')";
                }

                if (!string.IsNullOrEmpty(phone))
                {
                    sqlQuery += " AND Phone = '%" + phone + "%'";
                }
                if (!string.IsNullOrEmpty(eircode))
                {
                    sqlQuery += " AND LOWER(Eircode) LIKE LOWER('%" + eircode + "%')";
                }
                if (!string.IsNullOrEmpty(phrase))
                {
                    sqlQuery += " AND (LOWER(Forename) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(Surname) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(Email) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(Phone) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(Eircode) LIKE LOWER('%" + phrase + "%'))";
                }
            }
            return sqlQuery;
        }
    }
}
