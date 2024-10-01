
namespace ToolSYS
{
    partial class frmRemoveTool
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnConfirm = new System.Windows.Forms.Button();
            this.txtToolID = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvTools = new System.Windows.Forms.DataGridView();
            this.label7 = new System.Windows.Forms.Label();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.ratesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.setToolCategoryToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateToolRateToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.customersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.addCustomerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.updateCustomerToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewCustomersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentToolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.returnToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewRentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminReportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualRevenueAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualToolTypeAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainMenuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTools)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnConfirm);
            this.groupBox1.Controls.Add(this.txtToolID);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 449);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1158, 185);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Double click or enter tool ID to remove:";
            // 
            // btnConfirm
            // 
            this.btnConfirm.BackColor = System.Drawing.Color.Gold;
            this.btnConfirm.Location = new System.Drawing.Point(511, 93);
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.Size = new System.Drawing.Size(134, 69);
            this.btnConfirm.TabIndex = 8;
            this.btnConfirm.Text = "Confirm";
            this.btnConfirm.UseVisualStyleBackColor = false;
            this.btnConfirm.Click += new System.EventHandler(this.btnConfirm_Click);
            // 
            // txtToolID
            // 
            this.txtToolID.Location = new System.Drawing.Point(549, 46);
            this.txtToolID.Name = "txtToolID";
            this.txtToolID.Size = new System.Drawing.Size(110, 26);
            this.txtToolID.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(478, 49);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(64, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tool ID:";
            // 
            // dgvTools
            // 
            this.dgvTools.AllowUserToAddRows = false;
            this.dgvTools.AllowUserToDeleteRows = false;
            this.dgvTools.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTools.Location = new System.Drawing.Point(12, 72);
            this.dgvTools.Name = "dgvTools";
            this.dgvTools.ReadOnly = true;
            this.dgvTools.RowHeadersWidth = 62;
            this.dgvTools.RowTemplate.Height = 28;
            this.dgvTools.Size = new System.Drawing.Size(1158, 362);
            this.dgvTools.TabIndex = 6;
            this.dgvTools.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTools_CellClick);
            this.dgvTools.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTools_CellDoubleClick);
            this.dgvTools.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvTools_CellDoubleClick);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(519, 49);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(140, 20);
            this.label7.TabIndex = 7;
            this.label7.Text = "Removeable Tools";
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
            this.menuStrip1.Size = new System.Drawing.Size(1186, 32);
            this.menuStrip1.TabIndex = 8;
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
            this.returnToolsToolStripMenuItem,
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
            // returnToolsToolStripMenuItem
            // 
            this.returnToolsToolStripMenuItem.Name = "returnToolsToolStripMenuItem";
            this.returnToolsToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.returnToolsToolStripMenuItem.Text = "Return Tools";
            this.returnToolsToolStripMenuItem.Click += new System.EventHandler(this.ReturnToolsToolStripMenuItem_Click);
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
            // frmRemoveTool
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1186, 646);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.dgvTools);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmRemoveTool";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Remove Tool";
            this.Load += new System.EventHandler(this.frmRemoveTool_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTools)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtToolID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvTools;
        private System.Windows.Forms.Label label7;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem ratesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem setToolCategoryToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateToolRateToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem customersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem addCustomerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem updateCustomerToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewCustomersToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rentalsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem rentToolToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem returnToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewRentalsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adminReportsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem annualRevenueAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem annualToolTypeAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem MainMenuToolStripMenuItem;
    }
}