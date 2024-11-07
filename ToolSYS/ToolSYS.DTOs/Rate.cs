namespace ToolSYS.DTOs
{
    public class Rate
    {
        public string categoryCode { get; set; }
        public string categoryDesc { get; set; }
        public decimal rate { get; set; }

        public Rate()
        {
            this.categoryCode = "";
            this.categoryDesc = "";
            this.rate = 0;
        }

        public Rate(string categoryCode, string categoryDesc, decimal rate)
        {
            this.categoryCode = categoryCode;
            this.categoryDesc = categoryDesc;
            this.rate = rate;
        }   
    }
}
