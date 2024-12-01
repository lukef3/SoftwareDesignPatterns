
namespace ToolSYS.Presentation.Forms
{
    partial class FrmAnalysis
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
            label2 = new Label();
            cboReportType = new ComboBox();
            btnConfirm = new Button();
            cboYears = new ComboBox();
            label1 = new Label();
            formsPlot1 = new ScottPlot.FormsPlot();
            groupBox1.SuspendLayout();
            SuspendLayout();
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(label2);
            groupBox1.Controls.Add(cboReportType);
            groupBox1.Controls.Add(btnConfirm);
            groupBox1.Controls.Add(cboYears);
            groupBox1.Controls.Add(label1);
            groupBox1.Location = new Point(9, 39);
            groupBox1.Margin = new Padding(2);
            groupBox1.Name = "groupBox1";
            groupBox1.Padding = new Padding(2);
            groupBox1.Size = new Size(944, 174);
            groupBox1.TabIndex = 6;
            groupBox1.TabStop = false;
            groupBox1.Text = "Select Year For Revenue Analysis";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(72, 58);
            label2.Margin = new Padding(2, 0, 2, 0);
            label2.Name = "label2";
            label2.Size = new Size(45, 15);
            label2.TabIndex = 11;
            label2.Text = "Report:";
            // 
            // cboReportType
            // 
            cboReportType.Location = new Point(144, 55);
            cboReportType.Name = "cboReportType";
            cboReportType.Size = new Size(170, 23);
            cboReportType.TabIndex = 12;
            // 
            // btnConfirm
            // 
            btnConfirm.BackColor = Color.Gold;
            btnConfirm.Location = new Point(433, 109);
            btnConfirm.Margin = new Padding(2);
            btnConfirm.Name = "btnConfirm";
            btnConfirm.Size = new Size(86, 31);
            btnConfirm.TabIndex = 9;
            btnConfirm.Text = "Confirm";
            btnConfirm.UseVisualStyleBackColor = false;
            btnConfirm.Click += btnConfirm_Click;
            // 
            // cboYears
            // 
            cboYears.DropDownStyle = ComboBoxStyle.DropDownList;
            cboYears.FormattingEnabled = true;
            cboYears.Location = new Point(420, 55);
            cboYears.Margin = new Padding(2);
            cboYears.Name = "cboYears";
            cboYears.Size = new Size(170, 23);
            cboYears.TabIndex = 3;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(384, 60);
            label1.Margin = new Padding(2, 0, 2, 0);
            label1.Name = "label1";
            label1.Size = new Size(32, 15);
            label1.TabIndex = 2;
            label1.Text = "Year:";
            // 
            // formsPlot1
            // 
            formsPlot1.Location = new Point(9, 218);
            formsPlot1.Margin = new Padding(4, 3, 4, 3);
            formsPlot1.Name = "formsPlot1";
            formsPlot1.Size = new Size(944, 395);
            formsPlot1.TabIndex = 11;
            // 
            // FrmAnalysis
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(966, 625);
            Controls.Add(formsPlot1);
            Controls.Add(groupBox1);
            FormBorderStyle = FormBorderStyle.FixedToolWindow;
            Margin = new Padding(2);
            Name = "FrmAnalysis";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Analysis";
            Load += frmAnalysis_Load;
            Controls.SetChildIndex(groupBox1, 0);
            Controls.SetChildIndex(formsPlot1, 0);
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cboYears;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnConfirm;
        private ScottPlot.FormsPlot formsPlot1;
        private ComboBox cboReportType;
        private Label label2;
    }
}