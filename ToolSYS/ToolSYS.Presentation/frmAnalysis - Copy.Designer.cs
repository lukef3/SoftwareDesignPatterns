
namespace ToolSYS.Presentation
{
    partial class frmAnalysis
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
            label2 = new Label();
            cboReportType = new ComboBox();
            btnConfirm = new Button();
            lblCategory = new Label();
            cboCategories = new ComboBox();
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
            annualRevenueAnalysisToolStripMenuItem = new ToolStripMenuItem();
            MainMenuToolStripMenuItem = new ToolStripMenuItem();
            formsPlot1 = new ScottPlot.FormsPlot();
            groupBox1.SuspendLayout();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(cboReportType);
            groupBox1.Controls.Add(btnConfirm);
            groupBox1.Controls.Add(lblCategory);
            groupBox1.Controls.Add(cboCategories);
            groupBox1.Controls.Add(cboYears);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 39);
            groupBox1.Margin = new Padding(2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2);
            groupBox1.Size = new Size(944, 174);
            groupBox1.TabIndex = 6;
            groupBox1.TabStop = false;
            groupBox1.Text = "Select Year For Revenue Analysis";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(72, 58);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(45, 15);
            label2.TabIndex = 11;
            label2.Text = "Report:";
            // 
            // cboReportType
            // 
            cboReportType.DropDownStyle = ComboBoxStyle.DropDownList;
            cboReportType.FormattingEnabled = true;
            cboReportType.Location = new Point(121, 55);
            cboReportType.Margin = new Padding(2);
            cboReportType.Name = "cboReportType";
            cboReportType.Size = new Size(216, 23);
            cboReportType.TabIndex = 10;
            cboReportType.SelectedIndexChanged += cboReportType_SelectedIndexChanged_1;
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(433, 109);
            btnConfirm.Margin = new Padding(2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(86, 31);
            btnConfirm.TabIndex = 9;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // lblCategory
            // 
            lblCategory.AutoSize = true;
            lblCategory.Location = new Point(604, 60);
            lblCategory.Margin = new Padding(2, 0, 2, 0);
            lblCategory.Name = "lblCategory";
            lblCategory.Size = new Size(83, 15);
            lblCategory.TabIndex = 5;
            lblCategory.Text = "Tool Category:";
            // 
            // cboCategories
            // 
            cboCategories.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCategories.FormattingEnabled = true;
            cboCategories.Location = new Point(691, 55);
            cboCategories.Margin = new Padding(2);
            cboCategories.Name = "cboCategories";
            cboCategories.Size = new Size(216, 23);
            cboCategories.TabIndex = 4;
            // 
            // cboYears
            // 
            cboYears.DropDownStyle = ComboBoxStyle.DropDownList;
            cboYears.FormattingEnabled = true;
            cboYears.Location = new Point(420, 55);
            cboYears.Margin = new Padding(2);
            cboYears.Name = "cboYears";
            cboYears.Size = new Size(120, 23);
            cboYears.TabIndex = 3;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(384, 60);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(32, 15);
            label1.TabIndex = 2;
            label1.Text = "Year:";
            // 
            // menuStrip1
            // 
            menuStrip1.BackColor = SystemColors.AppWorkspace;
            menuStrip1.Font = new Font("Lucida Console", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            menuStrip1.ImageScalingSize = new Size(24, 24);
            menuStrip1.Items.AddRange(new ToolStripItem[] { ratesToolStripMenuItem, toolsToolStripMenuItem, customersToolStripMenuItem, rentalsToolStripMenuItem, adminReportsToolStripMenuItem, MainMenuToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Padding = new Padding(5, 2, 0, 2);
            menuStrip1.Size = new Size(966, 24);
            menuStrip1.TabIndex = 10;
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
            adminReportsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { annualRevenueAnalysisToolStripMenuItem });
            adminReportsToolStripMenuItem.Name = "adminReportsToolStripMenuItem";
            adminReportsToolStripMenuItem.Size = new Size(108, 20);
            adminReportsToolStripMenuItem.Text = "Admin Reports";
            // 
            // annualRevenueAnalysisToolStripMenuItem
            // 
            annualRevenueAnalysisToolStripMenuItem.Name = "annualRevenueAnalysisToolStripMenuItem";
            annualRevenueAnalysisToolStripMenuItem.Size = new Size(231, 22);
            annualRevenueAnalysisToolStripMenuItem.Text = "Annual Revenue Analysis";
            annualRevenueAnalysisToolStripMenuItem.Click += AnnualRevenueAnalysisToolStripMenuItem_Click;
            // 
            // MainMenuToolStripMenuItem
            // 
            MainMenuToolStripMenuItem.Alignment = ToolStripItemAlignment.Right;
            MainMenuToolStripMenuItem.Name = "MainMenuToolStripMenuItem";
            MainMenuToolStripMenuItem.Size = new Size(80, 20);
            MainMenuToolStripMenuItem.Text = "Main Menu";
            MainMenuToolStripMenuItem.Click += MainMenuToolStripMenuItem_Click;
            // 
            // formsPlot1
            // 
            formsPlot1.Location = new Point(9, 218);
            formsPlot1.Margin = new Padding(4, 3, 4, 3);
            formsPlot1.Name = "formsPlot1";
            formsPlot1.Size = new Size(944, 395);
            formsPlot1.TabIndex = 11;
            // 
            // frmAnalysis
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(966, 625);
            Controls.Add(formsPlot1);
            Controls.Add(menuStrip1);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "frmAnalysis";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Analysis";
            Load += frmAnalysis_Load;
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
        private System.Windows.Forms.ToolStripMenuItem annualRevenueAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem MainMenuToolStripMenuItem;
        private System.Windows.Forms.Label lblCategory;
        private System.Windows.Forms.ComboBox cboCategories;
        private System.Windows.Forms.Button btnConfirm;
        private ScottPlot.FormsPlot formsPlot1;
        private ComboBox cboReportType;
        private Label label2;
    }
}