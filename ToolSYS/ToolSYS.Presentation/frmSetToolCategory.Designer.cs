
namespace ToolSYS.Presentation
{
    partial class frmSetToolCategory
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
            txtCategoryCode = new TextBox();
            txtRate = new TextBox();
            label3 = new Label();
            btnConfirm = new Button();
            txtCategoryDesc = new TextBox();
            label2 = new Label();
            label1 = new Label();
            groupBox1 = new GroupBox();
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
            annualToolTypeAnalysisToolStripMenuItem = new ToolStripMenuItem();
            MainMenuToolStripMenuItem = new ToolStripMenuItem();
            groupBox1.SuspendLayout();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // txtCategoryCode
            // 
            txtCategoryCode.Location = new Point(232, 67);
            txtCategoryCode.Margin = new Padding(2, 2, 2, 2);
            txtCategoryCode.MaxLength = 2;
            txtCategoryCode.Name = "txtCategoryCode";
            txtCategoryCode.Size = new Size(95, 23);
            txtCategoryCode.TabIndex = 1;
            // 
            // txtRate
            // 
            txtRate.Location = new Point(232, 116);
            txtRate.Margin = new Padding(2, 2, 2, 2);
            txtRate.Name = "txtRate";
            txtRate.Size = new Size(95, 23);
            txtRate.TabIndex = 3;
            txtRate.Text = "0.0";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(106, 69);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(89, 15);
            label3.TabIndex = 5;
            label3.Text = "Category Code:";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(200, 199);
            btnConfirm.Margin = new Padding(2, 2, 2, 2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(104, 52);
            btnConfirm.TabIndex = 4;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // txtCategoryDesc
            // 
            txtCategoryDesc.Location = new Point(232, 92);
            txtCategoryDesc.Margin = new Padding(2, 2, 2, 2);
            txtCategoryDesc.Name = "txtCategoryDesc";
            txtCategoryDesc.Size = new Size(184, 23);
            txtCategoryDesc.TabIndex = 2;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(106, 117);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(33, 15);
            label2.TabIndex = 2;
            label2.Text = "Rate:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(106, 92);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(121, 15);
            label1.TabIndex = 1;
            label1.Text = "Category Description:";
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtCategoryCode);
            groupBox1.Controls.Add(txtRate);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(btnConfirm);
            groupBox1.Controls.Add(txtCategoryDesc);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 32);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(519, 296);
            groupBox1.TabIndex = 11;
            groupBox1.TabStop = false;
            groupBox1.Text = "Enter New Category Details:";
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
            menuStrip1.Size = new Size(537, 24);
            menuStrip1.TabIndex = 12;
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
            // frmSetToolCategory
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(537, 337);
            Controls.Add(menuStrip1);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "frmSetToolCategory";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Set Tool Category";
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.TextBox txtCategoryCode;
        private System.Windows.Forms.TextBox txtRate;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtCategoryDesc;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
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
        private System.Windows.Forms.ToolStripMenuItem annualToolTypeAnalysisToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem MainMenuToolStripMenuItem;
    }
}