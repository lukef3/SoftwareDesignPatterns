using System.Data;
using Oracle.ManagedDataAccess.Client;
using ToolSYS.Entities;

namespace ToolSYS.Data
{
    public interface IToolData
    {
        void AddTool(Tool tool);
        void UpdateTool(Tool tool);
        void RemoveTool(int toolID);
        int GetNextToolID();
        DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase);
        DataSet GetAvailableTools();
        DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to);
        bool ToolExists (int toolID);
    }

    public class ToolData : IToolData
    {
        private readonly string connectionString = DBConnect.oradb;

        public void AddTool(Tool tool)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "INSERT INTO Tools (ToolID, CategoryCode, ToolDescription, ToolManufacturer, ToolStatus) " +
                                    "VALUES (:toolID, :categoryCode, :toolDescription, :toolManufacturer, :toolStatus)";

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":toolID", tool.toolID);
                cmd.Parameters.Add(":categoryCode", tool.categoryCode.Substring(0, 2));
                cmd.Parameters.Add(":toolDescription", tool.toolDescription);
                cmd.Parameters.Add(":toolManufacturer", tool.toolManufacturer);
                cmd.Parameters.Add(":toolStatus", tool.toolStatus);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void UpdateTool(Tool tool)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "UPDATE Tools SET " +
                                    "CategoryCode = :categoryCode, " +
                                    "ToolDescription = :toolDescription, " +
                                    "ToolManufacturer = :toolManufacturer, " +
                                    "ToolStatus = :toolStatus " +
                                    "WHERE ToolID = :toolID";

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryCode", tool.categoryCode);
                cmd.Parameters.Add(":toolDescription", tool.toolDescription);
                cmd.Parameters.Add(":toolManufacturer", tool.toolManufacturer);
                cmd.Parameters.Add(":toolStatus", tool.toolStatus);
                cmd.Parameters.Add(":toolID", tool.toolID);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void RemoveTool(int toolID)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "UPDATE Tools SET ToolStatus = 'U' WHERE ToolID = :toolID";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":toolID", toolID);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public int GetNextToolID()
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "SELECT MAX(ToolID) FROM Tools";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                conn.Open();

                object result = cmd.ExecuteScalar();
                return (result == DBNull.Value) ? 1 : Convert.ToInt32(result) + 1;
            }
        }

        public DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = DetermineSQLQuery(toolIDAsString, categoryCode, description, manufacturer, status, phrase);

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                OracleDataAdapter da = new OracleDataAdapter(cmd);

                DataSet ds = new DataSet();
                da.Fill(ds, "tool");

                return ds;
            }
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


        public DataSet GetAvailableTools()
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer FROM Tools " +
                "WHERE ToolStatus = 'I'";

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                OracleDataAdapter da = new OracleDataAdapter(cmd);

                DataSet ds = new DataSet();
                da.Fill(ds, "tool");

                return ds;
            }
        }

        public DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = @"
                    SELECT * FROM Tools
                    WHERE CategoryCode = :categoryCode
                    AND ToolStatus = 'I'
                    AND ToolID NOT IN (
                    SELECT ToolID FROM RentalItems
                    WHERE (:fromDate BETWEEN RentDate AND ReturnDate)
                         OR (:toDate BETWEEN RentDate AND ReturnDate)
                         OR (RentDate BETWEEN :fromDate AND :toDate)
                         OR (ReturnDate BETWEEN :fromDate AND :toDate)
              )";

                using (OracleCommand cmd = new OracleCommand(sqlQuery, conn))
                {
                    cmd.Parameters.Add(new OracleParameter(":categoryCode", categoryCode));
                    cmd.Parameters.Add(new OracleParameter(":fromDate", from.ToString("dd-MMM-yy")));
                    cmd.Parameters.Add(new OracleParameter(":toDate", to.ToString("dd-MMM-yy")));

                    OracleDataAdapter da = new OracleDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "tool");

                    return ds;
                }
            }
        }
        public bool ToolExists(int toolID)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "SELECT COUNT(*) FROM Tools WHERE ToolID = :toolID AND ToolStatus = 'I'";
                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":toolID", toolID);

                conn.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                conn.Close();

                return count > 0;
            }
        }

    }
}

