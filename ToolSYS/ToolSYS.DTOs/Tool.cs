namespace ToolSYS.DTOs
{
    public class Tool
    {
        public int toolID { get; set; }
        public string categoryCode { get; set; }
        public string toolDescription { get; set; }
        public string toolManufacturer { get; set; }
        public string toolStatus { get; set; }

        public Tool()
        {
            this.toolID = 0;
            this.categoryCode = "";
            this.toolDescription = "";
            this.toolManufacturer = "";
        }

        public Tool(int toolID, string categoryCode, string toolDescription, string toolManufacturer)
        {
            this.toolID = toolID;
            this.categoryCode = categoryCode;
            this.toolDescription = toolDescription;
            this.toolManufacturer = toolManufacturer;
            this.toolStatus = "I";
        }


    }
}
