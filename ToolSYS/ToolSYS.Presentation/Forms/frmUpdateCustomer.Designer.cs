
namespace ToolSYS.Presentation.Forms
{
    partial class FrmUpdateCustomer
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
            dgvCustomers = new DataGridView();
            groupBox2 = new GroupBox();
            txtUpdEircode = new TextBox();
            txtUpdPhone = new TextBox();
            txtUpdForename = new TextBox();
            label7 = new Label();
            btnUpdate = new Button();
            txtUpdEmail = new TextBox();
            txtUpdSurname = new TextBox();
            txtUpdCustomerID = new TextBox();
            label8 = new Label();
            label9 = new Label();
            label10 = new Label();
            label11 = new Label();
            label12 = new Label();
            groupBox1 = new GroupBox();
            btnClear = new Button();
            txtPhrase = new TextBox();
            label1 = new Label();
            txtEircode = new TextBox();
            txtPhone = new TextBox();
            txtForename = new TextBox();
            label6 = new Label();
            btnSearch = new Button();
            txtEmail = new TextBox();
            txtSurname = new TextBox();
            txtCustomerID = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label13 = new Label();
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).BeginInit();
            groupBox2.SuspendLayout();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // dgvCustomers
            // 
            dgvCustomers.AllowUserToAddRows = false;
            dgvCustomers.AllowUserToDeleteRows = false;
            dgvCustomers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvCustomers.Location = new Point(9, 186);
            dgvCustomers.Margin = new Padding(2, 2, 2, 2);
            dgvCustomers.Name = "dgvCustomers";
            dgvCustomers.ReadOnly = true;
            dgvCustomers.RowHeadersWidth = 62;
            dgvCustomers.RowTemplate.Height = 28;
            dgvCustomers.Size = new Size(968, 307);
            dgvCustomers.TabIndex = 9;
            dgvCustomers.CellClick += dgvCustomers_CellClick;
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(txtUpdEircode);
            groupBox2.Controls.Add(txtUpdPhone);
            groupBox2.Controls.Add(txtUpdForename);
            groupBox2.Controls.Add(label7);
            groupBox2.Controls.Add(btnUpdate);
            groupBox2.Controls.Add(txtUpdEmail);
            groupBox2.Controls.Add(txtUpdSurname);
            groupBox2.Controls.Add(txtUpdCustomerID);
            groupBox2.Controls.Add(label8);
            groupBox2.Controls.Add(label9);
            groupBox2.Controls.Add(label10);
            groupBox2.Controls.Add(label11);
            groupBox2.Controls.Add(label12);
            groupBox2.Location = new Point(9, 506);
            groupBox2.Margin = new Padding(2, 2, 2, 2);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(2, 2, 2, 2);
            groupBox2.Size = new Size(968, 133);
            groupBox2.TabIndex = 12;
            groupBox2.TabStop = false;
            groupBox2.Text = "Update Customer Details:";
            // 
            // txtUpdEircode
            // 
            txtUpdEircode.Location = new Point(456, 92);
            txtUpdEircode.Margin = new Padding(2, 2, 2, 2);
            txtUpdEircode.Name = "txtUpdEircode";
            txtUpdEircode.Size = new Size(206, 23);
            txtUpdEircode.TabIndex = 16;
            // 
            // txtUpdPhone
            // 
            txtUpdPhone.Location = new Point(456, 62);
            txtUpdPhone.Margin = new Padding(2, 2, 2, 2);
            txtUpdPhone.Name = "txtUpdPhone";
            txtUpdPhone.Size = new Size(206, 23);
            txtUpdPhone.TabIndex = 15;
            // 
            // txtUpdForename
            // 
            txtUpdForename.Location = new Point(110, 62);
            txtUpdForename.Margin = new Padding(2, 2, 2, 2);
            txtUpdForename.Name = "txtUpdForename";
            txtUpdForename.Size = new Size(234, 23);
            txtUpdForename.TabIndex = 14;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(367, 94);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(49, 15);
            label7.TabIndex = 12;
            label7.Text = "Eircode:";
            // 
            // btnUpdate
            // 
            btnUpdate.BackColor = Color.Gold;
            btnUpdate.Location = new Point(759, 43);
            btnUpdate.Margin = new Padding(2, 2, 2, 2);
            btnUpdate.Name = "btnUpdate";
            btnUpdate.Size = new Size(143, 57);
            btnUpdate.TabIndex = 11;
            btnUpdate.Text = "Update";
            btnUpdate.UseVisualStyleBackColor = false;
            btnUpdate.Click += btnUpdate_Click;
            // 
            // txtUpdEmail
            // 
            txtUpdEmail.Location = new Point(456, 30);
            txtUpdEmail.Margin = new Padding(2, 2, 2, 2);
            txtUpdEmail.Name = "txtUpdEmail";
            txtUpdEmail.Size = new Size(206, 23);
            txtUpdEmail.TabIndex = 8;
            // 
            // txtUpdSurname
            // 
            txtUpdSurname.Location = new Point(110, 92);
            txtUpdSurname.Margin = new Padding(2, 2, 2, 2);
            txtUpdSurname.Name = "txtUpdSurname";
            txtUpdSurname.Size = new Size(234, 23);
            txtUpdSurname.TabIndex = 7;
            // 
            // txtUpdCustomerID
            // 
            txtUpdCustomerID.Enabled = false;
            txtUpdCustomerID.Location = new Point(110, 30);
            txtUpdCustomerID.Margin = new Padding(2, 2, 2, 2);
            txtUpdCustomerID.Name = "txtUpdCustomerID";
            txtUpdCustomerID.Size = new Size(79, 23);
            txtUpdCustomerID.TabIndex = 5;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(367, 64);
            label8.Margin = new Padding(2, 0, 2, 0);
            label8.Name = "label8";
            label8.Size = new Size(44, 15);
            label8.TabIndex = 4;
            label8.Text = "Phone:";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(367, 32);
            label9.Margin = new Padding(2, 0, 2, 0);
            label9.Name = "label9";
            label9.Size = new Size(39, 15);
            label9.TabIndex = 3;
            label9.Text = "Email:";
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Location = new Point(25, 94);
            label10.Margin = new Padding(2, 0, 2, 0);
            label10.Name = "label10";
            label10.Size = new Size(57, 15);
            label10.TabIndex = 2;
            label10.Text = "Surname:";
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.Location = new Point(25, 64);
            label11.Margin = new Padding(2, 0, 2, 0);
            label11.Name = "label11";
            label11.Size = new Size(63, 15);
            label11.TabIndex = 1;
            label11.Text = "Forename:";
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Location = new Point(25, 32);
            label12.Margin = new Padding(2, 0, 2, 0);
            label12.Name = "label12";
            label12.Size = new Size(76, 15);
            label12.TabIndex = 0;
            label12.Text = "Customer ID:";
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnClear);
            groupBox1.Controls.Add(txtPhrase);
            groupBox1.Controls.Add(label1);
            groupBox1.Controls.Add(txtEircode);
            groupBox1.Controls.Add(txtPhone);
            groupBox1.Controls.Add(txtForename);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(btnSearch);
            groupBox1.Controls.Add(txtEmail);
            groupBox1.Controls.Add(txtSurname);
            groupBox1.Controls.Add(txtCustomerID);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label13);
            groupBox1.Location = new Point(9, 42);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(968, 133);
            groupBox1.TabIndex = 17;
            groupBox1.TabStop = false;
            groupBox1.Text = "Filters:";
            // 
            // btnClear
            // 
            btnClear.BackColor = Color.Gold;
            btnClear.Location = new Point(734, 64);
            btnClear.Margin = new Padding(2, 2, 2, 2);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(97, 48);
            btnClear.TabIndex = 19;
            btnClear.Text = "Clear";
            btnClear.UseVisualStyleBackColor = false;
            btnClear.Click += btnClear_Click;
            // 
            // txtPhrase
            // 
            txtPhrase.Location = new Point(734, 30);
            txtPhrase.Margin = new Padding(2, 2, 2, 2);
            txtPhrase.Name = "txtPhrase";
            txtPhrase.Size = new Size(206, 23);
            txtPhrase.TabIndex = 18;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(681, 32);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(45, 15);
            label1.TabIndex = 17;
            label1.Text = "Phrase:";
            // 
            // txtEircode
            // 
            txtEircode.Location = new Point(456, 92);
            txtEircode.Margin = new Padding(2, 2, 2, 2);
            txtEircode.Name = "txtEircode";
            txtEircode.Size = new Size(206, 23);
            txtEircode.TabIndex = 16;
            // 
            // txtPhone
            // 
            txtPhone.Location = new Point(456, 62);
            txtPhone.Margin = new Padding(2, 2, 2, 2);
            txtPhone.Name = "txtPhone";
            txtPhone.Size = new Size(206, 23);
            txtPhone.TabIndex = 15;
            // 
            // txtForename
            // 
            txtForename.Location = new Point(110, 62);
            txtForename.Margin = new Padding(2, 2, 2, 2);
            txtForename.Name = "txtForename";
            txtForename.Size = new Size(234, 23);
            txtForename.TabIndex = 14;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(367, 94);
            label6.Margin = new Padding(2, 0, 2, 0);
            label6.Name = "label6";
            label6.Size = new Size(49, 15);
            label6.TabIndex = 12;
            label6.Text = "Eircode:";
            // 
            // btnSearch
            // 
            btnSearch.BackColor = Color.Gold;
            btnSearch.Location = new Point(842, 64);
            btnSearch.Margin = new Padding(2, 2, 2, 2);
            btnSearch.Name = "btnSearch";
            btnSearch.Size = new Size(97, 48);
            btnSearch.TabIndex = 11;
            btnSearch.Text = "Search";
            btnSearch.UseVisualStyleBackColor = false;
            btnSearch.Click += btnSearch_Click;
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(456, 30);
            txtEmail.Margin = new Padding(2, 2, 2, 2);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(206, 23);
            txtEmail.TabIndex = 8;
            // 
            // txtSurname
            // 
            txtSurname.Location = new Point(110, 92);
            txtSurname.Margin = new Padding(2, 2, 2, 2);
            txtSurname.Name = "txtSurname";
            txtSurname.Size = new Size(234, 23);
            txtSurname.TabIndex = 7;
            // 
            // txtCustomerID
            // 
            txtCustomerID.Location = new Point(110, 30);
            txtCustomerID.Margin = new Padding(2, 2, 2, 2);
            txtCustomerID.Name = "txtCustomerID";
            txtCustomerID.Size = new Size(79, 23);
            txtCustomerID.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(367, 64);
            label5.Margin = new Padding(2, 0, 2, 0);
            label5.Name = "label5";
            label5.Size = new Size(44, 15);
            label5.TabIndex = 4;
            label5.Text = "Phone:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(367, 32);
            label4.Margin = new Padding(2, 0, 2, 0);
            label4.Name = "label4";
            label4.Size = new Size(39, 15);
            label4.TabIndex = 3;
            label4.Text = "Email:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(25, 94);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(57, 15);
            label3.TabIndex = 2;
            label3.Text = "Surname:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(25, 64);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(63, 15);
            label2.TabIndex = 1;
            label2.Text = "Forename:";
            // 
            // label13
            // 
            label13.AutoSize = true;
            label13.Location = new Point(25, 32);
            label13.Margin = new Padding(2, 0, 2, 0);
            label13.Name = "label13";
            label13.Size = new Size(76, 15);
            label13.TabIndex = 0;
            label13.Text = "Customer ID:";
            // 
            // frmUpdateCustomer
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(994, 653);
            Controls.Add(groupBox1);
            Controls.Add(groupBox2);
            Controls.Add(dgvCustomers);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "FrmUpdateCustomer";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "frmUpdateCustomer";
            Controls.SetChildIndex(dgvCustomers, 0);
            Controls.SetChildIndex(groupBox2, 0);
            Controls.SetChildIndex(groupBox1, 0);
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).EndInit();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
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
    }
}