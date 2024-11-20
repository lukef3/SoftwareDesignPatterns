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
    public class CustomerData
    {
        private readonly string _connectionString = DBConnect.oradb;

        public int GetNextCustomerID()
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT MAX(CustomerID) FROM Customers";
                var cmd = new OracleCommand(sqlQuery, conn);

                conn.Open();
                int nextCustomerID = cmd.ExecuteScalar() == DBNull.Value ? 1 : Convert.ToInt32(cmd.ExecuteScalar()) + 1;
                conn.Close();

                return nextCustomerID;
            }
        }

        public void AddCustomer(Customer customer)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "INSERT INTO Customers (CustomerID, Forename, Surname, Email, Phone, Eircode) " +
                                  "VALUES (:customerID, :forename, :surname, :email, :phone, :eircode)";

                var cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":customerID", OracleDbType.Int32).Value = customer.customerID;
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
                cmd.Parameters.Add(":customerID", OracleDbType.Int32).Value = customer.customerID;
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


        public DataSet GetFilteredCustomers(String custIDAsString, String forename, String surname, String email, String phone, String eircode, String phrase)
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = DetermineSQLQuery(custIDAsString, forename, surname, email, phone, eircode, phrase);

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            conn.Close();

            return ds;

        }
        private static String DetermineSQLQuery(String custIDAsString, String forename, String surname, String email, String phone, String eircode, String phrase)
        {
            String sqlQuery = "";

            if (string.IsNullOrEmpty(custIDAsString) && String.IsNullOrEmpty(forename) && string.IsNullOrEmpty(surname) && string.IsNullOrEmpty(email) && string.IsNullOrEmpty(phone) && string.IsNullOrEmpty(eircode) && string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode FROM Customers";
            }
            else if (!string.IsNullOrEmpty(custIDAsString) || !string.IsNullOrEmpty(forename) || !string.IsNullOrEmpty(surname) || !string.IsNullOrEmpty(email) || !string.IsNullOrEmpty(phone) || !string.IsNullOrEmpty(eircode) || !string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode FROM Customers WHERE 1 = 1";

                if (!string.IsNullOrEmpty(custIDAsString))
                {
                    int custID;
                    if (Decimal.TryParse(custIDAsString, out _))
                    {
                        custID = Convert.ToInt32(custIDAsString);
                        sqlQuery += " AND CustomerID = " + custID;
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

        public Customer GetCustomerData(int customerID)
        {
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT * FROM Customers WHERE CustomerID = :customerID";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(name: ":customerID", customerID);

                conn.Open();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        return new RegularCustomer
                        {
                            customerID = reader.GetInt32(0),
                            forename = reader.GetString(1),
                            surname = reader.GetString(2),
                            email = reader.GetString(3),
                            phone = reader.GetString(4),
                            eircode = reader.GetString(5)
                        };
                    }
                }
            }
            throw new ArgumentException("Customer not found.");
        }

        public int GetRentalFrequency(int customerID)
        {   
            using (var conn = new OracleConnection(_connectionString))
            {
                string sqlQuery = "SELECT COUNT(*) FROM Rentals WHERE CustomerID = :customerID";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":customerID", customerID);

                conn.Open();
                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }
    }
}
