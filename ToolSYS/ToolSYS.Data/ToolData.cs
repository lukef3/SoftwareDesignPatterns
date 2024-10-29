using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;
using ToolSYS.DTOs;

namespace ToolSYS.Data
{
    public class ToolData
    {
        private readonly string connectionString = DBConnect.oradb;

        public void AddTool(Tool tool)
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "INSERT INTO Tools (ToolID, CategoryCode, ToolDescription, ToolManufacturer, ToolStatus) " +
                                    "VALUES (:toolID, :categoryCode, :toolDescription, :toolManufacturer, :toolStatus)";

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":toolID", tool.ToolID);
                cmd.Parameters.Add(":categoryCode", tool.CategoryCode.Substring(0, 2));
                cmd.Parameters.Add(":toolDescription", tool.ToolDescription);
                cmd.Parameters.Add(":toolManufacturer", tool.ToolManufacturer);
                cmd.Parameters.Add(":toolStatus", tool.ToolStatus);

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
                cmd.Parameters.Add(":categoryCode", tool.CategoryCode);
                cmd.Parameters.Add(":toolDescription", tool.ToolDescription);
                cmd.Parameters.Add(":toolManufacturer", tool.ToolManufacturer);
                cmd.Parameters.Add(":toolStatus", tool.ToolStatus);
                cmd.Parameters.Add(":toolID", tool.ToolID);

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

        private string DetermineSQLQuery(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase)
        {
            string sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer, ToolStatus FROM Tools WHERE 1 = 1";

            if (!string.IsNullOrEmpty(toolIDAsString))
            {
                sqlQuery += " AND ToolID = :toolID";
            }
            if (!string.IsNullOrEmpty(categoryCode))
            {
                sqlQuery += " AND LOWER(CategoryCode) LIKE LOWER(:categoryCode)";
            }
            if (!string.IsNullOrEmpty(description))
            {
                sqlQuery += " AND LOWER(ToolDescription) LIKE LOWER(:description)";
            }
            if (!string.IsNullOrEmpty(manufacturer))
            {
                sqlQuery += " AND LOWER(ToolManufacturer) LIKE LOWER(:manufacturer)";
            }
            if (!string.IsNullOrEmpty(status))
            {
                sqlQuery += " AND ToolStatus = :status";
            }
            if (!string.IsNullOrEmpty(phrase))
            {
                sqlQuery += " AND (LOWER(CategoryCode) LIKE LOWER(:phrase) " +
                            "OR LOWER(ToolDescription) LIKE LOWER(:phrase) " +
                            "OR LOWER(ToolManufacturer) LIKE LOWER(:phrase))";
            }

            return sqlQuery;
        }

        public DataSet GetAvailableTools()
        {
            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                string sqlQuery = "SELECT ToolID, CategoryCode, ToolDescription, ToolManufacturer FROM Tools WHERE ToolStatus = 'I'";

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
                string sqlQuery = "SELECT * FROM Tools " +
                                    "WHERE CategoryCode = :categoryCode AND ToolStatus = 'I' " +
                                    "AND ToolID NOT IN (SELECT ToolID FROM RentalItems " +
                                    "WHERE (RentDate <= :toDate AND ReturnDate >= :toDate) " +
                                    "OR (RentDate <= :fromDate AND ReturnDate >= :fromDate) " +
                                    "OR (RentDate >= :fromDate AND RentDate <= :toDate) " +
                                    "OR (ReturnDate >= :fromDate AND ReturnDate <= :toDate))";

                OracleCommand cmd = new OracleCommand(sqlQuery, conn);
                cmd.Parameters.Add(":categoryCode", categoryCode);
                cmd.Parameters.Add(":fromDate", from.ToString("dd-MMM-yy"));
                cmd.Parameters.Add(":toDate", to.ToString("dd-MMM-yy"));

                OracleDataAdapter da = new OracleDataAdapter(cmd);

                DataSet ds = new DataSet();
                da.Fill(ds, "tool");

                return ds;

            }
        }
    }
}

