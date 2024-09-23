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
    public partial class frmUpdateTool : Form
    {
        public frmUpdateTool()
        {
            InitializeComponent();
        }
        Tool tool = new Tool();

        private void frmUpdateTool_Load(object sender, EventArgs e)
        {
            cboCategories.Items.Add("");
            Rate.LoadCategories(cboCategories);

            cboStatus.Items.Add("");
            cboStatus.Items.Add("I - In");
            cboStatus.Items.Add("O - Out");
            cboStatus.Items.Add("U - Unavailable");

            Rate.LoadCategories(cboUpdCategories);

            cboUpdStatus.Items.Add("I - In");
            cboUpdStatus.Items.Add("U - Unavailable");
            this.AcceptButton = btnSearch;          //https://social.msdn.microsoft.com/Forums/vstudio/en-US/0a5e3852-af4e-44ed-bef0-30ab02224a20/press-enter-key-instead-of-clicking-on-a-button?forum=csharpgeneral

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            String toolID = "";
            String categoryCode = "";
            String description = "";
            String status = "";
            if (!String.IsNullOrEmpty(txtToolID.Text))
            {
                if (Tool.IsValidToolID(txtToolID.Text, txtToolID))
                {
                    toolID = txtToolID.Text;
                }
                else
                {
                    return;
                }
            }
            if (!String.IsNullOrEmpty(txtDescription.Text))
            {
                if (Tool.IsValidDescription(txtDescription.Text, txtDescription))
                {
                    description = txtDescription.Text;
                }
                else
                {
                    return;
                }
            }
            if (cboCategories.SelectedIndex == -1)
            {
                categoryCode = "";
            }
            else
            {
                categoryCode = cboCategories.SelectedItem.ToString();
            }

            if (cboStatus.SelectedIndex == -1)
            {
                status = "";
            }
            else
            {
                status = cboStatus.SelectedItem.ToString();
            }
            RefreshGridView(toolID, categoryCode, status);
        }

        private void RefreshGridView(String toolID, String categoryCode, String status)
        {
            dgvTools.DataSource = Tool.GetFilteredTools(toolID, categoryCode, txtDescription.Text, txtManufacturer.Text, status, txtPhrase.Text).Tables["tool"];
            dgvTools.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvTools.Columns[0].AutoSizeMode = DataGridViewAutoSizeColumnMode.AllCells;
        }

        private void dgvTools_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtUpdToolID.Text = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[0].Value.ToString();
            for(int i=0; i <= cboUpdCategories.Items.Count; i++)
            {
                cboUpdCategories.SelectedIndex = i;
                if (cboUpdCategories.SelectedItem.ToString().Substring(0, 2) == dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[1].Value.ToString())
                {
                    break;
                }
            }
            txtUpdDescription.Text = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[2].Value.ToString();
            txtUpdManufacturer.Text = dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[3].Value.ToString();
            for (int i = 0; i <= cboUpdStatus.Items.Count; i++)
            {
                cboUpdStatus.SelectedIndex = i;
                if (cboUpdStatus.SelectedItem.ToString().Substring(0, 1) == dgvTools.Rows[dgvTools.CurrentRow.Index].Cells[4].Value.ToString())
                {
                    break;
                }
            }
        }
        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Tool.IsValidDescription(txtUpdDescription.Text, txtUpdDescription))
            {
                tool.SetDescription(txtUpdDescription.Text);
                if(Tool.IsValidManufacturer(txtUpdManufacturer.Text, txtUpdManufacturer))
                {
                    tool.SetManufacturer(txtUpdManufacturer.Text);
                    tool.SetToolID(Convert.ToInt32(txtUpdToolID.Text));
                    tool.SetCategory(cboUpdCategories.SelectedItem.ToString().Substring(0, 2));
                    tool.SetToolStatus(cboUpdStatus.SelectedItem.ToString().Substring(0, 1));
                    tool.UpdateTool();
                    MessageBox.Show("Tool Has Been Successfully Updated", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtUpdToolID.Clear();
                    txtUpdDescription.Clear();
                    txtUpdManufacturer.Clear();
                    cboUpdCategories.SelectedIndex = -1;
                    cboUpdStatus.SelectedIndex = -1;
                    btnSearch.PerformClick();
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

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtToolID.Clear();
            cboCategories.SelectedIndex = -1;
            txtDescription.Clear();
            txtManufacturer.Clear();
            cboStatus.SelectedIndex = -1;
            txtPhrase.Clear();
        }
    }
}
