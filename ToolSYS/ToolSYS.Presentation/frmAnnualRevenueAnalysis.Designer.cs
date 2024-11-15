
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
            groupBox1 = new GroupBox();
            cboYears = new ComboBox();
            label1 = new Label();
            menuStrip1 = new MenuStrip();
            ratesToolStripMenuItem = new ToolStripMenuItem();
            setToolCategoryToolStripMenuItem = new ToolStripMenuItem();
            updateToolRateToolStripMenuItem = new ToolStripMenuItem();
            toolsToolStripMenuItem = new ToolStripMenuItem();
            addToolStripMenuItem = new ToolStripMenuItem();
            updateToolsToolStripMenuItem = new ToolStripMenuItem();
            removeToolsToolStripMenuItem = new ToolStripMenuItem();
            viewToolsToolStripMenuItem = new ToolStripMenuItem();
            customersToolStripMenuItem = new ToolStripMenuItem();
            addCustomerToolStripMenuItem = new ToolStripMenuItem();
            updateCustomerToolStripMenuItem = new ToolStripMenuItem();
            viewCustomersToolStripMenuItem = new ToolStripMenuItem();
            rentalsToolStripMenuItem = new ToolStripMenuItem();
            rentToolToolStripMenuItem = new ToolStripMenuItem();
            returnToolsToolStripMenuItem = new ToolStripMenuItem();
            viewRentalsToolStripMenuItem = new ToolStripMenuItem();
            adminReportsToolStripMenuItem = new ToolStripMenuItem();
            annualToolTypeAnalysisToolStripMenuItem = new ToolStripMenuItem();
            exitSystemToolStripMenuItem = new ToolStripMenuItem();
            formsPlot1 = new ScottPlot.FormsPlot();
            groupBox1.SuspendLayout();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(cboYears);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 43);
            groupBox1.Margin = new Padding(2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2);
            groupBox1.Size = new Size(759, 122);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Select Year For Revenue Analysis";
            // 
            // cboYears
            // 
            cboYears.DropDownStyle = ComboBoxStyle.DropDownList;
            cboYears.FormattingEnabled = true;
            cboYears.Location = new Point(344, 54);
            cboYears.Margin = new Padding(2);
            cboYears.Name = "cboYears";
            cboYears.Size = new Size(120, 23);
            cboYears.TabIndex = 1;
            cboYears.SelectedIndexChanged += cboYears_SelectedIndexChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(302, 56);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(32, 15);
            label1.TabIndex = 0;
            label1.Text = "Year:";
            // 
            // menuStrip1
            // 
            menuStrip1.BackColor = SystemColors.AppWorkspace;
            menuStrip1.Font = new Font("Lucida Console", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            menuStrip1.ImageScalingSize = new Size(24, 24);
            menuStrip1.Items.AddRange(new ToolStripItem[] { ratesToolStripMenuItem, toolsToolStripMenuItem, customersToolStripMenuItem, rentalsToolStripMenuItem, adminReportsToolStripMenuItem, exitSystemToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Padding = new Padding(5, 2, 0, 2);
            menuStrip1.Size = new Size(781, 24);
            menuStrip1.TabIndex = 9;
            menuStrip1.Text = "menuStrip1";
            // 
            // ratesToolStripMenuItem
            // 
            ratesToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { setToolCategoryToolStripMenuItem, updateToolRateToolStripMenuItem });
            ratesToolStripMenuItem.Name = "ratesToolStripMenuItem";
            ratesToolStripMenuItem.Size = new Size(52, 20);
            ratesToolStripMenuItem.Text = "Rates";
            // 
            // setToolCategoryToolStripMenuItem
            // 
            setToolCategoryToolStripMenuItem.Name = "setToolCategoryToolStripMenuItem";
            setToolCategoryToolStripMenuItem.Size = new Size(189, 22);
            setToolCategoryToolStripMenuItem.Text = "Set Tool Category";
            setToolCategoryToolStripMenuItem.Click += SetToolCategoryToolStripMenuItem_Click;
            // 
            // updateToolRateToolStripMenuItem
            // 
            updateToolRateToolStripMenuItem.Name = "updateToolRateToolStripMenuItem";
            updateToolRateToolStripMenuItem.Size = new Size(189, 22);
            updateToolRateToolStripMenuItem.Text = "Update Tool Rate";
            updateToolRateToolStripMenuItem.Click += UpdateToolRateToolStripMenuItem_Click;
            // 
            // toolsToolStripMenuItem
            // 
            toolsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { addToolStripMenuItem, updateToolsToolStripMenuItem, removeToolsToolStripMenuItem, viewToolsToolStripMenuItem });
            toolsToolStripMenuItem.Name = "toolsToolStripMenuItem";
            toolsToolStripMenuItem.Size = new Size(52, 20);
            toolsToolStripMenuItem.Text = "Tools";
            // 
            // addToolStripMenuItem
            // 
            addToolStripMenuItem.Name = "addToolStripMenuItem";
            addToolStripMenuItem.Size = new Size(154, 22);
            addToolStripMenuItem.Text = "Add Tools";
            addToolStripMenuItem.Click += AddToolStripMenuItem_Click;
            // 
            // updateToolsToolStripMenuItem
            // 
            updateToolsToolStripMenuItem.Name = "updateToolsToolStripMenuItem";
            updateToolsToolStripMenuItem.Size = new Size(154, 22);
            updateToolsToolStripMenuItem.Text = "Update Tools";
            updateToolsToolStripMenuItem.Click += UpdateToolsToolStripMenuItem_Click;
            // 
            // removeToolsToolStripMenuItem
            // 
            removeToolsToolStripMenuItem.Name = "removeToolsToolStripMenuItem";
            removeToolsToolStripMenuItem.Size = new Size(154, 22);
            removeToolsToolStripMenuItem.Text = "Remove Tools";
            removeToolsToolStripMenuItem.Click += RemoveToolsToolStripMenuItem_Click;
            // 
            // viewToolsToolStripMenuItem
            // 
            viewToolsToolStripMenuItem.Name = "viewToolsToolStripMenuItem";
            viewToolsToolStripMenuItem.Size = new Size(154, 22);
            viewToolsToolStripMenuItem.Text = "View Tools";
            viewToolsToolStripMenuItem.Click += ViewToolsToolStripMenuItem_Click;
            // 
            // customersToolStripMenuItem
            // 
            customersToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { addCustomerToolStripMenuItem, updateCustomerToolStripMenuItem, viewCustomersToolStripMenuItem });
            customersToolStripMenuItem.Name = "customersToolStripMenuItem";
            customersToolStripMenuItem.Size = new Size(80, 20);
            customersToolStripMenuItem.Text = "Customers";
            // 
            // addCustomerToolStripMenuItem
            // 
            addCustomerToolStripMenuItem.Name = "addCustomerToolStripMenuItem";
            addCustomerToolStripMenuItem.Size = new Size(175, 22);
            addCustomerToolStripMenuItem.Text = "Add Customer";
            addCustomerToolStripMenuItem.Click += AddCustomerToolStripMenuItem_Click;
            // 
            // updateCustomerToolStripMenuItem
            // 
            updateCustomerToolStripMenuItem.Name = "updateCustomerToolStripMenuItem";
            updateCustomerToolStripMenuItem.Size = new Size(175, 22);
            updateCustomerToolStripMenuItem.Text = "Update Customer";
            updateCustomerToolStripMenuItem.Click += UpdateCustomerToolStripMenuItem_Click;
            // 
            // viewCustomersToolStripMenuItem
            // 
            viewCustomersToolStripMenuItem.Name = "viewCustomersToolStripMenuItem";
            viewCustomersToolStripMenuItem.Size = new Size(175, 22);
            viewCustomersToolStripMenuItem.Text = "View Customers";
            viewCustomersToolStripMenuItem.Click += viewCustomersToolStripMenuItem_Click;
            // 
            // rentalsToolStripMenuItem
            // 
            rentalsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { rentToolToolStripMenuItem, returnToolsToolStripMenuItem, viewRentalsToolStripMenuItem });
            rentalsToolStripMenuItem.Name = "rentalsToolStripMenuItem";
            rentalsToolStripMenuItem.Size = new Size(66, 20);
            rentalsToolStripMenuItem.Text = "Rentals";
            // 
            // rentToolToolStripMenuItem
            // 
            rentToolToolStripMenuItem.Name = "rentToolToolStripMenuItem";
            rentToolToolStripMenuItem.Size = new Size(154, 22);
            rentToolToolStripMenuItem.Text = "Rent Tools";
            rentToolToolStripMenuItem.Click += RentToolToolStripMenuItem_Click;
            // 
            // returnToolsToolStripMenuItem
            // 
            returnToolsToolStripMenuItem.Name = "returnToolsToolStripMenuItem";
            returnToolsToolStripMenuItem.Size = new Size(154, 22);
            returnToolsToolStripMenuItem.Text = "Return Tools";
            returnToolsToolStripMenuItem.Click += ReturnToolsToolStripMenuItem_Click;
            // 
            // viewRentalsToolStripMenuItem
            // 
            viewRentalsToolStripMenuItem.Name = "viewRentalsToolStripMenuItem";
            viewRentalsToolStripMenuItem.Size = new Size(154, 22);
            viewRentalsToolStripMenuItem.Text = "View Rentals";
            viewRentalsToolStripMenuItem.Click += ViewRentalsToolStripMenuItem_Click;
            // 
            // adminReportsToolStripMenuItem
            // 
            adminReportsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { annualToolTypeAnalysisToolStripMenuItem });
            adminReportsToolStripMenuItem.Name = "adminReportsToolStripMenuItem";
            adminReportsToolStripMenuItem.Size = new Size(108, 20);
            adminReportsToolStripMenuItem.Text = "Admin Reports";
            // 
            // annualToolTypeAnalysisToolStripMenuItem
            // 
            annualToolTypeAnalysisToolStripMenuItem.Name = "annualToolTypeAnalysisToolStripMenuItem";
            annualToolTypeAnalysisToolStripMenuItem.Size = new Size(245, 22);
            annualToolTypeAnalysisToolStripMenuItem.Text = "Annual Tool Type Analysis";
            annualToolTypeAnalysisToolStripMenuItem.Click += AnnualToolTypeAnalysisToolStripMenuItem_Click;
            // 
            // exitSystemToolStripMenuItem
            // 
            exitSystemToolStripMenuItem.Alignment = ToolStripItemAlignment.Right;
            exitSystemToolStripMenuItem.Name = "exitSystemToolStripMenuItem";
            exitSystemToolStripMenuItem.Size = new Size(80, 20);
            exitSystemToolStripMenuItem.Text = "Main Menu";
            exitSystemToolStripMenuItem.Click += MainMenuToolStripMenuItem_Click;
            // 
            // formsPlot1
            // 
            formsPlot1.Location = new Point(9, 170);
            formsPlot1.Margin = new Padding(4, 3, 4, 3);
            formsPlot1.Name = "formsPlot1";
            formsPlot1.Size = new Size(759, 391);
            formsPlot1.TabIndex = 10;
            // 
            // frmAnnualRevenueAnalysis
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(781, 573);
            Controls.Add(formsPlot1);
            Controls.Add(menuStrip1);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "frmAnnualRevenueAnalysis";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Annual Revenue Analysis";
            Load += frmAnnualRevenueAnalysis_Load;
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
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
        private ScottPlot.FormsPlot formsPlot1;
    }
}