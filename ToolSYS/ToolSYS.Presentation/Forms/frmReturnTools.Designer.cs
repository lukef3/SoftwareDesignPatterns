
namespace ToolSYS.Presentation.Forms
{
    partial class FrmReturnTools
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
            gbxRentalID = new GroupBox();
            btnConfirm = new Button();
            txtRentalID = new TextBox();
            label12 = new Label();
            dgvRentalItems = new DataGridView();
            gbxReturnTool = new GroupBox();
            btnFinish = new Button();
            btnReturn = new Button();
            txtToolID = new TextBox();
            label1 = new Label();
            gbxRentalID.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).BeginInit();
            gbxReturnTool.SuspendLayout();
            SuspendLayout();
            // 
            // gbxRentalID
            // 
            gbxRentalID.Controls.Add(btnConfirm);
            gbxRentalID.Controls.Add(txtRentalID);
            gbxRentalID.Controls.Add(label12);
            gbxRentalID.Location = new Point(9, 38);
            gbxRentalID.Margin = new Padding(2);
            gbxRentalID.Name = "gbxRentalID";
            gbxRentalID.Padding = new Padding(2);
            gbxRentalID.Size = new Size(772, 189);
            gbxRentalID.TabIndex = 18;
            gbxRentalID.TabStop = false;
            gbxRentalID.Text = "Enter Rental ID Of The Customer";
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(317, 97);
            btnConfirm.Margin = new Padding(2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(98, 46);
            btnConfirm.TabIndex = 11;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // txtRentalID
            // 
            txtRentalID.Location = new Point(359, 51);
            txtRentalID.Margin = new Padding(2);
            txtRentalID.Name = "txtRentalID";
            txtRentalID.Size = new Size(79, 23);
            txtRentalID.TabIndex = 5;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Location = new Point(291, 53);
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
            dgvRentalItems.Location = new Point(5, 33);
            dgvRentalItems.Margin = new Padding(2);
            dgvRentalItems.Name = "dgvRentalItems";
            dgvRentalItems.ReadOnly = true;
            dgvRentalItems.RowHeadersWidth = 62;
            dgvRentalItems.RowTemplate.Height = 28;
            dgvRentalItems.Size = new Size(762, 224);
            dgvRentalItems.TabIndex = 19;
            dgvRentalItems.CellClick += dgvRentalItems_CellClick;
            // 
            // gbxReturnTool
            // 
            gbxReturnTool.Controls.Add(btnFinish);
            gbxReturnTool.Controls.Add(btnReturn);
            gbxReturnTool.Controls.Add(txtToolID);
            gbxReturnTool.Controls.Add(dgvRentalItems);
            gbxReturnTool.Controls.Add(label1);
            gbxReturnTool.Location = new Point(9, 232);
            gbxReturnTool.Margin = new Padding(2);
            gbxReturnTool.Name = "gbxReturnTool";
            gbxReturnTool.Padding = new Padding(2);
            gbxReturnTool.Size = new Size(772, 428);
            gbxReturnTool.TabIndex = 19;
            gbxReturnTool.TabStop = false;
            gbxReturnTool.Text = "Enter The Tool ID You Wish To Return";
            gbxReturnTool.Visible = false;
            // 
            // btnFinish
            // 
            btnFinish.Location = new Point(397, 338);
            btnFinish.Margin = new Padding(2);
            btnFinish.Name = "btnFinish";
            btnFinish.Size = new Size(98, 46);
            btnFinish.TabIndex = 20;
            btnFinish.Text = "Finish";
            btnFinish.UseVisualStyleBackColor = true;
            btnFinish.Click += btnFinish_Click;
            // 
            // btnReturn
            // 
            btnReturn.BackColor = Color.Gold;
            btnReturn.Location = new Point(276, 338);
            btnReturn.Margin = new Padding(2);
            btnReturn.Name = "btnReturn";
            btnReturn.Size = new Size(98, 46);
            btnReturn.TabIndex = 11;
            btnReturn.Text = "Return";
            btnReturn.UseVisualStyleBackColor = false;
            btnReturn.Click += btnReturn_Click;
            // 
            // txtToolID
            // 
            txtToolID.Enabled = false;
            txtToolID.Location = new Point(359, 294);
            txtToolID.Margin = new Padding(2);
            txtToolID.Name = "txtToolID";
            txtToolID.Size = new Size(79, 23);
            txtToolID.TabIndex = 5;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(304, 296);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(46, 15);
            label1.TabIndex = 0;
            label1.Text = "Tool ID:";
            // 
            // frmReturnTools
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(790, 666);
            Controls.Add(gbxReturnTool);
            Controls.Add(gbxRentalID);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "FrmReturnTools";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Return Tools";
            Controls.SetChildIndex(gbxRentalID, 0);
            Controls.SetChildIndex(gbxReturnTool, 0);
            gbxRentalID.ResumeLayout(false);
            gbxRentalID.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvRentalItems).EndInit();
            gbxReturnTool.ResumeLayout(false);
            gbxReturnTool.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.GroupBox gbxRentalID;
        private System.Windows.Forms.Button btnConfirm;
        private System.Windows.Forms.TextBox txtRentalID;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.DataGridView dgvRentalItems;
        private System.Windows.Forms.GroupBox gbxReturnTool;
        private System.Windows.Forms.Button btnReturn;
        private System.Windows.Forms.TextBox txtToolID;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnFinish;
    }
}