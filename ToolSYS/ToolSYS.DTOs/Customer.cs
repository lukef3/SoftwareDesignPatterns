namespace ToolSYS.Entities
{
    public class Customer
    {
        public int customerID { get; set; }
        public String forename { get; set; }
        public String surname { get; set; }
        public String email { get; set; }
        public String phone { get; set; }
        public String eircode { get; set; }


        public Customer(int customerID, String forename, String surname, String email, String phone, String eircode)
        {
            this.customerID = customerID;
            this.forename = forename;
            this.surname = surname;
            this.email = email;
            this.phone = phone;
            this.eircode = eircode;
        }

        public Customer()
        {
            this.customerID = 0;
            this.forename = "";
            this.surname = "";
            this.email = "";
            this.phone = "";
            this.eircode = "";
        }
    }
}
