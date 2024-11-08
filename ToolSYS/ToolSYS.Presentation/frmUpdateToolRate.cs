using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ToolSYS.Business;
using ToolSYS.DTOs;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace ToolSYS.Presentation
{
    public partial class frmUpdateToolRate : Form
    {
        private RateService _rateService;

        public frmUpdateToolRate()
        {
            InitializeComponent();
            _rateService = new RateService();
        }

        private void FrmUpdateToolRate_Load(object sender, EventArgs e)
        {
            LoadCategories();
        }

        private void CboCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

            if(cboCategories.SelectedIndex == -1)
            {
                groupBox2.Visible = false;
            }
            else
            {
                string categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2);
                Rate rate = _rateService.GetRateByCategoryCode(categoryCode);

                txtCategoryDescription.Text = rate.categoryDesc;
                txtRate.Text = rate.rate.ToString();

                groupBox2.Visible = true;
            }
        }
    
        private void BtnConfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Rate rate = new Rate
                {
                    categoryCode = cboCategories.SelectedItem.ToString().Substring(0, 2),
                    categoryDesc = txtCategoryDescription.Text,
                    rate = Convert.ToDecimal(txtRate.Text)
                };

                _rateService.UpdateRate(rate);

                MessageBox.Show("Tool Category Has Been Successfully Updated", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                groupBox2.Visible = false;
                cboCategories.SelectedIndex = -1;

                cboCategories.Items.Clear();
                LoadCategories();

            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void LoadCategories()
        {
            cboCategories.Items.Add("");
            DataSet categories = _rateService.GetAllCategories();

            foreach (DataRow row in categories.Tables[0].Rows)
            {
                string category = row["CategoryCode"] + " - " + row["CategoryDesc"];
                cboCategories.Items.Add(category);
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
