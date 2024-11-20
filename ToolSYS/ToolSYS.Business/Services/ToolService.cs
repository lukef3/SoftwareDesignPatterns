﻿using Oracle.ManagedDataAccess.Client;
using System.Data;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public interface IToolService
    {
        void AddTool(Tool tool);
        void UpdateTool(Tool tool);
        void RemoveTool(int toolID);
        DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase);
        DataSet GetAvailableTools();
        DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to);
        int GetNextToolID();
    }

    public class ToolService : IToolService
    {
        private readonly IToolData _toolData;

        public ToolService(IToolData toolData)
        {
            _toolData = toolData;
        }

        public void AddTool(Tool tool)
        {

            ValidateTool(tool, isUpdate: false);
            _toolData.AddTool(tool);
        }

        public void UpdateTool(Tool tool)
        {
            ValidateTool(tool, isUpdate: true);
            _toolData.UpdateTool(tool);
        }

        public void RemoveTool(int toolID)
        {
            if (!_toolData.ToolExists(toolID))
                throw new ArgumentException("Invalid Tool ID.");

            _toolData.RemoveTool(toolID);
        }

        public DataSet GetFilteredTools(string toolIDAsString, string categoryCode, string description, string manufacturer, string status, string phrase)
        {
            return _toolData.GetFilteredTools(toolIDAsString, categoryCode, description, manufacturer, status, phrase);
        }

        public DataSet GetAvailableTools()
        {
            return _toolData.GetAvailableTools();
        }

        public DataSet GetRentableTools(string categoryCode, DateTime from, DateTime to)
        {
            return _toolData.GetRentableTools(categoryCode, from, to);
        }

        public int GetNextToolID()
        {
            return _toolData.GetNextToolID();
        }

        private void ValidateTool(Tool tool, bool isUpdate)
        {
            if (string.IsNullOrEmpty(tool.toolDescription) || tool.toolDescription.Length > 50)
                throw new ArgumentException("Tool description must be between 1 and 50 characters.");

            if (string.IsNullOrEmpty(tool.categoryCode))
                throw new ArgumentException("Category code is required.");

            if (!tool.categoryCode.All(char.IsLetterOrDigit))
                throw new ArgumentException("Category code must consist of letters and digits only.");

            if (string.IsNullOrEmpty(tool.toolManufacturer) || tool.toolManufacturer.Length > 50)
                throw new ArgumentException("Tool manufacturer must be between 1 and 50 characters.");

            if (!isUpdate && _toolData.ToolExists(tool.toolID))
                throw new ArgumentException("A tool with this ID already exists.");
        }
    }
}
