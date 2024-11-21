
namespace ToolSYS.Presentation.Forms
{
    partial class FrmViewCustomers
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
            txtPhone = new TextBox();
            txtForename = new TextBox();
            txtEircode = new TextBox();
            groupBox1 = new GroupBox();
            btnClear = new Button();
            txtPhrase = new TextBox();
            label7 = new Label();
            label6 = new Label();
            btnSearch = new Button();
            txtEmail = new TextBox();
            txtSurname = new TextBox();
            txtCustomerID = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            dgvCustomers = new DataGridView();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).BeginInit();
            SuspendLayout();
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
            // txtEircode
            // 
            txtEircode.Location = new Point(456, 92);
            txtEircode.Margin = new Padding(2, 2, 2, 2);
            txtEircode.Name = "txtEircode";
            txtEircode.Size = new Size(206, 23);
            txtEircode.TabIndex = 16;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnClear);
            groupBox1.Controls.Add(txtPhrase);
            groupBox1.Controls.Add(label7);
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
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 53);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(968, 133);
            groupBox1.TabIndex = 13;
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
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(681, 32);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(45, 15);
            label7.TabIndex = 17;
            label7.Text = "Phrase:";
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
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(25, 32);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(76, 15);
            label1.TabIndex = 0;
            label1.Text = "Customer ID:";
            // 
            // dgvCustomers
            // 
            dgvCustomers.AllowUserToAddRows = false;
            dgvCustomers.AllowUserToDeleteRows = false;
            dgvCustomers.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvCustomers.Location = new Point(9, 202);
            dgvCustomers.Margin = new Padding(2, 2, 2, 2);
            dgvCustomers.Name = "dgvCustomers";
            dgvCustomers.ReadOnly = true;
            dgvCustomers.RowHeadersWidth = 62;
            dgvCustomers.RowTemplate.Height = 28;
            dgvCustomers.Size = new Size(968, 307);
            dgvCustomers.TabIndex = 12;
           // 
            // frmViewCustomers
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(988, 518);
            Controls.Add(groupBox1);
            Controls.Add(dgvCustomers);
            Margin = new Padding(2, 2, 2, 2);
            Name = "FrmViewCustomers";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "frmViewCustomers";
            Load += frmViewCustomers_Load;
            Controls.SetChildIndex(dgvCustomers, 0);
            Controls.SetChildIndex(groupBox1, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvCustomers).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.TextBox txtForename;
        private System.Windows.Forms.TextBox txtEircode;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtPhrase;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtSurname;
        private System.Windows.Forms.TextBox txtCustomerID;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvCustomers;
        private System.Windows.Forms.Button btnClear;
    }
}