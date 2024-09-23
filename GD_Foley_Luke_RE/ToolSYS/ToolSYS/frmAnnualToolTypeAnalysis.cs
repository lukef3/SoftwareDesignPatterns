using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Oracle.ManagedDataAccess.Client;

namespace ToolSYS
{
    public partial class frmAnnualToolTypeAnalysis : Form
    {
        public frmAnnualToolTypeAnalysis()
        {
            InitializeComponent();
        }
        private void frmAnnualToolTypeAnalysis_Load(object sender, EventArgs e)
        {
            Rate.LoadCategories(cboCategories);
            chtData.Visible = false;
            cboYears.Items.Add("2023");
            cboYears.Items.Add("2024");
            cboYears.Items.Add("2025");
            chtData.Titles.Add("Yearly Revenue");
            this.AcceptButton = btnConfirm;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if(cboCategories.SelectedIndex >=0 && cboYears.SelectedIndex >= 0)
            {
                FillChart(Convert.ToInt32(cboYears.SelectedItem.ToString().Substring(2, 2)), cboCategories.SelectedItem.ToString().Substring(0, 2));
            }
            else
            {
                MessageBox.Show("Please enter year and category", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FillChart(int year, String categoryCode)
        {

            String sqlQuery = "SELECT TO_CHAR(TransactionDate, 'YYYY-MM') AS Month, COUNT(*) AS NumRentals FROM Rentals " +
                "JOIN RentalItems ON Rentals.RentalID = RentalItems.RentalID " +
                "JOIN Tools ON RentalItems.ToolID = Tools.ToolID " +
                "WHERE TransactionDate LIKE '%" + year + "' AND Tools.CategoryCode = '" + categoryCode + "'" +
                "GROUP BY TO_CHAR(TransactionDate, 'YYYY-MM') " +
                "ORDER BY Month";

            DataTable dt = new DataTable();

            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            OracleDataAdapter da = new OracleDataAdapter(cmd);

            da.Fill(dt);

            conn.Close();

            //Array size 12 since there are 12 months in a year
            string[] Months = new string[12];
            decimal[] Amounts = new decimal[12];

            //pre-fill each array; Months[] with month name; Amounts[] with zero values
            for (int i = 0; i < 12; i++)
            {
                Months[i] = getMonth(i + 1);
                Amounts[i] = 0;
            }
            //Next, save the amounts returned in Query to the appropriate element in Amounts[]
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Amounts[i] = Convert.ToDecimal(dt.Rows[i][1]);
            }
            chtData.ChartAreas[0].AxisX.MajorGrid.LineWidth = 0;
            chtData.ChartAreas[0].AxisY.MajorGrid.LineWidth = 0;
            chtData.ChartAreas[0].AxisX.Interval = 0;
            chtData.Series[0].LegendText = cboCategories.SelectedItem.ToString();
            chtData.Series[0].Points.DataBindXY(Months, Amounts);

            chtData.ChartAreas["ChartArea1"].AxisX.LabelStyle.Format = "C";
            //chtData.Series[0].Points[0] = "XXX";
            chtData.Series[0].Label = "#VALY";

            chtData.Visible = true;


        }

        public String getMonth(int month)
        {
            String[] months = { "OTH", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC" };
            if (month >= 1 && month <= 12)
            {
                return months[month];
            }
            else
            {
                return months[0];
            }
        }




        private void SetToolCategoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.SetToolCategory(this);
        }
        private void UpdateToolRateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateRate(this);
        }
        private void AddToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddTool(this);
        }
        private void UpdateToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateTool(this);
        }
        private void RemoveToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RemoveTool(this);
        }
        private void ViewToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewTools(this);
        }
        private void AddCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.AddCustomer(this);
        }
        private void UpdateCustomerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.UpdateCustomer(this);
        }
        private void viewCustomersToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewCustomers(this);
        }
        private void RentToolToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RentTools(this);
        }
        private void ReturnToolsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ReturnTools(this);
        }
        private void ViewRentalsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ViewRentals(this);
        }
        private void AnnualRevenueAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.RevenueAnalysis(this);
        }
        private void AnnualToolTypeAnalysisToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.ToolTypeAnalysis(this);
        }
        private void MainMenuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Navigation.MainMenu(this);
        }

       
    }
}
