
namespace ToolSYS.Presentation.Forms
{
    partial class FrmRentTools
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
            txtEircode = new TextBox();
            txtPhone = new TextBox();
            txtForename = new TextBox();
            label6 = new Label();
            txtEmail = new TextBox();
            txtSurname = new TextBox();
            txtCustomerID = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            btnCustomerSearch = new Button();
            txtCustomerSearch = new TextBox();
            dgvCustomers = new DataGridView();
            groupBox2 = new GroupBox();
            label7 = new Label();
            dtpTo = new DateTimePicker();
            dtpFrom = new DateTimePicker();
            cboCategories = new ComboBox();
            btnAddToRental = new Button();
            dgvTools = new DataGridView();
            groupBox3 = new GroupBox();
            dgvRental = new DataGridView();
            txtTotalFee = new TextBox();
            groupBox4 = new GroupBox();
            btnConfirmRental = new Button();
            txtRentalID = new TextBox();
            label9 = new Label();
            label8 = new Label();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).BeginInit();
            groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).BeginInit();
            groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRental).BeginInit();
            groupBox4.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtEircode);
            groupBox1.Controls.Add(txtPhone);
            groupBox1.Controls.Add(txtForename);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(txtEmail);
            groupBox1.Controls.Add(txtSurname);
            groupBox1.Controls.Add(txtCustomerID);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label1);
            groupBox1.Controls.Add(btnCustomerSearch);
            groupBox1.Controls.Add(txtCustomerSearch);
            groupBox1.Controls.Add(dgvCustomers);
            groupBox1.Location = new Point(9, 32);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(572, 360);
            groupBox1.TabIndex = 11;
            groupBox1.TabStop = false;
            groupBox1.Text = "Select Customer:";
            // 
            // txtEircode
            // 
            txtEircode.Enabled = false;
            txtEircode.Location = new Point(100, 316);
            txtEircode.Margin = new Padding(2, 2, 2, 2);
            txtEircode.Name = "txtEircode";
            txtEircode.Size = new Size(130, 23);
            txtEircode.TabIndex = 28;
            // 
            // txtPhone
            // 
            txtPhone.Enabled = false;
            txtPhone.Location = new Point(100, 292);
            txtPhone.Margin = new Padding(2, 2, 2, 2);
            txtPhone.Name = "txtPhone";
            txtPhone.Size = new Size(206, 23);
            txtPhone.TabIndex = 27;
            // 
            // txtForename
            // 
            txtForename.Enabled = false;
            txtForename.Location = new Point(100, 219);
            txtForename.Margin = new Padding(2, 2, 2, 2);
            txtForename.Name = "txtForename";
            txtForename.Size = new Size(234, 23);
            txtForename.TabIndex = 26;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(16, 319);
            label6.Margin = new Padding(2, 0, 2, 0);
            label6.Name = "label6";
            label6.Size = new Size(49, 15);
            label6.TabIndex = 25;
            label6.Text = "Eircode:";
            // 
            // txtEmail
            // 
            txtEmail.Enabled = false;
            txtEmail.Location = new Point(100, 268);
            txtEmail.Margin = new Padding(2, 2, 2, 2);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(234, 23);
            txtEmail.TabIndex = 24;
            // 
            // txtSurname
            // 
            txtSurname.Enabled = false;
            txtSurname.Location = new Point(100, 244);
            txtSurname.Margin = new Padding(2, 2, 2, 2);
            txtSurname.Name = "txtSurname";
            txtSurname.Size = new Size(234, 23);
            txtSurname.TabIndex = 23;
            // 
            // txtCustomerID
            // 
            txtCustomerID.Enabled = false;
            txtCustomerID.Location = new Point(100, 196);
            txtCustomerID.Margin = new Padding(2, 2, 2, 2);
            txtCustomerID.Name = "txtCustomerID";
            txtCustomerID.Size = new Size(79, 23);
            txtCustomerID.TabIndex = 22;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(16, 296);
            label5.Margin = new Padding(2, 0, 2, 0);
            label5.Name = "label5";
            label5.Size = new Size(44, 15);
            label5.TabIndex = 21;
            label5.Text = "Phone:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(16, 270);
            label4.Margin = new Padding(2, 0, 2, 0);
            label4.Name = "label4";
            label4.Size = new Size(39, 15);
            label4.TabIndex = 20;
            label4.Text = "Email:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(16, 246);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(57, 15);
            label3.TabIndex = 19;
            label3.Text = "Surname:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(16, 221);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(63, 15);
            label2.TabIndex = 18;
            label2.Text = "Forename:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(16, 199);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(76, 15);
            label1.TabIndex = 17;
            label1.Text = "Customer ID:";
            // 
            // btnCustomerSearch
            // 
            btnCustomerSearch.Location = new Point(487, 19);
            btnCustomerSearch.Margin = new Padding(2, 2, 2, 2);
            btnCustomerSearch.Name = "btnCustomerSearch";
            btnCustomerSearch.Size = new Size(82, 30);
            btnCustomerSearch.TabIndex = 2;
            btnCustomerSearch.Text = "Search";
            btnCustomerSearch.UseVisualStyleBackColor = true;
            btnCustomerSearch.Click += btnCustomerSearch_Click;
            // 
            // txtCustomerSearch
            // 
            txtCustomerSearch.Location = new Point(5, 24);
            txtCustomerSearch.Margin = new Padding(2, 2, 2, 2);
            txtCustomerSearch.Name = "txtCustomerSearch";
            txtCustomerSearch.Size = new Size(345, 23);
            txtCustomerSearch.TabIndex = 1;
            txtCustomerSearch.KeyPress += txtCustomerSearch_KeyPress;
            // 
            // dgvCustomers
            // 
            dgvCustomers.AllowUserToAddRows = false;
            dgvCustomers.AllowUserToDeleteRows = false;
            dgvCustomers.ColumnHeadersHeight = 34;
            dgvCustomers.Location = new Point(5, 53);
            dgvCustomers.Margin = new Padding(2, 2, 2, 2);
            dgvCustomers.Name = "dgvCustomers";
            dgvCustomers.ReadOnly = true;
            dgvCustomers.RowHeadersVisible = false;
            dgvCustomers.RowHeadersWidth = 62;
            dgvCustomers.Size = new Size(563, 128);
            dgvCustomers.TabIndex = 29;
            dgvCustomers.CellClick += dgvCustomers_CellClick;
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(label7);
            groupBox2.Controls.Add(dtpTo);
            groupBox2.Controls.Add(dtpFrom);
            groupBox2.Controls.Add(cboCategories);
            groupBox2.Controls.Add(btnAddToRental);
            groupBox2.Controls.Add(dgvTools);
            groupBox2.Location = new Point(9, 409);
            groupBox2.Margin = new Padding(2, 2, 2, 2);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(2, 2, 2, 2);
            groupBox2.Size = new Size(577, 465);
            groupBox2.TabIndex = 12;
            groupBox2.TabStop = false;
            groupBox2.Text = "Select Tools:";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(414, 23);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(21, 15);
            label7.TabIndex = 31;
            label7.Text = "TO";
            // 
            // dtpTo
            // 
            dtpTo.Format = DateTimePickerFormat.Short;
            dtpTo.Location = new Point(445, 21);
            dtpTo.Margin = new Padding(2, 2, 2, 2);
            dtpTo.Name = "dtpTo";
            dtpTo.Size = new Size(128, 23);
            dtpTo.TabIndex = 30;
            // 
            // dtpFrom
            // 
            dtpFrom.Format = DateTimePickerFormat.Short;
            dtpFrom.Location = new Point(282, 21);
            dtpFrom.Margin = new Padding(2, 2, 2, 2);
            dtpFrom.MinDate = new DateTime(2023, 4, 20, 13, 10, 0, 0);
            dtpFrom.Name = "dtpFrom";
            dtpFrom.Size = new Size(128, 23);
            dtpFrom.TabIndex = 29;
            dtpFrom.Value = new DateTime(2023, 4, 20, 13, 10, 0, 0);
            // 
            // cboCategories
            // 
            cboCategories.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCategories.FormattingEnabled = true;
            cboCategories.Location = new Point(5, 20);
            cboCategories.Margin = new Padding(2, 2, 2, 2);
            cboCategories.Name = "cboCategories";
            cboCategories.Size = new Size(272, 23);
            cboCategories.TabIndex = 28;
            cboCategories.SelectedIndexChanged += cboCategories_SelectedIndexChanged;
            // 
            // btnAddToRental
            // 
            btnAddToRental.Location = new Point(203, 397);
            btnAddToRental.Margin = new Padding(2, 2, 2, 2);
            btnAddToRental.Name = "btnAddToRental";
            btnAddToRental.Size = new Size(137, 46);
            btnAddToRental.TabIndex = 27;
            btnAddToRental.Text = "Add To Rental";
            btnAddToRental.UseVisualStyleBackColor = true;
            btnAddToRental.Click += btnAddToRental_Click;
            // 
            // dgvTools
            // 
            dgvTools.AllowUserToAddRows = false;
            dgvTools.AllowUserToDeleteRows = false;
            dgvTools.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTools.Location = new Point(5, 51);
            dgvTools.Margin = new Padding(2, 2, 2, 2);
            dgvTools.Name = "dgvTools";
            dgvTools.ReadOnly = true;
            dgvTools.RowHeadersVisible = false;
            dgvTools.RowHeadersWidth = 62;
            dgvTools.RowTemplate.Height = 28;
            dgvTools.Size = new Size(563, 324);
            dgvTools.TabIndex = 9;
            dgvTools.CellDoubleClick += dgvTools_CellDoubleClick;
            // 
            // groupBox3
            // 
            groupBox3.Controls.Add(dgvRental);
            groupBox3.Location = new Point(597, 32);
            groupBox3.Margin = new Padding(2, 2, 2, 2);
            groupBox3.Name = "groupBox3";
            groupBox3.Padding = new Padding(2, 2, 2, 2);
            groupBox3.Size = new Size(842, 360);
            groupBox3.TabIndex = 13;
            groupBox3.TabStop = false;
            groupBox3.Text = "Rental:";
            // 
            // dgvRental
            // 
            dgvRental.AllowUserToAddRows = false;
            dgvRental.AllowUserToDeleteRows = false;
            dgvRental.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvRental.Location = new Point(5, 19);
            dgvRental.Margin = new Padding(2, 2, 2, 2);
            dgvRental.Name = "dgvRental";
            dgvRental.RowHeadersVisible = false;
            dgvRental.RowHeadersWidth = 62;
            dgvRental.RowTemplate.Height = 28;
            dgvRental.Size = new Size(833, 337);
            dgvRental.TabIndex = 0;
            // 
            // txtTotalFee
            // 
            txtTotalFee.Enabled = false;
            txtTotalFee.Location = new Point(429, 200);
            txtTotalFee.Margin = new Padding(2, 2, 2, 2);
            txtTotalFee.Name = "txtTotalFee";
            txtTotalFee.Size = new Size(108, 23);
            txtTotalFee.TabIndex = 30;
            // 
            // groupBox4
            // 
            groupBox4.Controls.Add(btnConfirmRental);
            groupBox4.Controls.Add(txtRentalID);
            groupBox4.Controls.Add(label9);
            groupBox4.Controls.Add(label8);
            groupBox4.Controls.Add(txtTotalFee);
            groupBox4.Location = new Point(597, 409);
            groupBox4.Margin = new Padding(2, 2, 2, 2);
            groupBox4.Name = "groupBox4";
            groupBox4.Padding = new Padding(2, 2, 2, 2);
            groupBox4.Size = new Size(842, 466);
            groupBox4.TabIndex = 31;
            groupBox4.TabStop = false;
            groupBox4.Text = "Confirm Rental:";
            // 
            // btnConfirmRental
            // 
            btnConfirmRental.BackColor = Color.Gold;
            btnConfirmRental.Location = new Point(320, 260);
            btnConfirmRental.Margin = new Padding(2, 2, 2, 2);
            btnConfirmRental.Name = "btnConfirmRental";
            btnConfirmRental.Size = new Size(217, 64);
            btnConfirmRental.TabIndex = 34;
            btnConfirmRental.Text = "Confirm Rental";
            btnConfirmRental.UseVisualStyleBackColor = false;
            btnConfirmRental.Click += btnConfirmRental_Click;
            // 
            // txtRentalID
            // 
            txtRentalID.Enabled = false;
            txtRentalID.Location = new Point(429, 137);
            txtRentalID.Margin = new Padding(2, 2, 2, 2);
            txtRentalID.Name = "txtRentalID";
            txtRentalID.Size = new Size(108, 23);
            txtRentalID.TabIndex = 33;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(302, 141);
            label9.Margin = new Padding(2, 0, 2, 0);
            label9.Name = "label9";
            label9.Size = new Size(81, 15);
            label9.TabIndex = 32;
            label9.Text = "This Rental ID:";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(317, 203);
            label8.Margin = new Padding(2, 0, 2, 0);
            label8.Name = "label8";
            label8.Size = new Size(56, 15);
            label8.TabIndex = 31;
            label8.Text = "Total Fee:";
            // 
            // frmRentTools
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            AutoSize = true;
            ClientSize = new Size(1449, 884);
            Controls.Add(groupBox4);
            Controls.Add(groupBox3);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(3, 4, 3, 4);
            Name = "FrmRentTools";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Rent Tools";
            Load += frmRentTools_Load;
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(groupBox2, 0);
            Controls.SetChildIndex(groupBox3, 0);
            Controls.SetChildIndex(groupBox4, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).EndInit();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).EndInit();
            groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dgvRental).EndInit();
            groupBox4.ResumeLayout(false);
            groupBox4.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnCustomerSearch;
        private System.Windows.Forms.TextBox txtCustomerSearch;
        private System.Windows.Forms.DataGridView dgvCustomers;
        private System.Windows.Forms.DataGridView dgvRental;
        private System.Windows.Forms.Button btnAddToRental;
        private System.Windows.Forms.DataGridView dgvTools;
        private System.Windows.Forms.TextBox txtEircode;
        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.TextBox txtForename;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtSurname;
        private System.Windows.Forms.TextBox txtCustomerID;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DateTimePicker dtpTo;
        private System.Windows.Forms.DateTimePicker dtpFrom;
        private System.Windows.Forms.ComboBox cboCategories;
        private System.Windows.Forms.TextBox txtTotalFee;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtRentalID;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button btnConfirmRental;
    }
}