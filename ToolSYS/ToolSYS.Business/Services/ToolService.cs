using Oracle.ManagedDataAccess.Client;
using System.Data;
using ToolSYS.Business.Factories;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public class ToolService
    {
        private readonly ToolData toolData;

        public ToolService()
        {
            toolData = new ToolData();
        }

        public void AddTool(Tool tool)
        {

            ValidateTool(tool, isUpdate: false);
            toolData.AddTool(tool);
        }

        public void UpdateTool(Tool tool)
        {
            ValidateTool(tool, isUpdate: true);
            toolData.UpdateTool(tool);
        }

        public void RemoveTool(int toolID)
        {
            if (!ToolData.DoesToolIDExist(toolID))
                throw new ArgumentException("Invalid Tool ID.");

            toolData.RemoveTool(toolID);
        }

        public DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase)
        {
            return toolData.GetFilteredTools(toolIDAsString, categoryCode, description, manufacturer, status, phrase);
        }

        public DataSet GetAvailableTools()
        {
            return toolData.GetAvailableTools();
        }

        public DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to)
        {
            return toolData.GetRentableTools(categoryCode, from, to);
        }

        public int GetNextToolID()
        {
            return toolData.GetNextToolID();
        }

        private static void ValidateTool(Tool tool, bool isUpdate)
        {
            if (string.IsNullOrEmpty(tool.toolDescription) || tool.toolDescription.Length > 50)
                throw new ArgumentException("Tool description must be between 1 and 50 characters.");

            if (string.IsNullOrEmpty(tool.categoryCode))
                throw new ArgumentException("Category code is required.");

            if (!tool.categoryCode.All(char.IsLetterOrDigit))
                throw new ArgumentException("Category code must consist of letters and digits only.");

            if (string.IsNullOrEmpty(tool.toolManufacturer) || tool.toolManufacturer.Length > 50)
                throw new ArgumentException("Tool manufacturer must be between 1 and 50 characters.");

            if (!isUpdate && ToolData.DoesToolIDExist(tool.toolID))
                throw new ArgumentException("A tool with this ID already exists.");
        }
    }
}
