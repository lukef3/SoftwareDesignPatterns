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
using ToolSYS.Business.Services;

namespace ToolSYS.Presentation
{
    public partial class frmRemoveTool : Form
    {
        private ToolService toolService;
        public frmRemoveTool()
        {
            InitializeComponent();
            toolService = new ToolService();   
        }

        private void frmRemoveTool_Load(object sender, EventArgs e)
        {
            RefreshGridView();
            this.AcceptButton = btnConfirm;
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            DialogResult confirmRemove = MessageBox.Show("Are you sure you want to remove this tool?", "Confirm", MessageBoxButtons.YesNo);

            if (confirmRemove == DialogResult.Yes)
            {
                try
                {
                    toolService.RemoveTool(Convert.ToInt32(txtToolID.Text));
                    MessageBox.Show("Tool Successfully Removed", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtToolID.Clear();
                    RefreshGridView();
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"{ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void RefreshGridView()
        {
            dgvTools.DataSource = toolService.GetAvailableTools().Tables["tool"];
            dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
        }

        private void dgvTools_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtToolID.Text = dgvTools.CurrentRow.Cells[0].Value.ToString();
        }


        private void dgvTools_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvTools.CurrentRow != null)
            {
                DialogResult confirmRemove = MessageBox.Show("Are you sure you want to remove this tool?", "Confirm", MessageBoxButtons.YesNo);

                if (confirmRemove == DialogResult.Yes)
                {
                    try
                    {
                        int toolID = int.Parse(dgvTools.CurrentRow.Cells[0].Value.ToString());
                        toolService.RemoveTool(toolID);

                        MessageBox.Show("Tool Successfully Removed", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        RefreshGridView();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Error: {ex.Message}", "Remove Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
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
    }
}
