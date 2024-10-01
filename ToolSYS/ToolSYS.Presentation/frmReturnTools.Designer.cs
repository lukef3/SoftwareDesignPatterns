
namespace ToolSYS
{
    partial class frmReturnTools
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gbxRentalID = new System.Windows.Forms.GroupBox();
            this.btnConfirm = new System.Windows.Forms.Button();
            this.txtRentalID = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.dgvRentalItems = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnRentDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnDueReturn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ColumnFee = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbxReturnTool = new System.Windows.Forms.GroupBox();
            this.btnFinish = new System.Windows.Forms.Button();
            this.btnReturn = new System.Windows.Forms.Button();
            this.txtToolID = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.ratesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.setToolCategoryToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateToolRateToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.removeToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.customersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addCustomerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateCustomerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewCustomersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentToolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewRentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminReportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualRevenueAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualToolTypeAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainMenuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gbxRentalID.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRentalItems)).BeginInit();
            this.gbxReturnTool.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxRentalID
            // 
            this.gbxRentalID.Controls.Add(this.btnConfirm);
            this.gbxRentalID.Controls.Add(this.txtRentalID);
            this.gbxRentalID.Controls.Add(this.label12);
            this.gbxRentalID.Location = new System.Drawing.Point(12, 51);
            this.gbxRentalID.Name = "gbxRentalID";
            this.gbxRentalID.Size = new System.Drawing.Size(992, 252);
            this.gbxRentalID.TabIndex = 18;
            this.gbxRentalID.TabStop = false;
            this.gbxRentalID.Text = "Enter Rental ID Of The Customer";
            // 
            // btnConfirm
            // 
            this.btnConfirm.BackColor = System.Drawing.Color.Gold;
            this.btnConfirm.Location = new System.Drawing.Point(408, 129);
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.Size = new System.Drawing.Size(126, 62);
            this.btnConfirm.TabIndex = 11;
            this.btnConfirm.Text = "Confirm";
            this.btnConfirm.UseVisualStyleBackColor = false;
            this.btnConfirm.Click += new System.EventHandler(this.btnConfirm_Click);
            // 
            // txtRentalID
            // 
            this.txtRentalID.Location = new System.Drawing.Point(461, 68);
            this.txtRentalID.Name = "txtRentalID";
            this.txtRentalID.Size = new System.Drawing.Size(100, 26);
            this.txtRentalID.TabIndex = 5;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(374, 71);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(81, 20);
            this.label12.TabIndex = 0;
            this.label12.Text = "Rental ID:";
            // 
            // dgvRentalItems
            // 
            this.dgvRentalItems.AllowUserToAddRows = false;
            this.dgvRentalItems.AllowUserToDeleteRows = false;
            this.dgvRentalItems.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRentalItems.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.ColumnRentDate,
            this.ColumnDueReturn,
            this.ColumnFee});
            this.dgvRentalItems.Location = new System.Drawing.Point(6, 44);
            this.dgvRentalItems.Name = "dgvRentalItems";
            this.dgvRentalItems.ReadOnly = true;
            this.dgvRentalItems.RowHeadersWidth = 62;
            this.dgvRentalItems.RowTemplate.Height = 28;
            this.dgvRentalItems.Size = new System.Drawing.Size(980, 298);
            this.dgvRentalItems.TabIndex = 19;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.MinimumWidth = 8;
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            this.dataGridViewTextBoxColumn1.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn2.HeaderText = "Tool Category";
            this.dataGridViewTextBoxColumn2.MinimumWidth = 8;
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            this.dataGridViewTextBoxColumn2.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn3.HeaderText = "Description";
            this.dataGridViewTextBoxColumn3.MinimumWidth = 8;
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            this.dataGridViewTextBoxColumn3.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.dataGridViewTextBoxColumn4.HeaderText = "Manufacturer";
            this.dataGridViewTextBoxColumn4.MinimumWidth = 8;
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            this.dataGridViewTextBoxColumn4.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // ColumnRentDate
            // 
            this.ColumnRentDate.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnRentDate.HeaderText = "Rent Date";
            this.ColumnRentDate.MinimumWidth = 8;
            this.ColumnRentDate.Name = "ColumnRentDate";
            this.ColumnRentDate.ReadOnly = true;
            this.ColumnRentDate.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // ColumnDueReturn
            // 
            this.ColumnDueReturn.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnDueReturn.HeaderText = "Due Return Date";
            this.ColumnDueReturn.MinimumWidth = 8;
            this.ColumnDueReturn.Name = "ColumnDueReturn";
            this.ColumnDueReturn.ReadOnly = true;
            this.ColumnDueReturn.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // ColumnFee
            // 
            this.ColumnFee.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.ColumnFee.HeaderText = "Fee";
            this.ColumnFee.MinimumWidth = 8;
            this.ColumnFee.Name = "ColumnFee";
            this.ColumnFee.ReadOnly = true;
            this.ColumnFee.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            // 
            // gbxReturnTool
            // 
            this.gbxReturnTool.Controls.Add(this.btnFinish);
            this.gbxReturnTool.Controls.Add(this.btnReturn);
            this.gbxReturnTool.Controls.Add(this.txtToolID);
            this.gbxReturnTool.Controls.Add(this.dgvRentalItems);
            this.gbxReturnTool.Controls.Add(this.label1);
            this.gbxReturnTool.Location = new System.Drawing.Point(12, 309);
            this.gbxReturnTool.Name = "gbxReturnTool";
            this.gbxReturnTool.Size = new System.Drawing.Size(992, 570);
            this.gbxReturnTool.TabIndex = 19;
            this.gbxReturnTool.TabStop = false;
            this.gbxReturnTool.Text = "Enter The Tool ID You Wish To Return";
            this.gbxReturnTool.Visible = false;
            // 
            // btnFinish
            // 
            this.btnFinish.Location = new System.Drawing.Point(510, 450);
            this.btnFinish.Name = "btnFinish";
            this.btnFinish.Size = new System.Drawing.Size(126, 62);
            this.btnFinish.TabIndex = 20;
            this.btnFinish.Text = "Finish";
            this.btnFinish.UseVisualStyleBackColor = true;
            this.btnFinish.Click += new System.EventHandler(this.btnFinish_Click);
            // 
            // btnReturn
            // 
            this.btnReturn.BackColor = System.Drawing.Color.Gold;
            this.btnReturn.Location = new System.Drawing.Point(355, 450);
            this.btnReturn.Name = "btnReturn";
            this.btnReturn.Size = new System.Drawing.Size(126, 62);
            this.btnReturn.TabIndex = 11;
            this.btnReturn.Text = "Return";
            this.btnReturn.UseVisualStyleBackColor = false;
            this.btnReturn.Click += new System.EventHandler(this.btnReturn_Click);
            // 
            // txtToolID
            // 
            this.txtToolID.Location = new System.Drawing.Point(461, 392);
            this.txtToolID.Name = "txtToolID";
            this.txtToolID.Size = new System.Drawing.Size(100, 26);
            this.txtToolID.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(391, 395);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tool ID:";
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.SystemColors.AppWorkspace;
            this.menuStrip1.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.menuStrip1.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ratesToolStripMenuItem,
            this.toolsToolStripMenuItem,
            this.customersToolStripMenuItem,
            this.rentalsToolStripMenuItem,
            this.adminReportsToolStripMenuItem,
            this.MainMenuToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1016, 32);
            this.menuStrip1.TabIndex = 20;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // ratesToolStripMenuItem
            // 
            this.ratesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.setToolCategoryToolStripMenuItem,
            this.updateToolRateToolStripMenuItem});
            this.ratesToolStripMenuItem.Name = "ratesToolStripMenuItem";
            this.ratesToolStripMenuItem.Size = new System.Drawing.Size(79, 28);
            this.ratesToolStripMenuItem.Text = "Rates";
            // 
            // setToolCategoryToolStripMenuItem
            // 
            this.setToolCategoryToolStripMenuItem.Name = "setToolCategoryToolStripMenuItem";
            this.setToolCategoryToolStripMenuItem.Size = new System.Drawing.Size(293, 34);
            this.setToolCategoryToolStripMenuItem.Text = "Set Tool Category";
            this.setToolCategoryToolStripMenuItem.Click += new System.EventHandler(this.SetToolCategoryToolStripMenuItem_Click);
            // 
            // updateToolRateToolStripMenuItem
            // 
            this.updateToolRateToolStripMenuItem.Name = "updateToolRateToolStripMenuItem";
            this.updateToolRateToolStripMenuItem.Size = new System.Drawing.Size(293, 34);
            this.updateToolRateToolStripMenuItem.Text = "Update Tool Rate";
            this.updateToolRateToolStripMenuItem.Click += new System.EventHandler(this.UpdateToolRateToolStripMenuItem_Click);
            // 
            // toolsToolStripMenuItem
            // 
            this.toolsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.addToolStripMenuItem,
            this.updateToolsToolStripMenuItem,
            this.removeToolsToolStripMenuItem,
            this.viewToolsToolStripMenuItem});
            this.toolsToolStripMenuItem.Name = "toolsToolStripMenuItem";
            this.toolsToolStripMenuItem.Size = new System.Drawing.Size(79, 28);
            this.toolsToolStripMenuItem.Text = "Tools";
            // 
            // addToolStripMenuItem
            // 
            this.addToolStripMenuItem.Name = "addToolStripMenuItem";
            this.addToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.addToolStripMenuItem.Text = "Add Tools";
            this.addToolStripMenuItem.Click += new System.EventHandler(this.AddToolStripMenuItem_Click);
            // 
            // updateToolsToolStripMenuItem
            // 
            this.updateToolsToolStripMenuItem.Name = "updateToolsToolStripMenuItem";
            this.updateToolsToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.updateToolsToolStripMenuItem.Text = "Update Tools";
            this.updateToolsToolStripMenuItem.Click += new System.EventHandler(this.UpdateToolsToolStripMenuItem_Click);
            // 
            // removeToolsToolStripMenuItem
            // 
            this.removeToolsToolStripMenuItem.Name = "removeToolsToolStripMenuItem";
            this.removeToolsToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.removeToolsToolStripMenuItem.Text = "Remove Tools";
            this.removeToolsToolStripMenuItem.Click += new System.EventHandler(this.RemoveToolsToolStripMenuItem_Click);
            // 
            // viewToolsToolStripMenuItem
            // 
            this.viewToolsToolStripMenuItem.Name = "viewToolsToolStripMenuItem";
            this.viewToolsToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.viewToolsToolStripMenuItem.Text = "View Tools";
            this.viewToolsToolStripMenuItem.Click += new System.EventHandler(this.ViewToolsToolStripMenuItem_Click);
            // 
            // customersToolStripMenuItem
            // 
            this.customersToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.addCustomerToolStripMenuItem,
            this.updateCustomerToolStripMenuItem,
            this.viewCustomersToolStripMenuItem});
            this.customersToolStripMenuItem.Name = "customersToolStripMenuItem";
            this.customersToolStripMenuItem.Size = new System.Drawing.Size(123, 28);
            this.customersToolStripMenuItem.Text = "Customers";
            // 
            // addCustomerToolStripMenuItem
            // 
            this.addCustomerToolStripMenuItem.Name = "addCustomerToolStripMenuItem";
            this.addCustomerToolStripMenuItem.Size = new System.Drawing.Size(271, 34);
            this.addCustomerToolStripMenuItem.Text = "Add Customer";
            this.addCustomerToolStripMenuItem.Click += new System.EventHandler(this.AddCustomerToolStripMenuItem_Click);
            // 
            // updateCustomerToolStripMenuItem
            // 
            this.updateCustomerToolStripMenuItem.Name = "updateCustomerToolStripMenuItem";
            this.updateCustomerToolStripMenuItem.Size = new System.Drawing.Size(271, 34);
            this.updateCustomerToolStripMenuItem.Text = "Update Customer";
            this.updateCustomerToolStripMenuItem.Click += new System.EventHandler(this.UpdateCustomerToolStripMenuItem_Click);
            // 
            // viewCustomersToolStripMenuItem
            // 
            this.viewCustomersToolStripMenuItem.Name = "viewCustomersToolStripMenuItem";
            this.viewCustomersToolStripMenuItem.Size = new System.Drawing.Size(271, 34);
            this.viewCustomersToolStripMenuItem.Text = "View Customers";
            this.viewCustomersToolStripMenuItem.Click += new System.EventHandler(this.viewCustomersToolStripMenuItem_Click);
            // 
            // rentalsToolStripMenuItem
            // 
            this.rentalsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.rentToolToolStripMenuItem,
            this.viewRentalsToolStripMenuItem});
            this.rentalsToolStripMenuItem.Name = "rentalsToolStripMenuItem";
            this.rentalsToolStripMenuItem.Size = new System.Drawing.Size(101, 28);
            this.rentalsToolStripMenuItem.Text = "Rentals";
            // 
            // rentToolToolStripMenuItem
            // 
            this.rentToolToolStripMenuItem.Name = "rentToolToolStripMenuItem";
            this.rentToolToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.rentToolToolStripMenuItem.Text = "Rent Tools";
            this.rentToolToolStripMenuItem.Click += new System.EventHandler(this.RentToolToolStripMenuItem_Click);
            // 
            // viewRentalsToolStripMenuItem
            // 
            this.viewRentalsToolStripMenuItem.Name = "viewRentalsToolStripMenuItem";
            this.viewRentalsToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.viewRentalsToolStripMenuItem.Text = "View Rentals";
            this.viewRentalsToolStripMenuItem.Click += new System.EventHandler(this.ViewRentalsToolStripMenuItem_Click);
            // 
            // adminReportsToolStripMenuItem
            // 
            this.adminReportsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.annualRevenueAnalysisToolStripMenuItem,
            this.annualToolTypeAnalysisToolStripMenuItem});
            this.adminReportsToolStripMenuItem.Name = "adminReportsToolStripMenuItem";
            this.adminReportsToolStripMenuItem.Size = new System.Drawing.Size(167, 28);
            this.adminReportsToolStripMenuItem.Text = "Admin Reports";
            // 
            // annualRevenueAnalysisToolStripMenuItem
            // 
            this.annualRevenueAnalysisToolStripMenuItem.Name = "annualRevenueAnalysisToolStripMenuItem";
            this.annualRevenueAnalysisToolStripMenuItem.Size = new System.Drawing.Size(381, 34);
            this.annualRevenueAnalysisToolStripMenuItem.Text = "Annual Revenue Analysis";
            this.annualRevenueAnalysisToolStripMenuItem.Click += new System.EventHandler(this.AnnualRevenueAnalysisToolStripMenuItem_Click);
            // 
            // annualToolTypeAnalysisToolStripMenuItem
            // 
            this.annualToolTypeAnalysisToolStripMenuItem.Name = "annualToolTypeAnalysisToolStripMenuItem";
            this.annualToolTypeAnalysisToolStripMenuItem.Size = new System.Drawing.Size(381, 34);
            this.annualToolTypeAnalysisToolStripMenuItem.Text = "Annual Tool Type Analysis";
            this.annualToolTypeAnalysisToolStripMenuItem.Click += new System.EventHandler(this.AnnualToolTypeAnalysisToolStripMenuItem_Click);
            // 
            // MainMenuToolStripMenuItem
            // 
            this.MainMenuToolStripMenuItem.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.MainMenuToolStripMenuItem.Name = "MainMenuToolStripMenuItem";
            this.MainMenuToolStripMenuItem.Size = new System.Drawing.Size(123, 28);
            this.MainMenuToolStripMenuItem.Text = "Main Menu";
            this.MainMenuToolStripMenuItem.Click += new System.EventHandler(this.MainMenuToolStripMenuItem_Click);
            // 
            // frmReturnTools
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1016, 888);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.gbxReturnTool);
            this.Controls.Add(this.gbxRentalID);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmReturnTools";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Return Tools";
            this.Load += new System.EventHandler(this.frmReturnTools_Load);
            this.gbxRentalID.ResumeLayout(false);
            this.gbxRentalID.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRentalItems)).EndInit();
            this.gbxReturnTool.ResumeLayout(false);
            this.gbxReturnTool.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox gbxRentalID;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtRentalID;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView dgvRentalItems;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRentDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnDueReturn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnFee;
        private System.Windows.Forms.GroupBox gbxReturnTool;
        private System.Windows.Forms.Button btnReturn;
        private System.Windows.Forms.TextBox txtToolID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnFinish;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem ratesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem setToolCategoryToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateToolRateToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem removeToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem customersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addCustomerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateCustomerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewCustomersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rentalsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rentToolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewRentalsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adminReportsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem annualRevenueAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem annualToolTypeAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem MainMenuToolStripMenuItem;
    }
}