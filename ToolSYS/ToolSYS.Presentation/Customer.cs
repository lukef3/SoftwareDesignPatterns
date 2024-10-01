using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace ToolSYS
{
    class Customer
    {
        private int customerID;
        private String forename;
        private String surname;
        private String email;
        private String phone;
        private String eircode;

        public Customer(int customerID, String forename, String surname, String email, String phone, String eircode)
        {
            this.customerID = customerID;
            this.forename = forename;
            this.surname = surname;
            this.email = email;
            this.phone = phone;
            this.eircode = eircode;
        }

        public Customer()
        {
            this.customerID = 0;
            this.forename = "";
            this.surname = "";
            this.email = "";
            this.phone = "";
            this.eircode = "";
        }
        public int GetCustomerID()
        {
            return this.customerID;
        }
        public String GetForename()
        {
            return this.forename;
        }
        public String GetSurname()
        {
            return this.surname;
        }
        public String GetEmail()
        {
            return this.email;
        }
        public String GetPhone()
        {
            return this.phone;
        }
        public String GetEircode()
        {
            return this.eircode;
        }

        public void SetCustomerID(int customerID)
        {
            this.customerID = customerID;
        }
        public void SetForename(String forename)
        {
            this.forename = forename;
        }
        public void SetSurname(String surname)
        {
            this.surname = surname;
        }
        public void SetEmail(String email)
        {
            this.email = email;
        }
        public void SetPhone(String phone)
        {
            this.phone = phone;
        }
        public void SetEircode(String eircode)
        {
            this.eircode = eircode;
        }

        public static int GetNextCustomerID()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);
            String sqlQuery = "SELECT MAX(CustomerID) FROM Customers";
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            OracleDataReader dr = cmd.ExecuteReader();

            int NextCustomerID;

            dr.Read();

            if (dr.IsDBNull(0))
            {
                NextCustomerID = 1;
            }
            else
            {
                NextCustomerID = dr.GetInt32(0) + 1;
            }
            conn.Close();

            return NextCustomerID;
        }
        public void AddCustomer()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "INSERT INTO Customers Values (" +
                this.customerID + ", '" +
                this.forename + "', '" +
                this.surname + "', '" +
                this.email + "', '" +
                this.phone + "', '" +
                this.eircode + "')";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void UpdateCustomer()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "UPDATE Customers SET " +
                "Forename = '" + this.forename + "'," +
                "Surname = '" + this.surname + "', " +
                "Email = '" + this.email + "', " +
                "Phone = '" + this.phone + "', " +
                "Eircode = '" + this.eircode + "' " +
                "WHERE CustomerID = " + this.customerID;

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            conn.Open();

            int rowsAffected = cmd.ExecuteNonQuery();

            conn.Close();
        }


        public static bool IsValidForename(string forename, TextBox txtForename)
        {
            bool result = false;


            if (!String.IsNullOrEmpty(forename))
            {
                if (forename.Length < 20)
                {
                    foreach (char c in forename)
                    {
                        if (!Char.IsLetter(c))
                        {
                            result = false;
                            MessageBox.Show("Forename Must Consist Of Letters Only", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            txtForename.Focus();
                            break;
                        }
                        result = true;
                    }
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid Forename Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtForename.Focus();
                }

            }
            else
            {
                result = false;
                MessageBox.Show("Forename Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtForename.Focus();
            }
            return result;
        }
        public static bool IsValidSurname(string surname, TextBox txtSurname)
        {
            bool result = false;


            if (!String.IsNullOrEmpty(surname))
            {
                if (surname.Length < 20)
                {
                    foreach (char c in surname)
                    {
                        if (!Char.IsLetter(c))
                        {
                            result = false;
                            MessageBox.Show("Surname Must Consist Of Letters Only", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            txtSurname.Focus();
                            break;
                        }
                        result = true;
                    }
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid Surname Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtSurname.Focus();
                }

            }
            else
            {
                result = false;
                MessageBox.Show("Surname Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtSurname.Focus();
            }
            return result;
        }
        public static bool IsValidEmail(string email, TextBox txtEmail)
        {
            bool result = false;

            Regex emailRegex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$", RegexOptions.IgnoreCase);
            if (!String.IsNullOrEmpty(email))
            {
                if (emailRegex.IsMatch(email))
                {
                    result = true;
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid Email Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtEmail.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("Email Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtEmail.Focus();
            }
            return result;
        }
        public static bool IsValidPhone(string phone, TextBox txtPhone)
        {
            bool result = false;
            if (!String.IsNullOrEmpty(phone))
            {
                if (phone.Length <= 15 && phone.Length >= 6)
                {
                    foreach (char c in phone)
                    {
                        if (!Char.IsDigit(c))
                        {
                            result = false;
                            MessageBox.Show("Invalid Phone Number", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            txtPhone.Focus();
                            break;
                        }
                        result = true;
                    }
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid Phone Number", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtPhone.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("Phone Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtPhone.Focus();
            }
            return result;
        }
        public static bool IsValidEircode(string eircode, TextBox txtEircode)
        {
            Regex eircodeRegex = new Regex(@"^([AC-FHKNPRTV-Y]{1}[0-9]{2}|D6W)[ ]?[0-9AC-FHKNPRTV-Y]{4}$", RegexOptions.IgnoreCase);

            bool result;
            if (!String.IsNullOrEmpty(eircode))
            {
                if (eircodeRegex.IsMatch(eircode))
                {
                    result = true;
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid Eircode", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtEircode.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("Eircode Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtEircode.Focus();
            }

            return result;
        }
        public static bool IsValidCustomerID(string id, TextBox txtCustomerID)
        {
            bool result = false;
            int custID;
            if (!String.IsNullOrEmpty(id))
            {
                foreach (char c in id)
                {
                    if (!Char.IsDigit(c))
                    {
                        MessageBox.Show("Invalid ID - Must Be Digit", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtCustomerID.Focus();
                        return false;
                    }
                }
                custID = Convert.ToInt32(id);
                OracleConnection conn = new OracleConnection(DBConnect.oradb);
                OracleCommand cmd = new OracleCommand("SELECT COUNT(*) FROM Customers WHERE CustomerID = " + custID, conn);
                conn.Open();
                int customersFound = Convert.ToInt32(cmd.ExecuteScalar());

                if (customersFound > 0)
                {
                    result = true;
                }
                else
                {
                    result = false;
                    MessageBox.Show("Customer of this ID does not exist", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtCustomerID.Focus();
                }
            }
            return result;
        }

        public static DataSet SearchCustomers(String searchPhrase)
        {
            //Open a db connection
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            //Determine the SQL query to be executed
            String sqlQuery = "SELECT CustomerID, Forename, Surname, Email, Phone, Eircode FROM Customers " +
                "WHERE Forename LIKE '%" + searchPhrase + "%' OR " +
                "Surname LIKE '%" + searchPhrase + "%' OR " +
                "Email LIKE '%" + searchPhrase + "%' OR " +
                "Phone LIKE '%" + searchPhrase + "%' OR " +
                "Eircode LIKE '%" + searchPhrase + "%'";

            //Execute the SQL query (OracleCommand)
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            //Close db connection
            conn.Close();

            return ds;

        }

        public static DataSet GetFilteredCustomers(String custIDAsString, String forename, String surname, String email, String phone, String eircode, String phrase)
        {
            //Open a db connection
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            //Determine the SQL query to be executed
            String sqlQuery = DetermineSQLQuery(custIDAsString, forename, surname, email, phone, eircode, phrase);


            //Execute the SQL query (OracleCommand)
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "customer");

            //Close db connection
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
    }
}
