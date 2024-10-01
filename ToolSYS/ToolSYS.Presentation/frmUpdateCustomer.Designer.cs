
namespace ToolSYS
{
    partial class frmUpdateCustomer
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
            this.dgvCustomers = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtUpdEircode = new System.Windows.Forms.TextBox();
            this.txtUpdPhone = new System.Windows.Forms.TextBox();
            this.txtUpdForename = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.txtUpdEmail = new System.Windows.Forms.TextBox();
            this.txtUpdSurname = new System.Windows.Forms.TextBox();
            this.txtUpdCustomerID = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.txtPhrase = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtEircode = new System.Windows.Forms.TextBox();
            this.txtPhone = new System.Windows.Forms.TextBox();
            this.txtForename = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtSurname = new System.Windows.Forms.TextBox();
            this.txtCustomerID = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
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
            this.viewCustomersToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.rentToolToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.returnToolsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewRentalsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.adminReportsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualRevenueAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.annualToolTypeAnalysisToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.MainMenuToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCustomers)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvCustomers
            // 
            this.dgvCustomers.AllowUserToAddRows = false;
            this.dgvCustomers.AllowUserToDeleteRows = false;
            this.dgvCustomers.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCustomers.Location = new System.Drawing.Point(12, 248);
            this.dgvCustomers.Name = "dgvCustomers";
            this.dgvCustomers.ReadOnly = true;
            this.dgvCustomers.RowHeadersWidth = 62;
            this.dgvCustomers.RowTemplate.Height = 28;
            this.dgvCustomers.Size = new System.Drawing.Size(1245, 409);
            this.dgvCustomers.TabIndex = 9;
            this.dgvCustomers.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvCustomers_CellClick);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtUpdEircode);
            this.groupBox2.Controls.Add(this.txtUpdPhone);
            this.groupBox2.Controls.Add(this.txtUpdForename);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.btnUpdate);
            this.groupBox2.Controls.Add(this.txtUpdEmail);
            this.groupBox2.Controls.Add(this.txtUpdSurname);
            this.groupBox2.Controls.Add(this.txtUpdCustomerID);
            this.groupBox2.Controls.Add(this.label8);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Location = new System.Drawing.Point(12, 675);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(1245, 177);
            this.groupBox2.TabIndex = 12;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Update Customer Details:";
            // 
            // txtUpdEircode
            // 
            this.txtUpdEircode.Location = new System.Drawing.Point(586, 123);
            this.txtUpdEircode.Name = "txtUpdEircode";
            this.txtUpdEircode.Size = new System.Drawing.Size(264, 26);
            this.txtUpdEircode.TabIndex = 16;
            // 
            // txtUpdPhone
            // 
            this.txtUpdPhone.Location = new System.Drawing.Point(586, 82);
            this.txtUpdPhone.Name = "txtUpdPhone";
            this.txtUpdPhone.Size = new System.Drawing.Size(264, 26);
            this.txtUpdPhone.TabIndex = 15;
            // 
            // txtUpdForename
            // 
            this.txtUpdForename.Location = new System.Drawing.Point(141, 82);
            this.txtUpdForename.Name = "txtUpdForename";
            this.txtUpdForename.Size = new System.Drawing.Size(300, 26);
            this.txtUpdForename.TabIndex = 14;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(472, 126);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(67, 20);
            this.label7.TabIndex = 12;
            this.label7.Text = "Eircode:";
            // 
            // btnUpdate
            // 
            this.btnUpdate.BackColor = System.Drawing.Color.Gold;
            this.btnUpdate.Location = new System.Drawing.Point(976, 57);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(184, 76);
            this.btnUpdate.TabIndex = 11;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseVisualStyleBackColor = false;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // txtUpdEmail
            // 
            this.txtUpdEmail.Location = new System.Drawing.Point(586, 40);
            this.txtUpdEmail.Name = "txtUpdEmail";
            this.txtUpdEmail.Size = new System.Drawing.Size(264, 26);
            this.txtUpdEmail.TabIndex = 8;
            // 
            // txtUpdSurname
            // 
            this.txtUpdSurname.Location = new System.Drawing.Point(141, 123);
            this.txtUpdSurname.Name = "txtUpdSurname";
            this.txtUpdSurname.Size = new System.Drawing.Size(300, 26);
            this.txtUpdSurname.TabIndex = 7;
            // 
            // txtUpdCustomerID
            // 
            this.txtUpdCustomerID.Enabled = false;
            this.txtUpdCustomerID.Location = new System.Drawing.Point(141, 40);
            this.txtUpdCustomerID.Name = "txtUpdCustomerID";
            this.txtUpdCustomerID.Size = new System.Drawing.Size(100, 26);
            this.txtUpdCustomerID.TabIndex = 5;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(472, 85);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 20);
            this.label8.TabIndex = 4;
            this.label8.Text = "Phone:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(472, 43);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(52, 20);
            this.label9.TabIndex = 3;
            this.label9.Text = "Email:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(32, 126);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(78, 20);
            this.label10.TabIndex = 2;
            this.label10.Text = "Surname:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(32, 85);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(86, 20);
            this.label11.TabIndex = 1;
            this.label11.Text = "Forename:";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(32, 43);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(103, 20);
            this.label12.TabIndex = 0;
            this.label12.Text = "Customer ID:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnClear);
            this.groupBox1.Controls.Add(this.txtPhrase);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txtEircode);
            this.groupBox1.Controls.Add(this.txtPhone);
            this.groupBox1.Controls.Add(this.txtForename);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.btnSearch);
            this.groupBox1.Controls.Add(this.txtEmail);
            this.groupBox1.Controls.Add(this.txtSurname);
            this.groupBox1.Controls.Add(this.txtCustomerID);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label13);
            this.groupBox1.Location = new System.Drawing.Point(12, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1245, 177);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Filters:";
            // 
            // btnClear
            // 
            this.btnClear.BackColor = System.Drawing.Color.Gold;
            this.btnClear.Location = new System.Drawing.Point(944, 85);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(125, 64);
            this.btnClear.TabIndex = 19;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = false;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // txtPhrase
            // 
            this.txtPhrase.Location = new System.Drawing.Point(944, 40);
            this.txtPhrase.Name = "txtPhrase";
            this.txtPhrase.Size = new System.Drawing.Size(264, 26);
            this.txtPhrase.TabIndex = 18;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(875, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 20);
            this.label1.TabIndex = 17;
            this.label1.Text = "Phrase:";
            // 
            // txtEircode
            // 
            this.txtEircode.Location = new System.Drawing.Point(586, 123);
            this.txtEircode.Name = "txtEircode";
            this.txtEircode.Size = new System.Drawing.Size(264, 26);
            this.txtEircode.TabIndex = 16;
            // 
            // txtPhone
            // 
            this.txtPhone.Location = new System.Drawing.Point(586, 82);
            this.txtPhone.Name = "txtPhone";
            this.txtPhone.Size = new System.Drawing.Size(264, 26);
            this.txtPhone.TabIndex = 15;
            // 
            // txtForename
            // 
            this.txtForename.Location = new System.Drawing.Point(141, 82);
            this.txtForename.Name = "txtForename";
            this.txtForename.Size = new System.Drawing.Size(300, 26);
            this.txtForename.TabIndex = 14;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(472, 126);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(67, 20);
            this.label6.TabIndex = 12;
            this.label6.Text = "Eircode:";
            // 
            // btnSearch
            // 
            this.btnSearch.BackColor = System.Drawing.Color.Gold;
            this.btnSearch.Location = new System.Drawing.Point(1083, 85);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(125, 64);
            this.btnSearch.TabIndex = 11;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(586, 40);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(264, 26);
            this.txtEmail.TabIndex = 8;
            // 
            // txtSurname
            // 
            this.txtSurname.Location = new System.Drawing.Point(141, 123);
            this.txtSurname.Name = "txtSurname";
            this.txtSurname.Size = new System.Drawing.Size(300, 26);
            this.txtSurname.TabIndex = 7;
            // 
            // txtCustomerID
            // 
            this.txtCustomerID.Location = new System.Drawing.Point(141, 40);
            this.txtCustomerID.Name = "txtCustomerID";
            this.txtCustomerID.Size = new System.Drawing.Size(100, 26);
            this.txtCustomerID.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(472, 85);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 20);
            this.label5.TabIndex = 4;
            this.label5.Text = "Phone:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(472, 43);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(52, 20);
            this.label4.TabIndex = 3;
            this.label4.Text = "Email:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(32, 126);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 20);
            this.label3.TabIndex = 2;
            this.label3.Text = "Surname:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 85);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "Forename:";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(32, 43);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(103, 20);
            this.label13.TabIndex = 0;
            this.label13.Text = "Customer ID:";
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
            this.menuStrip1.Size = new System.Drawing.Size(1278, 32);
            this.menuStrip1.TabIndex = 18;
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
            this.viewCustomersToolStripMenuItem});
            this.customersToolStripMenuItem.Name = "customersToolStripMenuItem";
            this.customersToolStripMenuItem.Size = new System.Drawing.Size(123, 28);
            this.customersToolStripMenuItem.Text = "Customers";
            // 
            // addCustomerToolStripMenuItem
            // 
            this.addCustomerToolStripMenuItem.Name = "addCustomerToolStripMenuItem";
            this.addCustomerToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
            this.addCustomerToolStripMenuItem.Text = "Add Customer";
            this.addCustomerToolStripMenuItem.Click += new System.EventHandler(this.AddCustomerToolStripMenuItem_Click);
            // 
            // viewCustomersToolStripMenuItem
            // 
            this.viewCustomersToolStripMenuItem.Name = "viewCustomersToolStripMenuItem";
            this.viewCustomersToolStripMenuItem.Size = new System.Drawing.Size(270, 34);
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
            // frmUpdateCustomer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1278, 871);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.dgvCustomers);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmUpdateCustomer";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmUpdateCustomer";
            this.Load += new System.EventHandler(this.frmUpdateCustomer_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCustomers)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView dgvCustomers;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtUpdEircode;
        private System.Windows.Forms.TextBox txtUpdPhone;
        private System.Windows.Forms.TextBox txtUpdForename;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.TextBox txtUpdEmail;
        private System.Windows.Forms.TextBox txtUpdSurname;
        private System.Windows.Forms.TextBox txtUpdCustomerID;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.TextBox txtPhrase;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtEircode;
        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.TextBox txtForename;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtSurname;
        private System.Windows.Forms.TextBox txtCustomerID;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label13;
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