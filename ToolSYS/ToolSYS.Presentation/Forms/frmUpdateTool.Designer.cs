
namespace ToolSYS.Presentation.Forms
{
    partial class FrmUpdateTool
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
            dgvTools = new DataGridView();
            groupBox1 = new GroupBox();
            btnClear = new Button();
            txtPhrase = new TextBox();
            label6 = new Label();
            btnSearch = new Button();
            cboStatus = new ComboBox();
            txtManufacturer = new TextBox();
            txtDescription = new TextBox();
            cboCategories = new ComboBox();
            txtToolID = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            groupBox2 = new GroupBox();
            btnUpdate = new Button();
            cboUpdStatus = new ComboBox();
            txtUpdManufacturer = new TextBox();
            txtUpdDescription = new TextBox();
            cboUpdCategories = new ComboBox();
            txtUpdToolID = new TextBox();
            label8 = new Label();
            label9 = new Label();
            label10 = new Label();
            label11 = new Label();
            label12 = new Label();
            ((System.ComponentModel.ISupportInitialize)dgvTools).BeginInit();
            groupBox1.SuspendLayout();
            groupBox2.SuspendLayout();
            SuspendLayout();
            // 
            // dgvTools
            // 
            dgvTools.AllowUserToAddRows = false;
            dgvTools.AllowUserToDeleteRows = false;
            dgvTools.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTools.Location = new Point(12, 194);
            dgvTools.Margin = new Padding(2, 2, 2, 2);
            dgvTools.Name = "dgvTools";
            dgvTools.ReadOnly = true;
            dgvTools.RowHeadersWidth = 62;
            dgvTools.RowTemplate.Height = 28;
            dgvTools.Size = new Size(856, 307);
            dgvTools.TabIndex = 17;
            dgvTools.CellClick += dgvTools_CellClick;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnClear);
            groupBox1.Controls.Add(txtPhrase);
            groupBox1.Controls.Add(label6);
            groupBox1.Controls.Add(btnSearch);
            groupBox1.Controls.Add(cboStatus);
            groupBox1.Controls.Add(txtManufacturer);
            groupBox1.Controls.Add(txtDescription);
            groupBox1.Controls.Add(cboCategories);
            groupBox1.Controls.Add(txtToolID);
            groupBox1.Controls.Add(label5);
            groupBox1.Controls.Add(label4);
            groupBox1.Controls.Add(label3);
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(12, 44);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(856, 133);
            groupBox1.TabIndex = 18;
            groupBox1.TabStop = false;
            groupBox1.Text = "Filters:";
            // 
            // btnClear
            // 
            btnClear.BackColor = Color.Gold;
            btnClear.Location = new Point(723, 75);
            btnClear.Margin = new Padding(2, 2, 2, 2);
            btnClear.Name = "btnClear";
            btnClear.Size = new Size(112, 40);
            btnClear.TabIndex = 13;
            btnClear.Text = "Clear";
            btnClear.UseVisualStyleBackColor = false;
            btnClear.Click += btnClear_Click;
            // 
            // txtPhrase
            // 
            txtPhrase.Location = new Point(456, 92);
            txtPhrase.Margin = new Padding(2, 2, 2, 2);
            txtPhrase.Name = "txtPhrase";
            txtPhrase.Size = new Size(250, 23);
            txtPhrase.TabIndex = 11;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(367, 94);
            label6.Margin = new Padding(2, 0, 2, 0);
            label6.Name = "label6";
            label6.Size = new Size(45, 15);
            label6.TabIndex = 12;
            label6.Text = "Phrase:";
            // 
            // btnSearch
            // 
            btnSearch.BackColor = Color.Gold;
            btnSearch.Location = new Point(723, 30);
            btnSearch.Margin = new Padding(2, 2, 2, 2);
            btnSearch.Name = "btnSearch";
            btnSearch.Size = new Size(112, 40);
            btnSearch.TabIndex = 12;
            btnSearch.Text = "Search";
            btnSearch.UseVisualStyleBackColor = false;
            btnSearch.Click += btnSearch_Click;
            // 
            // cboStatus
            // 
            cboStatus.DropDownStyle = ComboBoxStyle.DropDownList;
            cboStatus.FormattingEnabled = true;
            cboStatus.Location = new Point(456, 62);
            cboStatus.Margin = new Padding(2, 2, 2, 2);
            cboStatus.Name = "cboStatus";
            cboStatus.Size = new Size(111, 23);
            cboStatus.TabIndex = 10;
            // 
            // txtManufacturer
            // 
            txtManufacturer.Location = new Point(456, 30);
            txtManufacturer.Margin = new Padding(2, 2, 2, 2);
            txtManufacturer.Name = "txtManufacturer";
            txtManufacturer.Size = new Size(206, 23);
            txtManufacturer.TabIndex = 8;
            // 
            // txtDescription
            // 
            txtDescription.Location = new Point(101, 92);
            txtDescription.Margin = new Padding(2, 2, 2, 2);
            txtDescription.Name = "txtDescription";
            txtDescription.Size = new Size(234, 23);
            txtDescription.TabIndex = 7;
            // 
            // cboCategories
            // 
            cboCategories.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCategories.FormattingEnabled = true;
            cboCategories.Location = new Point(101, 62);
            cboCategories.Margin = new Padding(2, 2, 2, 2);
            cboCategories.Name = "cboCategories";
            cboCategories.Size = new Size(234, 23);
            cboCategories.TabIndex = 6;
            // 
            // txtToolID
            // 
            txtToolID.Location = new Point(101, 30);
            txtToolID.Margin = new Padding(2, 2, 2, 2);
            txtToolID.Name = "txtToolID";
            txtToolID.Size = new Size(79, 23);
            txtToolID.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(367, 64);
            label5.Margin = new Padding(2, 0, 2, 0);
            label5.Name = "label5";
            label5.Size = new Size(42, 15);
            label5.TabIndex = 4;
            label5.Text = "Status:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(367, 32);
            label4.Margin = new Padding(2, 0, 2, 0);
            label4.Name = "label4";
            label4.Size = new Size(82, 15);
            label4.TabIndex = 3;
            label4.Text = "Manufacturer:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(25, 94);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(70, 15);
            label3.TabIndex = 2;
            label3.Text = "Description:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(25, 64);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(58, 15);
            label2.TabIndex = 1;
            label2.Text = "Category:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(25, 32);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(46, 15);
            label1.TabIndex = 0;
            label1.Text = "Tool ID:";
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(btnUpdate);
            groupBox2.Controls.Add(cboUpdStatus);
            groupBox2.Controls.Add(txtUpdManufacturer);
            groupBox2.Controls.Add(txtUpdDescription);
            groupBox2.Controls.Add(cboUpdCategories);
            groupBox2.Controls.Add(txtUpdToolID);
            groupBox2.Controls.Add(label8);
            groupBox2.Controls.Add(label9);
            groupBox2.Controls.Add(label10);
            groupBox2.Controls.Add(label11);
            groupBox2.Controls.Add(label12);
            groupBox2.Location = new Point(12, 518);
            groupBox2.Margin = new Padding(2, 2, 2, 2);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(2, 2, 2, 2);
            groupBox2.Size = new Size(856, 133);
            groupBox2.TabIndex = 19;
            groupBox2.TabStop = false;
            groupBox2.Text = "Update Tool Details:";
            // 
            // btnUpdate
            // 
            btnUpdate.BackColor = Color.Gold;
            btnUpdate.Location = new Point(723, 30);
            btnUpdate.Margin = new Padding(2, 2, 2, 2);
            btnUpdate.Name = "btnUpdate";
            btnUpdate.Size = new Size(112, 80);
            btnUpdate.TabIndex = 11;
            btnUpdate.Text = "Update";
            btnUpdate.UseVisualStyleBackColor = false;
            btnUpdate.Click += btnUpdate_Click;
            // 
            // cboUpdStatus
            // 
            cboUpdStatus.DropDownStyle = ComboBoxStyle.DropDownList;
            cboUpdStatus.FormattingEnabled = true;
            cboUpdStatus.Location = new Point(456, 62);
            cboUpdStatus.Margin = new Padding(2, 2, 2, 2);
            cboUpdStatus.Name = "cboUpdStatus";
            cboUpdStatus.Size = new Size(111, 23);
            cboUpdStatus.TabIndex = 10;
            // 
            // txtUpdManufacturer
            // 
            txtUpdManufacturer.Location = new Point(456, 30);
            txtUpdManufacturer.Margin = new Padding(2, 2, 2, 2);
            txtUpdManufacturer.Name = "txtUpdManufacturer";
            txtUpdManufacturer.Size = new Size(206, 23);
            txtUpdManufacturer.TabIndex = 8;
            // 
            // txtUpdDescription
            // 
            txtUpdDescription.Location = new Point(101, 92);
            txtUpdDescription.Margin = new Padding(2, 2, 2, 2);
            txtUpdDescription.Name = "txtUpdDescription";
            txtUpdDescription.Size = new Size(234, 23);
            txtUpdDescription.TabIndex = 7;
            // 
            // cboUpdCategories
            // 
            cboUpdCategories.DropDownStyle = ComboBoxStyle.DropDownList;
            cboUpdCategories.FormattingEnabled = true;
            cboUpdCategories.Location = new Point(101, 62);
            cboUpdCategories.Margin = new Padding(2, 2, 2, 2);
            cboUpdCategories.Name = "cboUpdCategories";
            cboUpdCategories.Size = new Size(234, 23);
            cboUpdCategories.TabIndex = 6;
            // 
            // txtUpdToolID
            // 
            txtUpdToolID.Enabled = false;
            txtUpdToolID.Location = new Point(101, 30);
            txtUpdToolID.Margin = new Padding(2, 2, 2, 2);
            txtUpdToolID.Name = "txtUpdToolID";
            txtUpdToolID.Size = new Size(79, 23);
            txtUpdToolID.TabIndex = 5;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(367, 64);
            label8.Margin = new Padding(2, 0, 2, 0);
            label8.Name = "label8";
            label8.Size = new Size(42, 15);
            label8.TabIndex = 4;
            label8.Text = "Status:";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(367, 32);
            label9.Margin = new Padding(2, 0, 2, 0);
            label9.Name = "label9";
            label9.Size = new Size(82, 15);
            label9.TabIndex = 3;
            label9.Text = "Manufacturer:";
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Location = new Point(25, 94);
            label10.Margin = new Padding(2, 0, 2, 0);
            label10.Name = "label10";
            label10.Size = new Size(70, 15);
            label10.TabIndex = 2;
            label10.Text = "Description:";
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.Location = new Point(25, 64);
            label11.Margin = new Padding(2, 0, 2, 0);
            label11.Name = "label11";
            label11.Size = new Size(58, 15);
            label11.TabIndex = 1;
            label11.Text = "Category:";
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Location = new Point(25, 32);
            label12.Margin = new Padding(2, 0, 2, 0);
            label12.Name = "label12";
            label12.Size = new Size(46, 15);
            label12.TabIndex = 0;
            label12.Text = "Tool ID:";
            // 
            // frmUpdateTool
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(884, 666);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            Controls.Add(dgvTools);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "FrmUpdateTool";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Update Tool";
            Load += frmUpdateTool_Load;
            Controls.SetChildIndex(dgvTools, 0);
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(groupBox2, 0);
            ((System.ComponentModel.ISupportInitialize)dgvTools).EndInit();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.DataGridView dgvTools;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtPhrase;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.ComboBox cboStatus;
        private System.Windows.Forms.TextBox txtManufacturer;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.ComboBox cboCategories;
        private System.Windows.Forms.TextBox txtToolID;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.TextBox txtUpdManufacturer;
        private System.Windows.Forms.TextBox txtUpdDescription;
        private System.Windows.Forms.ComboBox cboUpdCategories;
        private System.Windows.Forms.TextBox txtUpdToolID;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.ComboBox cboUpdStatus;
        private System.Windows.Forms.Button btnClear;
    }
}