namespace ToolSYS.Entities
{
    public class Customer(int customerId, string forename, string surname, string email, string phone, string eircode)
    {
        public int customerId { get; set; } = customerId;
        public string forename { get; set; } = forename;
        public string surname { get; set; } = surname;
        public string email { get; set; } = email;
        public string phone { get; set; } = phone;
        public string eircode { get; set; } = eircode;

        public Customer() : this(0, "", "", "", "", "")
        {
        }
    }
}
