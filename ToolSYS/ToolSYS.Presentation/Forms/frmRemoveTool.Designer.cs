
namespace ToolSYS.Presentation.Forms
{
    partial class FrmRemoveTool
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
            btnConfirm = new Button();
            txtToolID = new TextBox();
            label1 = new Label();
            dgvTools = new DataGridView();
            label7 = new Label();
            backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).BeginInit();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnConfirm);
            groupBox1.Controls.Add(txtToolID);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 337);
            groupBox1.Margin = new Padding(2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2);
            groupBox1.Size = new Size(901, 139);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Double click or enter tool ID to remove:";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(397, 70);
            btnConfirm.Margin = new Padding(2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(104, 52);
            btnConfirm.TabIndex = 8;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // txtToolID
            // 
            txtToolID.Location = new Point(427, 34);
            txtToolID.Margin = new Padding(2);
            txtToolID.Name = "txtToolID";
            txtToolID.Size = new Size(86, 23);
            txtToolID.TabIndex = 5;
            txtToolID.Text = "0";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(372, 37);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(46, 15);
            label1.TabIndex = 0;
            label1.Text = "Tool ID:";
            // 
            // dgvTools
            // 
            dgvTools.AllowUserToAddRows = false;
            dgvTools.AllowUserToDeleteRows = false;
            dgvTools.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTools.Location = new Point(9, 54);
            dgvTools.Margin = new Padding(2);
            dgvTools.Name = "dgvTools";
            dgvTools.ReadOnly = true;
            dgvTools.RowHeadersWidth = 62;
            dgvTools.RowTemplate.Height = 28;
            dgvTools.Size = new Size(901, 272);
            dgvTools.TabIndex = 6;
            dgvTools.CellClick += dgvTools_CellClick;
            dgvTools.CellContentDoubleClick += dgvTools_CellDoubleClick;
            dgvTools.CellDoubleClick += dgvTools_CellDoubleClick;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(404, 37);
            label7.Margin = new Padding(2, 0, 2, 0);
            label7.Name = "label7";
            label7.Size = new Size(102, 15);
            label7.TabIndex = 7;
            label7.Text = "Removeable Tools";
            // 
            // frmRemoveTool
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(922, 484);
            Controls.Add(label7);
            Controls.Add(dgvTools);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "FrmRemoveTool";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Remove Tool";
            Load += frmRemoveTool_Load;
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(dgvTools, 0);
            Controls.SetChildIndex(label7, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvTools).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtToolID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvTools;
        private System.Windows.Forms.Label label7;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
    }
}