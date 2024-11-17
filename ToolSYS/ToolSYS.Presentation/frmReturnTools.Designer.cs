
namespace ToolSYS.Presentation
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
            gbxRentalID = new GroupBox();
            btnConfirm = new Button();
            txtRentalID = new TextBox();
            label12 = new Label();
            dgvRentalItems = new DataGridView();
            gbxReturnTool = new GroupBox();
            btnFinish = new Button();
            btnReturn = new Button();
            txtToolID = new TextBox();
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
            viewRentalsToolStripMenuItem = new ToolStripMenuItem();
            adminReportsToolStripMenuItem = new ToolStripMenuItem();
            annualRevenueAnalysisToolStripMenuItem = new ToolStripMenuItem();
            annualToolTypeAnalysisToolStripMenuItem = new ToolStripMenuItem();
            MainMenuToolStripMenuItem = new ToolStripMenuItem();
            gbxRentalID.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).BeginInit();
            gbxReturnTool.SuspendLayout();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // gbxRentalID
            // 
            gbxRentalID.Controls.Add(btnConfirm);
            gbxRentalID.Controls.Add(txtRentalID);
            gbxRentalID.Controls.Add(label12);
            gbxRentalID.Location = new Point(9, 38);
            gbxRentalID.Margin = new Padding(2);
            gbxRentalID.Name = "gbxRentalID";
            gbxRentalID.Padding = new Padding(2);
            gbxRentalID.Size = new Size(772, 189);
            gbxRentalID.TabIndex = 18;
            gbxRentalID.TabStop = false;
            gbxRentalID.Text = "Enter Rental ID Of The Customer";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(317, 97);
            btnConfirm.Margin = new Padding(2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(98, 46);
            btnConfirm.TabIndex = 11;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // txtRentalID
            // 
            txtRentalID.Location = new Point(359, 51);
            txtRentalID.Margin = new Padding(2);
            txtRentalID.Name = "txtRentalID";
            txtRentalID.Size = new Size(79, 23);
            txtRentalID.TabIndex = 5;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Location = new Point(291, 53);
            label12.Margin = new Padding(2, 0, 2, 0);
            label12.Name = "label12";
            label12.Size = new Size(57, 15);
            label12.TabIndex = 0;
            label12.Text = "Rental ID:";
            // 
            // dgvRentalItems
            // 
            dgvRentalItems.AllowUserToAddRows = false;
            dgvRentalItems.AllowUserToDeleteRows = false;
            dgvRentalItems.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvRentalItems.Location = new Point(5, 33);
            dgvRentalItems.Margin = new Padding(2);
            dgvRentalItems.Name = "dgvRentalItems";
            dgvRentalItems.ReadOnly = true;
            dgvRentalItems.RowHeadersWidth = 62;
            dgvRentalItems.RowTemplate.Height = 28;
            dgvRentalItems.Size = new Size(762, 224);
            dgvRentalItems.TabIndex = 19;
            dgvRentalItems.CellClick += dgvRentalItems_CellClick;
            // 
            // gbxReturnTool
            // 
            gbxReturnTool.Controls.Add(btnFinish);
            gbxReturnTool.Controls.Add(btnReturn);
            gbxReturnTool.Controls.Add(txtToolID);
            gbxReturnTool.Controls.Add(dgvRentalItems);
            gbxReturnTool.Controls.Add(label1);
            gbxReturnTool.Location = new Point(9, 232);
            gbxReturnTool.Margin = new Padding(2);
            gbxReturnTool.Name = "gbxReturnTool";
            gbxReturnTool.Padding = new Padding(2);
            gbxReturnTool.Size = new Size(772, 428);
            gbxReturnTool.TabIndex = 19;
            gbxReturnTool.TabStop = false;
            gbxReturnTool.Text = "Enter The Tool ID You Wish To Return";
            gbxReturnTool.Visible = false;
            // 
            // btnFinish
            // 
            btnFinish.Location = new Point(397, 338);
            btnFinish.Margin = new Padding(2);
            btnFinish.Name = "btnFinish";
            btnFinish.Size = new Size(98, 46);
            btnFinish.TabIndex = 20;
            btnFinish.Text = "Finish";
            btnFinish.UseVisualStyleBackColor = true;
            btnFinish.Click += btnFinish_Click;
            // 
            // btnReturn
            // 
            btnReturn.BackColor = Color.Gold;
            btnReturn.Location = new Point(276, 338);
            btnReturn.Margin = new Padding(2);
            btnReturn.Name = "btnReturn";
            btnReturn.Size = new Size(98, 46);
            btnReturn.TabIndex = 11;
            btnReturn.Text = "Return";
            btnReturn.UseVisualStyleBackColor = false;
            btnReturn.Click += btnReturn_Click;
            // 
            // txtToolID
            // 
            txtToolID.Enabled = false;
            txtToolID.Location = new Point(359, 294);
            txtToolID.Margin = new Padding(2);
            txtToolID.Name = "txtToolID";
            txtToolID.Size = new Size(79, 23);
            txtToolID.TabIndex = 5;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(304, 296);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(46, 15);
            label1.TabIndex = 0;
            label1.Text = "Tool ID:";
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
            menuStrip1.Size = new Size(790, 24);
            menuStrip1.TabIndex = 20;
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
            rentalsToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { rentToolToolStripMenuItem, viewRentalsToolStripMenuItem });
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
            // frmReturnTools
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(790, 666);
            Controls.Add(menuStrip1);
            Controls.Add(gbxReturnTool);
            Controls.Add(gbxRentalID);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "frmReturnTools";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Return Tools";
            gbxRentalID.ResumeLayout(false);
            gbxRentalID.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).EndInit();
            gbxReturnTool.ResumeLayout(false);
            gbxReturnTool.PerformLayout();
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.GroupBox gbxRentalID;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtRentalID;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView dgvRentalItems;
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