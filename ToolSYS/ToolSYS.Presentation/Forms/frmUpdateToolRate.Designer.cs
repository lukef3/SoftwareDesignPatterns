
namespace ToolSYS.Presentation.Forms
{
    partial class FrmUpdateToolRate
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
            groupBox2 = new GroupBox();
            label3 = new Label();
            txtCategoryDescription = new TextBox();
            txtRate = new TextBox();
            label2 = new Label();
            btnConfirm = new Button();
            cboCategories = new ComboBox();
            groupBox1 = new GroupBox();
            label1 = new Label();
            groupBox2.SuspendLayout();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(label3);
            groupBox2.Controls.Add(txtCategoryDescription);
            groupBox2.Controls.Add(txtRate);
            groupBox2.Controls.Add(label2);
            groupBox2.Controls.Add(btnConfirm);
            groupBox2.Location = new Point(9, 148);
            groupBox2.Margin = new Padding(2, 2, 2, 2);
            groupBox2.Name = "groupBox2";
            groupBox2.Padding = new Padding(2, 2, 2, 2);
            groupBox2.Size = new Size(525, 180);
            groupBox2.TabIndex = 14;
            groupBox2.TabStop = false;
            groupBox2.Text = "Enter Changes:";
            groupBox2.Visible = false;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(105, 37);
            label3.Margin = new Padding(2, 0, 2, 0);
            label3.Name = "label3";
            label3.Size = new Size(70, 15);
            label3.TabIndex = 13;
            label3.Text = "Description:";
            // 
            // txtCategoryDescription
            // 
            txtCategoryDescription.Location = new Point(182, 37);
            txtCategoryDescription.Margin = new Padding(2, 2, 2, 2);
            txtCategoryDescription.Name = "txtCategoryDescription";
            txtCategoryDescription.Size = new Size(230, 23);
            txtCategoryDescription.TabIndex = 12;
            // 
            // txtRate
            // 
            txtRate.Location = new Point(199, 72);
            txtRate.Margin = new Padding(2, 2, 2, 2);
            txtRate.Name = "txtRate";
            txtRate.Size = new Size(95, 23);
            txtRate.TabIndex = 6;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(157, 74);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(33, 15);
            label2.TabIndex = 2;
            label2.Text = "Rate:";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(190, 104);
            btnConfirm.Margin = new Padding(2, 2, 2, 2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(103, 52);
            btnConfirm.TabIndex = 11;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += BtnConfirm_Click;
            // 
            // cboCategories
            // 
            cboCategories.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCategories.FormattingEnabled = true;
            cboCategories.Location = new Point(190, 46);
            cboCategories.Margin = new Padding(2, 2, 2, 2);
            cboCategories.Name = "cboCategories";
            cboCategories.Size = new Size(212, 23);
            cboCategories.Sorted = true;
            cboCategories.TabIndex = 7;
            cboCategories.SelectedIndexChanged += CboCategories_SelectedIndexChanged;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(cboCategories);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 39);
            groupBox1.Margin = new Padding(2, 2, 2, 2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2, 2, 2, 2);
            groupBox1.Size = new Size(525, 105);
            groupBox1.TabIndex = 13;
            groupBox1.TabStop = false;
            groupBox1.Text = "Select The Category For Rate Change:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(125, 48);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(58, 15);
            label1.TabIndex = 1;
            label1.Text = "Category:";
            // 
            // frmUpdateToolRate
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(544, 338);
            Controls.Add(groupBox2);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2, 2, 2, 2);
            Name = "FrmUpdateToolRate";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Update Tool Rate";
            Load += FrmUpdateToolRate_Load;
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(groupBox2, 0);
            groupBox2.ResumeLayout(false);
            groupBox2.PerformLayout();
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtRate;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboCategories;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCategoryDescription;
    }
}