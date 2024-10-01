using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS
{
    class Tool
    {
        private int toolID;
        private String categoryCode;
        private String toolDescription;
        private String toolManufacturer;
        private String toolStatus;

        public Tool()
        {
            this.toolID = 0;
            this.categoryCode = "";
            this.toolDescription = "";
            this.toolManufacturer = "";
        }

        public Tool(int toolID, String categoryCode, String toolDescription, String toolManufacturer)
        {
            this.toolID = toolID;
            this.categoryCode = categoryCode;
            this.toolDescription = toolDescription;
            this.toolManufacturer = toolManufacturer;
            this.toolStatus = "I";
        }

        public int GetToolID()
        {
            return this.toolID;
        }
        public String GetCategory()
        {
            return this.categoryCode;
        }
        public String GetDescription()
        {
            return this.toolDescription;
        }
        public String GetManufacturer()
        {
            return this.toolManufacturer;
        }
        public String GetToolStatus()
        {
            return this.toolStatus;
        }

        public void SetToolID(int toolID)
        {
            this.toolID = toolID;
        }
        public void SetCategory(String categoryCode)
        {
            this.categoryCode = categoryCode;
        }
        public void SetDescription(String toolDescription)
        {
            this.toolDescription = toolDescription;
        }
        public void SetManufacturer(String toolManufacturer)
        {
            this.toolManufacturer = toolManufacturer;
        }
        public void SetToolStatus(String toolStatus)
        {
            this.toolStatus = toolStatus;
        }

        public static bool IsValidDescription(string desc, TextBox txtDescription)
        {
            Boolean result = false;

            if (!String.IsNullOrEmpty(desc))
            {
                if (desc.Length <= 50)
                {
                    result = true;
                }
                else
                {
                    MessageBox.Show("Description Must Not Exceed 50 Characters", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtDescription.Focus();
                }
            }
            else
            {
                MessageBox.Show("Description Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtDescription.Focus();
            }


            return result;
        }

        public static bool IsValidManufacturer(string manufacturer, TextBox txtManufacturer)
        {
            Boolean result = false;

            if (!String.IsNullOrEmpty(manufacturer))
            {
                result = true;
            }
            else
            {
                MessageBox.Show("Manufacturer Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtManufacturer.Focus();
            }
            return result;
        }

        public static bool IsValidToolID(string id, TextBox txtToolID)
        {
            bool result = false;

            if (!String.IsNullOrEmpty(id))
            {
                foreach (char c in id)
                {
                    if (!Char.IsDigit(c))
                    {
                        MessageBox.Show("Invalid ID - Must Be Digit", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtToolID.Focus();
                        return false;
                    }
                }
                OracleConnection conn = new OracleConnection(DBConnect.oradb);
                OracleCommand cmd = new OracleCommand("SELECT COUNT(*) FROM Tools WHERE ToolID = " + Convert.ToInt32(txtToolID.Text) + " AND ToolStatus = 'I'", conn);
                conn.Open();
                int toolsFound = Convert.ToInt32(cmd.ExecuteScalar());

                if (toolsFound > 0)
                {
                    result = true;
                }
                else
                {
                    result = false;
                    MessageBox.Show("Invalid ID", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtToolID.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("ID Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtToolID.Focus();
            }
            return result;
        }


        public void AddTool()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "INSERT INTO Tools Values (" +
                this.toolID + ", '" +
                this.categoryCode.Substring(0, 2) + "', '" +
                this.toolDescription + "', '" +
                this.toolManufacturer + "', '" +
                this.toolStatus + "')";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static int GetNextToolID()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);
            String sqlQuery = "SELECT MAX(ToolID) FROM Tools";
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            OracleDataReader dr = cmd.ExecuteReader();

            int NextToolID;

            dr.Read();

            if (dr.IsDBNull(0))
            {
                NextToolID = 1;
            }
            else
            {
                NextToolID = dr.GetInt32(0) + 1;
            }
            conn.Close();

            return NextToolID;

        }

        public static DataSet GetFilteredTools(String toolIDAsString, String categoryCode, String description, String manufacturer, String status, String phrase)
        {
            //Open a db connection
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            //Determine the SQL query to be executed
            String sqlQuery = DetermineSQLQuery(toolIDAsString, categoryCode, description, manufacturer, status, phrase);


            //Execute the SQL query (OracleCommand)
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "tool");

            //Close db connection
            conn.Close();

            return ds;

        }

        private static String DetermineSQLQuery(String toolIDAsString, String categoryCode, String description, String manufacturer, String status, String phrase)
        {
            String sqlQuery = "";

            if (string.IsNullOrEmpty(toolIDAsString) && String.IsNullOrEmpty(categoryCode) && string.IsNullOrEmpty(description) && string.IsNullOrEmpty(manufacturer) && string.IsNullOrEmpty(status) && string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer, ToolStatus FROM Tools";
            }
            else if (!string.IsNullOrEmpty(toolIDAsString) || !string.IsNullOrEmpty(categoryCode) || !string.IsNullOrEmpty(description) || !string.IsNullOrEmpty(manufacturer) || !string.IsNullOrEmpty(status) || !string.IsNullOrEmpty(phrase))
            {
                sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer, ToolStatus FROM Tools WHERE 1 = 1";

                if (!string.IsNullOrEmpty(toolIDAsString))
                {
                    int toolID = Convert.ToInt32(toolIDAsString);
                    sqlQuery += " AND ToolID = " + toolID;
                }

                if (!string.IsNullOrEmpty(categoryCode))
                {
                    categoryCode = categoryCode.Substring(0, 2);
                    sqlQuery += " AND LOWER(CategoryCode) LIKE LOWER('" + categoryCode + "')";      //https://stackoverflow.com/questions/2876789/how-can-i-search-case-insensitive-in-a-column-using-like-wildcard
                }

                if (!string.IsNullOrEmpty(description))
                {
                    sqlQuery += " AND LOWER(ToolDescription) LIKE LOWER('%" + description + "%')";
                }

                if (!string.IsNullOrEmpty(manufacturer))
                {
                    sqlQuery += " AND LOWER(ToolManufacturer) LIKE LOWER('%" + manufacturer + "%')";
                }

                if (!string.IsNullOrEmpty(status))
                {
                    status = status.Substring(0, 1);
                    sqlQuery += " AND ToolStatus = '" + status + "'";
                }

                if (!string.IsNullOrEmpty(phrase))
                {
                    sqlQuery += " AND (LOWER(CategoryCode) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(ToolDescription) LIKE LOWER('%" + phrase + "%') " +
                        "OR LOWER(ToolManufacturer) LIKE LOWER('%" + phrase + "%'))";
                }
            }
            return sqlQuery;
        }

        public static DataSet getAvailableTools()
        {
            //Open a db connection
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            //Define the SQL query to be executed
            String sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer FROM Tools " +
                "WHERE ToolStatus = 'I'";
         

            //Execute the SQL query (OracleCommand)
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "tool");

            //Close db connection
            conn.Close();

            return ds;
        }

        public static DataSet GetRentableTools(String categoryCode, DateTimePicker from, DateTimePicker to)
        {
            //Open a db connection
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            //Define the SQL query to be executed
            String sqlQuery = "SELECT * FROM Tools " +
                "WHERE CategoryCode = '" + categoryCode + "'" +
                "AND ToolStatus = 'I'" +
                "AND ToolID NOT IN (SELECT ToolID FROM RentalItems " +
                "WHERE ((RentDate <= '" + String.Format("{0:dd-MMM-yy}", to.Value) + "'" +
                "AND ReturnDate >= '" + String.Format("{0:dd-MMM-yy}", to.Value) + "') " +
                "OR (RentDate <= '" + String.Format("{0:dd-MMM-yy}", from.Value) + "'" +
                "AND ReturnDate >= '" + String.Format("{0:dd-MMM-yy}", from.Value) + "')" +
                "OR (RentDate >= '" + String.Format("{0:dd-MMM-yy}", from.Value) + "'" +
                "AND RentDate <= '" + String.Format("{0:dd-MMM-yy}", to.Value) + "')" +
                "OR (ReturnDate >= '" + String.Format("{0:dd-MMM-yy}", from.Value) + "'" +
                "AND ReturnDate <= '" + String.Format("{0:dd-MMM-yy}", to.Value) + "')))";

            Console.WriteLine(String.Format("{0:dd-MMM-yy}", from.Value));

            //Execute the SQL query (OracleCommand)
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "tool");

            //Close db connection
            conn.Close();

            return ds;
        }

        public void UpdateTool()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "UPDATE Tools SET " +
                "CategoryCode = '" + this.categoryCode + "'," +
                "ToolDescription = '" + this.toolDescription + "', " +
                "ToolManufacturer = '" + this.toolManufacturer + "', " +
                "ToolStatus = '" + this.toolStatus + "' " +
                "WHERE ToolID = " + this.toolID;

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            conn.Open();

            int rowsAffected = cmd.ExecuteNonQuery();

            conn.Close();
        }

        public static void RemoveTool(int toolID)
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "UPDATE Tools SET " +
                "ToolStatus = 'U'" +
                "WHERE ToolID = " + toolID;

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            conn.Open();

            int rowsAffected = cmd.ExecuteNonQuery();

            Console.WriteLine(rowsAffected);

            conn.Close();
        } 
    }
}
