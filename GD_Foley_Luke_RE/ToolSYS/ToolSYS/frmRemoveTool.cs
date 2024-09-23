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
    public partial class frmRemoveTool : Form
    {
        public frmRemoveTool()
        {
            InitializeComponent();
        }

        private void frmRemoveTool_Load(object sender, EventArgs e)
        {
            RefreshGridView();
            this.AcceptButton = btnConfirm;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Tool.IsValidToolID(txtToolID.Text, txtToolID))
            {
                var confirmRemove = MessageBox.Show("Are you sure you want to remove this tool?", "Confirm", MessageBoxButtons.YesNo);

                if (confirmRemove == DialogResult.Yes)
                {
                    Tool.RemoveTool(Convert.ToInt32(txtToolID.Text));
                    MessageBox.Show("Tool Successfully Removed", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtToolID.Clear();
                    RefreshGridView();
                }
            }
        }

        private void RefreshGridView()
        {
            dgvTools.DataSource = Tool.getAvailableTools().Tables["tool"];
            dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
        }



        

        private void dgvTools_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtToolID.Text = dgvTools.CurrentRow.Cells[0].Value.ToString();
        }


        private void dgvTools_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            var confirmRemove = MessageBox.Show("Are you sure you want to remove this tool?", "Confirm", MessageBoxButtons.YesNo);

            if (confirmRemove == DialogResult.Yes)
            {
                Tool.RemoveTool(Convert.ToInt32(txtToolID.Text));
                MessageBox.Show("Tool Successfully Removed", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtToolID.Clear();
                RefreshGridView();
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
