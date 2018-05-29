using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	public class frmStock : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmStock() {
			
			//This call is required by the Windows Form Designer.
			InitializeComponent();
			
			//Add any initialization after the InitializeComponent() call
			
		}
		
		//Form overrides dispose to clean up the component list.
		protected override void Dispose (bool disposing)
		{
			if (disposing)
			{
				if (!(components == null))
				{
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		//Required by the Windows Form Designer
		private System.ComponentModel.Container components = null;
		
//NOTE: The following procedure is required by the Windows Form Designer
		//It can be modified using the Windows Form Designer.
		//Do not modify it using the code editor.
		internal System.Windows.Forms.RadioButton optGold;
		internal System.Windows.Forms.RadioButton optSilver;
		internal System.Windows.Forms.ComboBox cboType;
		internal System.Windows.Forms.ComboBox cboCode;
		internal System.Windows.Forms.TextBox txtDescription;
		internal System.Windows.Forms.TextBox txtGrossWT;
		internal System.Windows.Forms.TextBox txtStoneWT;
		internal System.Windows.Forms.TextBox txtGrossAMT;
		internal System.Windows.Forms.TextBox txtStoneAMT;
		internal System.Windows.Forms.TextBox txtLossWT;
		internal System.Windows.Forms.TextBox txtLossAMT;
		internal System.Windows.Forms.TextBox txtLabourAMT;
		internal System.Windows.Forms.TextBox txtNetWT;
		internal System.Windows.Forms.TextBox txtNetAMT;
		internal System.Windows.Forms.Label txtStatus;
		internal System.Windows.Forms.Button cmdExit;
		internal System.Windows.Forms.Button cmdDel;
		internal System.Windows.Forms.Button cmdSave;
		internal System.Windows.Forms.Button CmdEdit;
		internal System.Windows.Forms.Button cmdNew;
		internal System.Windows.Forms.TextBox txtStockQTY;
		internal System.Windows.Forms.PictureBox PictureBox1;
		internal System.Windows.Forms.DataGrid DataGrid1;
		internal System.Windows.Forms.Timer Timer1;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			this.components = new System.ComponentModel.Container();
			this.Load += new EventHandler(this.frmStock_Load);
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmStock));
			this.optGold = new System.Windows.Forms.RadioButton();
			this.optSilver = new System.Windows.Forms.RadioButton();
			this.cboType = new System.Windows.Forms.ComboBox();
			this.cboCode = new System.Windows.Forms.ComboBox();
			this.txtDescription = new System.Windows.Forms.TextBox();
			this.txtGrossWT = new System.Windows.Forms.TextBox();
			this.txtStoneWT = new System.Windows.Forms.TextBox();
			this.txtGrossAMT = new System.Windows.Forms.TextBox();
			this.txtStoneAMT = new System.Windows.Forms.TextBox();
			this.txtLossWT = new System.Windows.Forms.TextBox();
			this.txtLossAMT = new System.Windows.Forms.TextBox();
			this.txtLabourAMT = new System.Windows.Forms.TextBox();
			this.txtNetWT = new System.Windows.Forms.TextBox();
			this.txtNetAMT = new System.Windows.Forms.TextBox();
			this.txtStatus = new System.Windows.Forms.Label();
			this.cmdExit = new System.Windows.Forms.Button();
			this.cmdExit.Click += new EventHandler(this.cmdExit_Click);
			this.cmdDel = new System.Windows.Forms.Button();
			this.cmdSave = new System.Windows.Forms.Button();
			this.CmdEdit = new System.Windows.Forms.Button();
			this.cmdNew = new System.Windows.Forms.Button();
			this.txtStockQTY = new System.Windows.Forms.TextBox();
			this.PictureBox1 = new System.Windows.Forms.PictureBox();
			this.DataGrid1 = new System.Windows.Forms.DataGrid();
			this.Timer1 = new System.Windows.Forms.Timer(this.components);
			this.Timer1.Tick += new EventHandler(this.Timer1_Tick);
			((System.ComponentModel.ISupportInitialize)(this.DataGrid1)).BeginInit();
			this.SuspendLayout();
			//
			//optGold
			//
			this.optGold.Location = new System.Drawing.Point(368, 96);
			this.optGold.Name = "optGold";
			this.optGold.Size = new System.Drawing.Size(16, 16);
			this.optGold.TabIndex = 0;
			this.optGold.Text = "RadioButton1";
			//
			//optSilver
			//
			this.optSilver.Location = new System.Drawing.Point(368, 120);
			this.optSilver.Name = "optSilver";
			this.optSilver.Size = new System.Drawing.Size(16, 16);
			this.optSilver.TabIndex = 1;
			this.optSilver.Text = "RadioButton2";
			//
			//cboType
			//
			this.cboType.Location = new System.Drawing.Point(152, 64);
			this.cboType.Name = "cboType";
			this.cboType.Size = new System.Drawing.Size(112, 23);
			this.cboType.TabIndex = 2;
			//
			//cboCode
			//
			this.cboCode.Location = new System.Drawing.Point(152, 96);
			this.cboCode.Name = "cboCode";
			this.cboCode.Size = new System.Drawing.Size(112, 23);
			this.cboCode.TabIndex = 3;
			//
			//txtDescription
			//
			this.txtDescription.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtDescription.Location = new System.Drawing.Point(152, 128);
			this.txtDescription.Multiline = true;
			this.txtDescription.Name = "txtDescription";
			this.txtDescription.Size = new System.Drawing.Size(200, 64);
			this.txtDescription.TabIndex = 4;
			this.txtDescription.Text = "";
			//
			//txtGrossWT
			//
			this.txtGrossWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtGrossWT.Location = new System.Drawing.Point(152, 200);
			this.txtGrossWT.Name = "txtGrossWT";
			this.txtGrossWT.Size = new System.Drawing.Size(88, 21);
			this.txtGrossWT.TabIndex = 5;
			this.txtGrossWT.Text = "";
			//
			//txtStoneWT
			//
			this.txtStoneWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtStoneWT.Location = new System.Drawing.Point(152, 240);
			this.txtStoneWT.Name = "txtStoneWT";
			this.txtStoneWT.Size = new System.Drawing.Size(88, 21);
			this.txtStoneWT.TabIndex = 6;
			this.txtStoneWT.Text = "";
			//
			//txtGrossAMT
			//
			this.txtGrossAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtGrossAMT.Location = new System.Drawing.Point(392, 200);
			this.txtGrossAMT.Name = "txtGrossAMT";
			this.txtGrossAMT.Size = new System.Drawing.Size(88, 21);
			this.txtGrossAMT.TabIndex = 7;
			this.txtGrossAMT.Text = "";
			//
			//txtStoneAMT
			//
			this.txtStoneAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtStoneAMT.Location = new System.Drawing.Point(392, 240);
			this.txtStoneAMT.Name = "txtStoneAMT";
			this.txtStoneAMT.Size = new System.Drawing.Size(88, 21);
			this.txtStoneAMT.TabIndex = 8;
			this.txtStoneAMT.Text = "";
			//
			//txtLossWT
			//
			this.txtLossWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtLossWT.Location = new System.Drawing.Point(152, 280);
			this.txtLossWT.Name = "txtLossWT";
			this.txtLossWT.Size = new System.Drawing.Size(88, 21);
			this.txtLossWT.TabIndex = 9;
			this.txtLossWT.Text = "";
			//
			//txtLossAMT
			//
			this.txtLossAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtLossAMT.Location = new System.Drawing.Point(392, 280);
			this.txtLossAMT.Name = "txtLossAMT";
			this.txtLossAMT.Size = new System.Drawing.Size(88, 21);
			this.txtLossAMT.TabIndex = 10;
			this.txtLossAMT.Text = "";
			//
			//txtLabourAMT
			//
			this.txtLabourAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtLabourAMT.Location = new System.Drawing.Point(152, 320);
			this.txtLabourAMT.Name = "txtLabourAMT";
			this.txtLabourAMT.Size = new System.Drawing.Size(88, 21);
			this.txtLabourAMT.TabIndex = 11;
			this.txtLabourAMT.Text = "";
			//
			//txtNetWT
			//
			this.txtNetWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtNetWT.Location = new System.Drawing.Point(152, 360);
			this.txtNetWT.Name = "txtNetWT";
			this.txtNetWT.Size = new System.Drawing.Size(88, 21);
			this.txtNetWT.TabIndex = 12;
			this.txtNetWT.Text = "";
			//
			//txtNetAMT
			//
			this.txtNetAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtNetAMT.Location = new System.Drawing.Point(392, 360);
			this.txtNetAMT.Name = "txtNetAMT";
			this.txtNetAMT.Size = new System.Drawing.Size(88, 21);
			this.txtNetAMT.TabIndex = 13;
			this.txtNetAMT.Text = "";
			//
			//txtStatus
			//
			this.txtStatus.BackColor = System.Drawing.Color.White;
			this.txtStatus.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtStatus.ForeColor = System.Drawing.Color.Red;
			this.txtStatus.Location = new System.Drawing.Point(152, 392);
			this.txtStatus.Name = "txtStatus";
			this.txtStatus.Size = new System.Drawing.Size(88, 20);
			this.txtStatus.TabIndex = 14;
			this.txtStatus.Text = "EXCESS";
			//
			//cmdExit
			//
			this.cmdExit.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdExit.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdExit.Image")));
			this.cmdExit.Location = new System.Drawing.Point(448, 416);
			this.cmdExit.Name = "cmdExit";
			this.cmdExit.Size = new System.Drawing.Size(88, 40);
			this.cmdExit.TabIndex = 26;
			//
			//cmdDel
			//
			this.cmdDel.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdDel.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdDel.Image")));
			this.cmdDel.Location = new System.Drawing.Point(339, 416);
			this.cmdDel.Name = "cmdDel";
			this.cmdDel.Size = new System.Drawing.Size(88, 40);
			this.cmdDel.TabIndex = 25;
			//
			//cmdSave
			//
			this.cmdSave.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdSave.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdSave.Image")));
			this.cmdSave.Location = new System.Drawing.Point(232, 416);
			this.cmdSave.Name = "cmdSave";
			this.cmdSave.Size = new System.Drawing.Size(88, 40);
			this.cmdSave.TabIndex = 24;
			//
			//CmdEdit
			//
			this.CmdEdit.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.CmdEdit.Image = ((System.Drawing.Bitmap)(resources.GetObject("CmdEdit.Image")));
			this.CmdEdit.Location = new System.Drawing.Point(128, 416);
			this.CmdEdit.Name = "CmdEdit";
			this.CmdEdit.Size = new System.Drawing.Size(88, 40);
			this.CmdEdit.TabIndex = 23;
			//
			//cmdNew
			//
			this.cmdNew.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdNew.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdNew.Image")));
			this.cmdNew.Location = new System.Drawing.Point(24, 416);
			this.cmdNew.Name = "cmdNew";
			this.cmdNew.Size = new System.Drawing.Size(88, 40);
			this.cmdNew.TabIndex = 22;
			//
			//txtStockQTY
			//
			this.txtStockQTY.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtStockQTY.Location = new System.Drawing.Point(392, 320);
			this.txtStockQTY.Name = "txtStockQTY";
			this.txtStockQTY.Size = new System.Drawing.Size(88, 21);
			this.txtStockQTY.TabIndex = 27;
			this.txtStockQTY.Text = "";
			//
			//PictureBox1
			//
			this.PictureBox1.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("PictureBox1.BackgroundImage")));
			this.PictureBox1.Name = "PictureBox1";
			this.PictureBox1.Size = new System.Drawing.Size(576, 517);
			this.PictureBox1.TabIndex = 28;
			this.PictureBox1.TabStop = false;
			//
			//DataGrid1
			//
			this.DataGrid1.DataMember = "";
			this.DataGrid1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
			this.DataGrid1.Location = new System.Drawing.Point(576, 0);
			this.DataGrid1.Name = "DataGrid1";
			this.DataGrid1.Size = new System.Drawing.Size(216, 517);
			this.DataGrid1.TabIndex = 29;
			//
			//Timer1
			//
			this.Timer1.Enabled = true;
			this.Timer1.Interval = 60;
			//
			//frmStock
			//
			this.AutoScale = false;
			this.AutoScaleBaseSize = new System.Drawing.Size(6, 14);
			this.ClientSize = new System.Drawing.Size(786, 494);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.DataGrid1, this.txtStockQTY, this.cmdExit, this.cmdDel, this.cmdSave, this.CmdEdit, this.cmdNew, this.txtStatus, this.txtNetAMT, this.txtNetWT, this.txtLabourAMT, this.txtLossAMT, this.txtLossWT, this.txtStoneAMT, this.txtGrossAMT, this.txtStoneWT, this.txtGrossWT, this.txtDescription, this.cboCode, this.cboType, this.optSilver, this.optGold, this.PictureBox1 });
			this.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(9.0), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.ForeColor = System.Drawing.Color.Red;
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmStock";
			this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
			this.Text = "Stock Manager";
			this.TopMost = true;
			((System.ComponentModel.ISupportInitialize)(this.DataGrid1)).EndInit();
			this.ResumeLayout(false);
			
		}
		public string myname;
		#endregion
		
		private void cmdExit_Click (System.Object sender, System.EventArgs e)
		{
			ans = true;
			this.Close();
		}
		public bool ans = false;
		private void frmStock_Load (System.Object sender, System.EventArgs e)
		{
			//While Not ans = True
			myname = this.Text;
			this.Text = this.Text + " --- >> TODAY " + DateTime.Now.AddTicks(1);
			//End While
		}
		
		private void Timer1_Tick (System.Object sender, System.EventArgs e)
		{
			this.Text = myname + " --- >> TODAY " + DateTime.Now;
		}
	}
	
}
