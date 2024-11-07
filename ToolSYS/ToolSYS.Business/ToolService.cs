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
            if (string.IsNullOrEmpty(tool.toolDescription) || tool.toolDescription.Length > 50)
                throw new ArgumentException("Tool description must be between 1 and 50 characters.");

            if (string.IsNullOrEmpty(tool.categoryCode))
                throw new ArgumentException("Category code is required.");

            _ToolData.AddTool(tool);
        }

        public void UpdateTool(Tool tool)
        {
            if (tool.toolID <= 0)
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

        public bool IsValidDescription(string description)
        {
            if (string.IsNullOrEmpty(description))
            {
                throw new ArgumentException("Description must be entered.");
            }
            if (description.Length > 50)
            {
                throw new ArgumentException("Description must not exceed 50 characters.");
            }
            return true;
        }

        public bool IsValidManufacturer(string manufacturer)
        {
            if (string.IsNullOrEmpty(manufacturer))
            {
                throw new ArgumentException("Manufacturer must be entered.");
            }

            return true;
        }

        public bool IsValidToolID(string toolID)
        {

            if (!string.IsNullOrEmpty(toolID))
            {
                if (!toolID.All(char.IsDigit))
                {
                    throw new ArgumentException("Tool ID must consist of digits only.");
                }

                if (!_ToolData.DoesToolIDExist(int.Parse(toolID)))
                {
                    throw new ArgumentException("Tool ID does not exist.");
                }
            }

            return true;
        }
    }
}
