
namespace ToolSYS.Presentation.Forms
{
    partial class FrmViewRentals
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
            btnFilter = new Button();
            txtEmail = new TextBox();
            txtDescription = new TextBox();
            txtFilterRentalID = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            groupBox1 = new GroupBox();
            txtEircode = new TextBox();
            label6 = new Label();
            txtPhone = new TextBox();
            txtForename = new TextBox();
            dataGridView1 = new DataGridView();
            ColumnRentalID = new DataGridViewTextBoxColumn();
            ColumnForename = new DataGridViewTextBoxColumn();
            ColumnSurname = new DataGridViewTextBoxColumn();
            ColumnEmail = new DataGridViewTextBoxColumn();
            ColumnPhone = new DataGridViewTextBoxColumn();
            ColumnEircode = new DataGridViewTextBoxColumn();
            groupBox2 = new GroupBox();
            btnConfirm = new Button();
            txtRentalID = new TextBox();
            label12 = new Label();
            dgvRentalItems = new DataGridView();
            dataGridViewTextBoxColumn1 = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn2 = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn3 = new DataGridViewTextBoxColumn();
            dataGridViewTextBoxColumn4 = new DataGridViewTextBoxColumn();
            ColumnRentDate = new DataGridViewTextBoxColumn();
            ColumnDueReturn = new DataGridViewTextBoxColumn();
            ColumnFee = new DataGridViewTextBoxColumn();
            label7 = new Label();
            label8 = new Label();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).BeginInit();
            SuspendLayout();
            // 
            // btnFilter
            // 
            btnFilter.BackColor = Color.Gold;
            btnFilter.Location = new Point(684, 51);
            btnFilter.Margin = new Padding(2, 2, 2, 2);
            btnFilter.Name = "btnFilter";
            btnFilter.Size = new Size(98, 46);
            btnFilter.TabIndex = 11;
            btnFilter.Text = "Filter";
            btnFilter.UseVisualStyleBackColor = false;
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(356, 34);
            txtEmail.Margin = new Padding(2, 2, 2, 2);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(206, 23);
            txtEmail.TabIndex = 8;
            // 
            // txtDescription
            // 
            txtDescription.Location = new Point(76, 96);
            txtDescription.Margin = new Padding(2, 2, 2, 2);
            txtDescription.Name = "txtDescription";
            txtDescription.Size = new Size(167, 23);
            txtDescription.TabIndex = 7;
            // 
            // txtFilterRentalID
            // 
            txtFilterRentalID.Location = new Point(76, 34);
            txtFilterRentalID.Margin = new Padding(2, 2, 2, 2);
            txtFilterRentalID.Name = "txtFilterRentalID";
            txtFilterRentalID.Size = new Size(79, 23);
            txtFilterRentalID.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(310, 67);
            label5.Margin = new Padding(2, 0, 2, 0);
            label5.Name = "label5";
            label5.Size = new Size(44, 15);
            label5.TabIndex = 4;
            label5.Text = "Phone:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(310, 36);
            label4.Margin = new Padding(2, 0, 2, 0);
            label4.Name = "label4";
            label4.Size = new Size(39, 15);
            label4.TabIndex = 3;
            label4.Text = "Email:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(5, 98);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(57, 15);
            label3.TabIndex = 2;
            label3.Text = "Surname:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(5, 67);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(63, 15);
            label2.TabIndex = 1;
            label2.Text = "Forename:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(5, 36);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(57, 15);
            label1.TabIndex = 0;
            label1.Text = "Rental ID:";
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(txtEircode);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(txtPhone);
            groupBox1.Controls.Add(txtForename);
            groupBox1.Controls.Add(btnFilter);
            groupBox1.Controls.Add(txtEmail);
            groupBox1.Controls.Add(txtDescription);
            groupBox1.Controls.Add(txtFilterRentalID);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 40);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(862, 133);
            groupBox1.TabIndex = 11;
            groupBox1.TabStop = false;
            groupBox1.Text = "Filters:";
            // 
            // txtEircode
            // 
            txtEircode.Location = new Point(356, 96);
            txtEircode.Margin = new Padding(2, 2, 2, 2);
            txtEircode.Name = "txtEircode";
            txtEircode.Size = new Size(104, 23);
            txtEircode.TabIndex = 15;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(310, 98);
            label6.Margin = new Padding(2, 0, 2, 0);
            label6.Name = "label6";
            label6.Size = new Size(46, 15);
            label6.TabIndex = 14;
            label6.Text = "Eircode";
            // 
            // txtPhone
            // 
            txtPhone.Location = new Point(356, 64);
            txtPhone.Margin = new Padding(2, 2, 2, 2);
            txtPhone.Name = "txtPhone";
            txtPhone.Size = new Size(142, 23);
            txtPhone.TabIndex = 13;
            // 
            // txtForename
            // 
            txtForename.Location = new Point(76, 64);
            txtForename.Margin = new Padding(2, 2, 2, 2);
            txtForename.Name = "txtForename";
            txtForename.Size = new Size(167, 23);
            txtForename.TabIndex = 12;
            // 
            // dataGridView1
            // 
            dataGridView1.AllowUserToAddRows = false;
            dataGridView1.AllowUserToDeleteRows = false;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { ColumnRentalID, ColumnForename, ColumnSurname, ColumnEmail, ColumnPhone, ColumnEircode });
            dataGridView1.Location = new Point(9, 212);
            dataGridView1.Margin = new Padding(2, 2, 2, 2);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.ReadOnly = true;
            dataGridView1.RowHeadersWidth = 62;
            dataGridView1.RowTemplate.Height = 28;
            dataGridView1.Size = new Size(862, 212);
            dataGridView1.TabIndex = 10;
            // 
            // ColumnRentalID
            // 
            ColumnRentalID.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnRentalID.HeaderText = "Rental ID";
            ColumnRentalID.MinimumWidth = 8;
            ColumnRentalID.Name = "ColumnRentalID";
            ColumnRentalID.ReadOnly = true;
            ColumnRentalID.Resizable = DataGridViewTriState.False;
            // 
            // ColumnForename
            // 
            ColumnForename.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnForename.HeaderText = "Forename";
            ColumnForename.MinimumWidth = 8;
            ColumnForename.Name = "ColumnForename";
            ColumnForename.ReadOnly = true;
            ColumnForename.Resizable = DataGridViewTriState.False;
            // 
            // ColumnSurname
            // 
            ColumnSurname.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnSurname.HeaderText = "Surname";
            ColumnSurname.MinimumWidth = 8;
            ColumnSurname.Name = "ColumnSurname";
            ColumnSurname.ReadOnly = true;
            ColumnSurname.Resizable = DataGridViewTriState.False;
            // 
            // ColumnEmail
            // 
            ColumnEmail.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnEmail.HeaderText = "Email";
            ColumnEmail.MinimumWidth = 8;
            ColumnEmail.Name = "ColumnEmail";
            ColumnEmail.ReadOnly = true;
            ColumnEmail.Resizable = DataGridViewTriState.False;
            // 
            // ColumnPhone
            // 
            ColumnPhone.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnPhone.HeaderText = "Phone";
            ColumnPhone.MinimumWidth = 8;
            ColumnPhone.Name = "ColumnPhone";
            ColumnPhone.ReadOnly = true;
            ColumnPhone.Resizable = DataGridViewTriState.False;
            // 
            // ColumnEircode
            // 
            ColumnEircode.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnEircode.HeaderText = "Eircode";
            ColumnEircode.MinimumWidth = 8;
            ColumnEircode.Name = "ColumnEircode";
            ColumnEircode.ReadOnly = true;
            ColumnEircode.Resizable = DataGridViewTriState.False;
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(btnConfirm);
            groupBox2.Controls.Add(txtRentalID);
            groupBox2.Controls.Add(label12);
            groupBox2.Location = new Point(9, 476);
            groupBox2.Margin = new Padding(2, 2, 2, 2);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(2, 2, 2, 2);
            groupBox2.Size = new Size(179, 263);
            groupBox2.TabIndex = 17;
            groupBox2.TabStop = false;
            groupBox2.Text = "Enter Rental ID to View Tools Rented";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(30, 146);
            btnConfirm.Margin = new Padding(2, 2, 2, 2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(98, 46);
            btnConfirm.TabIndex = 11;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            // 
            // txtRentalID
            // 
            txtRentalID.Location = new Point(72, 64);
            txtRentalID.Margin = new Padding(2, 2, 2, 2);
            txtRentalID.Name = "txtRentalID";
            txtRentalID.Size = new Size(79, 23);
            txtRentalID.TabIndex = 5;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Location = new Point(5, 66);
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
            dgvRentalItems.Columns.AddRange(new DataGridViewColumn[] { dataGridViewTextBoxColumn1, dataGridViewTextBoxColumn2, dataGridViewTextBoxColumn3, dataGridViewTextBoxColumn4, ColumnRentDate, ColumnDueReturn, ColumnFee });
            dgvRentalItems.Location = new Point(193, 476);
            dgvRentalItems.Margin = new Padding(2, 2, 2, 2);
            dgvRentalItems.Name = "dgvRentalItems";
            dgvRentalItems.ReadOnly = true;
            dgvRentalItems.RowHeadersWidth = 62;
            dgvRentalItems.RowTemplate.Height = 28;
            dgvRentalItems.Size = new Size(679, 263);
            dgvRentalItems.TabIndex = 18;
            // 
            // dataGridViewTextBoxColumn1
            // 
            dataGridViewTextBoxColumn1.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewTextBoxColumn1.HeaderText = "ID";
            dataGridViewTextBoxColumn1.MinimumWidth = 8;
            dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            dataGridViewTextBoxColumn1.ReadOnly = true;
            dataGridViewTextBoxColumn1.Resizable = DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn2
            // 
            dataGridViewTextBoxColumn2.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewTextBoxColumn2.HeaderText = "Tool Category";
            dataGridViewTextBoxColumn2.MinimumWidth = 8;
            dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            dataGridViewTextBoxColumn2.ReadOnly = true;
            dataGridViewTextBoxColumn2.Resizable = DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn3
            // 
            dataGridViewTextBoxColumn3.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewTextBoxColumn3.HeaderText = "Description";
            dataGridViewTextBoxColumn3.MinimumWidth = 8;
            dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            dataGridViewTextBoxColumn3.ReadOnly = true;
            dataGridViewTextBoxColumn3.Resizable = DataGridViewTriState.False;
            // 
            // dataGridViewTextBoxColumn4
            // 
            dataGridViewTextBoxColumn4.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dataGridViewTextBoxColumn4.HeaderText = "Manufacturer";
            dataGridViewTextBoxColumn4.MinimumWidth = 8;
            dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            dataGridViewTextBoxColumn4.ReadOnly = true;
            dataGridViewTextBoxColumn4.Resizable = DataGridViewTriState.False;
            // 
            // ColumnRentDate
            // 
            ColumnRentDate.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnRentDate.HeaderText = "Rent Date";
            ColumnRentDate.MinimumWidth = 8;
            ColumnRentDate.Name = "ColumnRentDate";
            ColumnRentDate.ReadOnly = true;
            ColumnRentDate.Resizable = DataGridViewTriState.False;
            // 
            // ColumnDueReturn
            // 
            ColumnDueReturn.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnDueReturn.HeaderText = "Due Return Date";
            ColumnDueReturn.MinimumWidth = 8;
            ColumnDueReturn.Name = "ColumnDueReturn";
            ColumnDueReturn.ReadOnly = true;
            ColumnDueReturn.Resizable = DataGridViewTriState.False;
            // 
            // ColumnFee
            // 
            ColumnFee.AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            ColumnFee.HeaderText = "Fee";
            ColumnFee.MinimumWidth = 8;
            ColumnFee.Name = "ColumnFee";
            ColumnFee.ReadOnly = true;
            ColumnFee.Resizable = DataGridViewTriState.False;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(401, 194);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(45, 15);
            label7.TabIndex = 19;
            label7.Text = "Rentals";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(504, 458);
            label8.Margin = new Padding(2, 0, 2, 0);
            label8.Name = "label8";
            label8.Size = new Size(72, 15);
            label8.TabIndex = 20;
            label8.Text = "Rental Items";
            // 
            // ratesToolStripMenuItem
            // 
            RatesToolStripMenuItem.Name = "RatesToolStripMenuItem";
            RatesToolStripMenuItem.Size = new Size(79, 28);
            RatesToolStripMenuItem.Text = "Rates";
            // 
            // frmViewRentals
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(880, 748);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(dgvRentalItems);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            Controls.Add(dataGridView1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "FrmViewRentals";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "View Rentals";
            Controls.SetChildIndex(dataGridView1, 0);
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(groupBox2, 0);
            Controls.SetChildIndex(dgvRentalItems, 0);
            Controls.SetChildIndex(label7, 0);
            Controls.SetChildIndex(label8, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Button btnFilter;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.TextBox txtFilterRentalID;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRentalID;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnForename;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnSurname;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnEmail;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnPhone;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnEircode;
        private System.Windows.Forms.TextBox txtEircode;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.TextBox txtForename;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtRentalID;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView dgvRentalItems;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnRentDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnDueReturn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ColumnFee;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
    }
}