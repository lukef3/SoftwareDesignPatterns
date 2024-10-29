namespace ToolSYS.DTOs
{
    public class Tool
    {
        public int ToolID { get; set; }
        public string CategoryCode { get; set; }
        public string ToolDescription { get; set; }
        public string ToolManufacturer { get; set; }
        public string ToolStatus { get; set; }

        // Constructors
        public Tool()
        {
            ToolStatus = "I"; // Default status
        }

        public Tool(int toolID, string categoryCode, string toolDescription, string toolManufacturer)
        {
            ToolID = toolID;
            CategoryCode = categoryCode;
            ToolDescription = toolDescription;
            ToolManufacturer = toolManufacturer;
            ToolStatus = "I";
        }
    }
}
