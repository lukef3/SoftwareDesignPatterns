﻿
namespace ToolSYS.Presentation
{
    partial class frmAnnualRevenueAnalysis
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
            this.cboYears = new System.Windows.Forms.ComboBox();
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
            this.returnToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewRentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminReportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualToolTypeAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitSystemToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cboYears);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, 57);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(776, 162);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Select Year For Revenue Analysis";
            // 
            // cboYears
            // 
            this.cboYears.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboYears.FormattingEnabled = true;
            this.cboYears.Location = new System.Drawing.Point(317, 72);
            this.cboYears.Name = "cboYears";
            this.cboYears.Size = new System.Drawing.Size(153, 28);
            this.cboYears.TabIndex = 1;
            this.cboYears.SelectedIndexChanged += new System.EventHandler(this.cboYears_SelectedIndexChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(264, 75);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Year:";
            // 
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
            this.exitSystemToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(801, 26);
            this.menuStrip1.TabIndex = 9;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // ratesToolStripMenuItem
            // 
            this.ratesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.setToolCategoryToolStripMenuItem,
            this.updateToolRateToolStripMenuItem});
            this.ratesToolStripMenuItem.Name = "ratesToolStripMenuItem";
            this.ratesToolStripMenuItem.Size = new System.Drawing.Size(79, 22);
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
            this.toolsToolStripMenuItem.Size = new System.Drawing.Size(79, 22);
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
            this.customersToolStripMenuItem.Size = new System.Drawing.Size(123, 22);
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
            this.rentalsToolStripMenuItem.Size = new System.Drawing.Size(101, 22);
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
            this.annualToolTypeAnalysisToolStripMenuItem});
            this.adminReportsToolStripMenuItem.Name = "adminReportsToolStripMenuItem";
            this.adminReportsToolStripMenuItem.Size = new System.Drawing.Size(167, 28);
            this.adminReportsToolStripMenuItem.Text = "Admin Reports";
            // 
            // annualToolTypeAnalysisToolStripMenuItem
            // 
            this.annualToolTypeAnalysisToolStripMenuItem.Name = "annualToolTypeAnalysisToolStripMenuItem";
            this.annualToolTypeAnalysisToolStripMenuItem.Size = new System.Drawing.Size(381, 34);
            this.annualToolTypeAnalysisToolStripMenuItem.Text = "Annual Tool Type Analysis";
            this.annualToolTypeAnalysisToolStripMenuItem.Click += new System.EventHandler(this.AnnualToolTypeAnalysisToolStripMenuItem_Click);
            // 
            // exitSystemToolStripMenuItem
            // 
            this.exitSystemToolStripMenuItem.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right;
            this.exitSystemToolStripMenuItem.Name = "exitSystemToolStripMenuItem";
            this.exitSystemToolStripMenuItem.Size = new System.Drawing.Size(123, 28);
            this.exitSystemToolStripMenuItem.Text = "Main Menu";
            this.exitSystemToolStripMenuItem.Click += new System.EventHandler(this.MainMenuToolStripMenuItem_Click);
            // 
            // frmAnnualRevenueAnalysis
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(801, 764);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmAnnualRevenueAnalysis";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Annual Revenue Analysis";
            this.Load += new System.EventHandler(this.frmAnnualRevenueAnalysis_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cboYears;
        private System.Windows.Forms.Label label1;
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
        private System.Windows.Forms.ToolStripMenuItem returnToolsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewRentalsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem adminReportsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem annualToolTypeAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitSystemToolStripMenuItem;
    }
}