namespace ToolSYS.Entities
{
    public class Rate(string categoryCode, string categoryDesc, decimal rate)
    {
        public string categoryCode { get; set; } = categoryCode;
        public string categoryDesc { get; set; } = categoryDesc;
        public decimal rate { get; set; } = rate;

        public Rate() : this("", "", 0)
        {
        }
    }
}
