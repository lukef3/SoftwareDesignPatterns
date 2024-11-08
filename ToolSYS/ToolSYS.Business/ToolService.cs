using Oracle.ManagedDataAccess.Client;
using System.Data;
using ToolSYS.Data;
using ToolSYS.DTOs;

namespace ToolSYS.Business
{
    public class ToolService
    {
        private readonly ToolData _ToolData;

        public ToolService()
        {
            _ToolData = new ToolData();
        }

        public void AddTool(Tool tool)
        {
            ValidateTool(tool);

            _ToolData.AddTool(tool);
        }

        public void UpdateTool(Tool tool)
        {
            ValidateTool(tool);

            _ToolData.UpdateTool(tool);
        }

        private void ValidateTool(Tool tool)
        {
            if (string.IsNullOrEmpty(tool.toolDescription) || tool.toolDescription.Length > 50)
                throw new ArgumentException("Tool description must be between 1 and 50 characters.");

            if (string.IsNullOrEmpty(tool.categoryCode))
                throw new ArgumentException("Category code is required.");

            if (string.IsNullOrEmpty(tool.toolManufacturer) || tool.toolManufacturer.Length > 50)
            {
                throw new ArgumentException("Tool manufacturer must be between 1 and 50 characters.");
            }

            return;
        }

        public void RemoveTool(int toolID)
        {
            if (_ToolData.DoesToolIDExist(toolID))
            {
                _ToolData.RemoveTool(toolID);
            }
            else {
                throw new ArgumentException("Invalid Tool ID");
            }
        }
        public DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase)
        {
            return _ToolData.GetFilteredTools(toolIDAsString, categoryCode, description, manufacturer, status, phrase);
        }

        public DataSet GetAvailableTools()
        {
            return _ToolData.GetAvailableTools();
        }

        public DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to)
        {
            return _ToolData.GetRentableTools(categoryCode, from, to);
        }

        public int GetNextToolID()
        {
            return _ToolData.GetNextToolID();
        }
    }
}
