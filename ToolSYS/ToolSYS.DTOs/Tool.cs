namespace ToolSYS.Entities
{
    public class Tool
    {
        public int toolId { get; set; }
        public string categoryCode { get; set; }
        public string toolDescription { get; set; }
        public string toolManufacturer { get; set; }
        public string toolStatus { get; set; }

        public Tool()
        {
            this.toolId = 0;
            this.categoryCode = "";
            this.toolDescription = "";
            this.toolManufacturer = "";
            this.toolStatus = "I";
        }

        public Tool(int toolId, string categoryCode, string toolDescription, string toolManufacturer)
        {
            this.toolId = toolId;
            this.categoryCode = categoryCode;
            this.toolDescription = toolDescription;
            this.toolManufacturer = toolManufacturer;
            this.toolStatus = "I";
        }
    }
}
