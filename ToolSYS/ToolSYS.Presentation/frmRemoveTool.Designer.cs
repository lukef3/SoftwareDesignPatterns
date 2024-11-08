
namespace ToolSYS.Presentation
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
            groupBox1 = new GroupBox();
            btnConfirm = new Button();
            txtToolID = new TextBox();
            label1 = new Label();
            dgvTools = new DataGridView();
            label7 = new Label();
            backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            menuStrip1 = new MenuStrip();
            ratesToolStripMenuItem = new ToolStripMenuItem();
            setToolCategoryToolStripMenuItem = new ToolStripMenuItem();
            updateToolRateToolStripMenuItem = new ToolStripMenuItem();
            toolsToolStripMenuItem = new ToolStripMenuItem();
            addToolStripMenuItem = new ToolStripMenuItem();
            updateToolsToolStripMenuItem = new ToolStripMenuItem();
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
            annualToolTypeAnalysisToolStripMenuItem = new ToolStripMenuItem();
            MainMenuToolStripMenuItem = new ToolStripMenuItem();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).BeginInit();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnConfirm);
            groupBox1.Controls.Add(txtToolID);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 337);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(901, 139);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Double click or enter tool ID to remove:";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(397, 70);
            btnConfirm.Margin = new Padding(2, 2, 2, 2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(104, 52);
            btnConfirm.TabIndex = 8;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // txtToolID
            // 
            txtToolID.Location = new Point(427, 34);
            txtToolID.Margin = new Padding(2, 2, 2, 2);
            txtToolID.Name = "txtToolID";
            txtToolID.Size = new Size(86, 23);
            txtToolID.TabIndex = 5;
            txtToolID.Text = "0";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(372, 37);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(46, 15);
            label1.TabIndex = 0;
            label1.Text = "Tool ID:";
            // 
            // dgvTools
            // 
            dgvTools.AllowUserToAddRows = false;
            dgvTools.AllowUserToDeleteRows = false;
            dgvTools.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTools.Location = new Point(9, 54);
            dgvTools.Margin = new Padding(2, 2, 2, 2);
            dgvTools.Name = "dgvTools";
            dgvTools.ReadOnly = true;
            dgvTools.RowHeadersWidth = 62;
            dgvTools.RowTemplate.Height = 28;
            dgvTools.Size = new Size(901, 272);
            dgvTools.TabIndex = 6;
            dgvTools.CellClick += dgvTools_CellClick;
            dgvTools.CellContentDoubleClick += dgvTools_CellDoubleClick;
            dgvTools.CellDoubleClick += dgvTools_CellDoubleClick;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(404, 37);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(102, 15);
            label7.TabIndex = 7;
            label7.Text = "Removeable Tools";
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
            menuStrip1.Size = new Size(922, 24);
            menuStrip1.TabIndex = 8;
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
            toolsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { addToolStripMenuItem, updateToolsToolStripMenuItem, viewToolsToolStripMenuItem });
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
            adminReportsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { annualRevenueAnalysisToolStripMenuItem, annualToolTypeAnalysisToolStripMenuItem });
            adminReportsToolStripMenuItem.Name = "adminReportsToolStripMenuItem";
            adminReportsToolStripMenuItem.Size = new Size(108, 20);
            adminReportsToolStripMenuItem.Text = "Admin Reports";
            // 
            // annualRevenueAnalysisToolStripMenuItem
            // 
            annualRevenueAnalysisToolStripMenuItem.Name = "annualRevenueAnalysisToolStripMenuItem";
            annualRevenueAnalysisToolStripMenuItem.Size = new Size(245, 22);
            annualRevenueAnalysisToolStripMenuItem.Text = "Annual Revenue Analysis";
            annualRevenueAnalysisToolStripMenuItem.Click += AnnualRevenueAnalysisToolStripMenuItem_Click;
            // 
            // annualToolTypeAnalysisToolStripMenuItem
            // 
            annualToolTypeAnalysisToolStripMenuItem.Name = "annualToolTypeAnalysisToolStripMenuItem";
            annualToolTypeAnalysisToolStripMenuItem.Size = new Size(245, 22);
            annualToolTypeAnalysisToolStripMenuItem.Text = "Annual Tool Type Analysis";
            annualToolTypeAnalysisToolStripMenuItem.Click += AnnualToolTypeAnalysisToolStripMenuItem_Click;
            // 
            // MainMenuToolStripMenuItem
            // 
            MainMenuToolStripMenuItem.Alignment = ToolStripItemAlignment.Right;
            MainMenuToolStripMenuItem.Name = "MainMenuToolStripMenuItem";
            MainMenuToolStripMenuItem.Size = new Size(80, 20);
            MainMenuToolStripMenuItem.Text = "Main Menu";
            MainMenuToolStripMenuItem.Click += MainMenuToolStripMenuItem_Click;
            // 
            // frmRemoveTool
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(922, 484);
            Controls.Add(menuStrip1);
            Controls.Add(label7);
            Controls.Add(dgvTools);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "frmRemoveTool";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Remove Tool";
            Load += frmRemoveTool_Load;
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).EndInit();
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
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