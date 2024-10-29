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
            if (string.IsNullOrEmpty(tool.ToolDescription) || tool.ToolDescription.Length > 50)
                throw new ArgumentException("Tool description must be between 1 and 50 characters.");

            if (string.IsNullOrEmpty(tool.CategoryCode))
                throw new ArgumentException("Category code is required.");

            _ToolData.AddTool(tool);
        }

        public void UpdateTool(Tool tool)
        {
            if (tool.ToolID <= 0)
                throw new ArgumentException("Invalid tool ID.");

            _ToolData.UpdateTool(tool);
        }

        public void RemoveTool(int toolID)
        {
            if (toolID <= 0)
                throw new ArgumentException("Invalid tool ID.");

            _ToolData.RemoveTool(toolID);
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
