using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.ManagedDataAccess.Client;

namespace ToolSYS
{
    class RentalItem
    {
        private int rentalID;
        private int toolID;
        private DateTime rentDate;
        private DateTime returnDate;
        private decimal rentalFee;

        public RentalItem(int rentallID, int toolID, DateTime rentDate, DateTime returnDate, decimal rentalFee)
        {
            this.rentalID = rentallID;
            this.toolID = toolID;
            this.rentDate = rentDate;
            this.returnDate = returnDate;
            this.rentalFee = rentalFee;
        }

        public RentalItem() 
        {
            this.rentalID = 0;
            this.toolID = 0;
            this.rentDate = DateTime.MinValue;
            this.returnDate = DateTime.MinValue;
            this.rentalFee = 0;
        }

        public int GetRentallID()
        {
            return this.rentalID;
        }

        public int GetToolID()
        {
            return this.toolID;
        }

        public DateTime GetRentDate()
        {
            return this.rentDate;
        }

        public DateTime GetReturnDate()
        {
            return this.returnDate;
        }

        public decimal GetRentalFee()
        {
            return this.rentalFee;
        }

        public void SetRentallID(int rentalID)
        {
            this.rentalID = rentalID;
        }

        public void SetToolID(int toolID)
        {
            this.toolID = toolID;
        }

        public void SetRentDate(DateTime rentDate)
        {
            this.rentDate = rentDate;
        }

        public void SetReturnDate(DateTime returnDate)
        {
            this.returnDate = returnDate;
        }

        public void SetRentalFee(decimal rentalFee)
        {
            this.rentalFee = rentalFee;
        }

        public static decimal CalculateRentalFee(String categoryCode, DateTime from, DateTime to)
        {
            decimal rentalFee;

            int daysRented = Convert.ToInt32((to - from).TotalDays + 1);

            Rate rate = new Rate();
            rate.GetRateDetails(categoryCode);
            decimal dailyRate = rate.getRate();

            rentalFee = daysRented * dailyRate;
            Console.WriteLine(rentalFee);
            return rentalFee;
        }

        public void AddRentalItem()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "INSERT INTO RentalItems Values (" +
                this.rentalID + ", " +
                this.toolID + ", '" +
                String.Format("{0:dd-MMM-yy}", rentDate) + "', '" +
                String.Format("{0:dd-MMM-yy}", returnDate) + "', " + 
                this.rentalFee + ")";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            cmd.ExecuteNonQuery();

            sqlQuery = "UPDATE Tools SET ToolStatus = 'O' WHERE ToolID = " + this.toolID;

            cmd = new OracleCommand(sqlQuery, conn);
            cmd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
