using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using System.Windows.Forms;

namespace ToolSYS
{
    class Rate
    {
        private String categoryCode;
        private String categoryDesc;
        private decimal rate;


        public Rate()
        {
            this.categoryCode = "";
            this.categoryDesc = "";
            this.rate = 0;
        }

        public Rate(String categoryCode, String categoryDesc, decimal rate)
        {
            this.categoryCode = categoryCode;
            this.categoryDesc = categoryDesc;
            this.rate = rate;
        }

        public String getCategoryCode()
        {
            return this.categoryCode;
        }
        public String getCategoryDesc()
        {
            return this.categoryDesc;
        }
        public decimal getRate()
        {
            return this.rate;
        }

        public void setCategoryCode(String categoryCode)
        {
            this.categoryCode = categoryCode;
        }
        public void setCategoryDesc(String categoryDesc)
        {
            this.categoryDesc = categoryDesc;
        }
        public void setRate(decimal rate)
        {
            this.rate = rate;
        }

        public static bool IsValidCategoryCode(TextBox txtCategoryCode)
        {
            Boolean result = false;

            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            OracleCommand cmd = new OracleCommand("SELECT COUNT(*) FROM Rates WHERE CategoryCode = '" + txtCategoryCode.Text + "'", conn);
            conn.Open();
            int categoriesFound = Convert.ToInt32(cmd.ExecuteScalar());
            if (!(categoriesFound > 0))
            {
                if (!String.IsNullOrEmpty(txtCategoryCode.Text))
                {
                    if (txtCategoryCode.TextLength == 2)
                    {
                        foreach (char c in txtCategoryCode.Text)
                        {
                            if (!Char.IsLetter(c))
                            {
                                result = false;
                                MessageBox.Show("Category Code Must Consist Of Letters Only", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                txtCategoryCode.Focus();
                                break;
                            }
                            result = true;
                        }
                    }
                    else
                    {
                        result = false;
                        MessageBox.Show("Category Code Must Consist Of Two Letters", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtCategoryCode.Focus();
                    }
                }
                else
                {
                    result = false;
                    MessageBox.Show("Category Code Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtCategoryCode.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("A Tool With This Category Code Already Exists", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtCategoryCode.Focus();
            }


            return result;
        }

        public static bool IsValidCategoryDesc(TextBox txtCategoryDesc)
        {
            bool result;
            if (!String.IsNullOrEmpty(txtCategoryDesc.Text))
            {
                if (txtCategoryDesc.TextLength <= 30)
                {
                    result = true;
                }
                else
                {
                    result = false;
                    MessageBox.Show("Description Must Not Be Longer Than 30 Characters", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtCategoryDesc.Focus();
                }
            }
            else
            {
                result = false;
                MessageBox.Show("Description Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtCategoryDesc.Focus();
            }
            return result;
        }

        public void SetToolCategory()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "INSERT INTO Rates Values ('" +
                this.categoryCode + "', '" +
                this.categoryDesc + "', " +
                this.rate + ")";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();

            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public static bool IsValidRate(TextBox txtRate)
        {
            bool result = false;

            if (!String.IsNullOrEmpty(txtRate.Text))
            {
                if (float.TryParse(txtRate.Text, out _))
                {
                    if (float.Parse(txtRate.Text) >= 1)
                    {
                        result = true;
                    }
                    else
                    {
                        result = false;
                        MessageBox.Show("Rate Must Be Greater than '0'", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        txtRate.Focus();
                    }
                }
                else
                {
                    MessageBox.Show("Rate Must Be A Number", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtRate.Focus();
                    return false;
                }
            }
            else
            {
                result = false;
                MessageBox.Show("Rate Must Be Entered", "Invalid", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txtRate.Focus();
            }
            return result;
        }

        public static void LoadCategories(ComboBox cbo)
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "SELECT * FROM Rates ORDER BY CategoryCode";
            
            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            conn.Open();
            OracleDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                cbo.Items.Add(dr.GetString(0) + " - " + dr.GetString(1));
            }

            conn.Close();
        }

        public void GetRateDetails(String categoryCode)
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "SELECT * FROM Rates WHERE CategoryCode = '" + categoryCode + "'";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);
            
            conn.Open();

            OracleDataReader dr = cmd.ExecuteReader();
            dr.Read();
            setCategoryDesc(dr.GetString(1));
            setRate(dr.GetDecimal(2));

            conn.Close();
        }


        public void UpdateRate()
        {
            OracleConnection conn = new OracleConnection(DBConnect.oradb);

            String sqlQuery = "UPDATE Rates SET " + 
                "CategoryDesc = '" + this.categoryDesc + "'," + 
                "Rate = " + this.rate + " " +
                "WHERE CategoryCode = '" + this.categoryCode + "'";

            OracleCommand cmd = new OracleCommand(sqlQuery, conn);

            conn.Open();

            int rowsAffected = cmd.ExecuteNonQuery();

            Console.WriteLine(rowsAffected);

            conn.Close();
        }



    }
}
