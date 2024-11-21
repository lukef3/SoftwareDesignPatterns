
namespace ToolSYS.Presentation.Forms
{
    partial class FrmSetToolCategory
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
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // txtCategoryCode
            // 
            txtCategoryCode.Location = new Point(232, 67);
            txtCategoryCode.Margin = new Padding(2);
            txtCategoryCode.MaxLength = 2;
            txtCategoryCode.Name = "txtCategoryCode";
            txtCategoryCode.Size = new Size(95, 23);
            txtCategoryCode.TabIndex = 1;
            // 
            // txtRate
            // 
            txtRate.Location = new Point(232, 116);
            txtRate.Margin = new Padding(2);
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
            btnConfirm.Margin = new Padding(2);
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
            txtCategoryDesc.Margin = new Padding(2);
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
            groupBox1.Margin = new Padding(2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2);
            groupBox1.Size = new Size(519, 296);
            groupBox1.TabIndex = 11;
            groupBox1.TabStop = false;
            groupBox1.Text = "Enter New Category Details:";
            // 
            // frmSetToolCategory
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(537, 337);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "FrmSetToolCategory";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Set Tool Category";
            Controls.SetChildIndex(groupBox1, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
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
    }
}