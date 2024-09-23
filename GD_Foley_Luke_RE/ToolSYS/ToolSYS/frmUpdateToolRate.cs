using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ToolSYS
{
    public partial class frmUpdateToolRate : Form
    {
        Rate rate = new Rate();

        public frmUpdateToolRate()
        {
            InitializeComponent();
        }

        private void FrmUpdateToolRate_Load(object sender, EventArgs e)
        {
            //Retrieve tool categories from database
            Rate.LoadCategories(cboCategories);
        }

        private void CboCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

            if(cboCategories.SelectedIndex == -1)
            {
                groupBox2.Visible = false;
            }
            else
            {
                //Retrieve  rate from database
                String categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                rate.GetRateDetails(categoryCode);

                txtCategoryDescription.Text = rate.getCategoryDesc();
                txtRate.Text = rate.getRate().ToString();

                groupBox2.Visible = true;
            }
        }
    
        private void BtnConfirm_Click(object sender, EventArgs e)
        {
            if (Rate.IsValidCategoryDesc(txtCategoryDescription))
            {
                if (Rate.IsValidRate(txtRate))
                {
                    rate.setCategoryCode(cboCategories.SelectedItem.ToString().Substring(0, 2));
                    rate.setCategoryDesc(txtCategoryDescription.Text);
                    rate.setRate(Convert.ToDecimal(txtRate.Text));
                    rate.UpdateRate();
                    
                    MessageBox.Show("Tool Category Has Been Successfully Updated", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    groupBox2.Visible = false;
                    cboCategories.SelectedIndex = -1;
                    cboCategories.Items.Clear();
                    Rate.LoadCategories(cboCategories);
                }
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

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }
    }
}
