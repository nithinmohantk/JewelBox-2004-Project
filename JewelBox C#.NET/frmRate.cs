using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	public class frmRate : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmRate() {
			
			//This call is required by the Windows Form Designer.
			InitializeComponent();
			getdate();
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
		internal System.Windows.Forms.Label Label1;
		internal System.Windows.Forms.Label Label2;
		internal System.Windows.Forms.GroupBox GroupBox1;
		internal System.Windows.Forms.Label Label3;
		internal System.Windows.Forms.Label Label4;
		internal System.Windows.Forms.Label Label5;
		public System.Windows.Forms.TextBox txtGold22CT;
		public System.Windows.Forms.TextBox txtGold24CT;
		public System.Windows.Forms.TextBox txtSilver;
		internal System.Windows.Forms.Label Label7;
		internal System.Windows.Forms.Label Label8;
		internal System.Windows.Forms.Label Label9;
		internal System.Windows.Forms.Label lblDate;
		internal System.Windows.Forms.Button cmdOK;
		internal System.Windows.Forms.Button cmdCancel;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmRate));
			this.Label1 = new System.Windows.Forms.Label();
			this.Load += new EventHandler(this.frmRate_Load);
			this.Label2 = new System.Windows.Forms.Label();
			this.GroupBox1 = new System.Windows.Forms.GroupBox();
			this.Label9 = new System.Windows.Forms.Label();
			this.Label8 = new System.Windows.Forms.Label();
			this.Label7 = new System.Windows.Forms.Label();
			this.txtSilver = new System.Windows.Forms.TextBox();
			this.txtGold24CT = new System.Windows.Forms.TextBox();
			this.txtGold22CT = new System.Windows.Forms.TextBox();
			this.Label5 = new System.Windows.Forms.Label();
			this.Label4 = new System.Windows.Forms.Label();
			this.Label3 = new System.Windows.Forms.Label();
			this.lblDate = new System.Windows.Forms.Label();
			this.cmdOK = new System.Windows.Forms.Button();
			this.cmdOK.Click += new EventHandler(this.cmdOK_Click);
			this.cmdCancel = new System.Windows.Forms.Button();
			this.cmdCancel.Click += new EventHandler(this.cmdCancel_Click);
			this.GroupBox1.SuspendLayout();
			this.SuspendLayout();
			//
			//Label1
			//
			this.Label1.Font = new System.Drawing.Font("Arial Narrow", System.Convert.ToSingle(9.0), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label1.ForeColor = System.Drawing.Color.FromArgb(((byte)(0)),((byte)(64)),((byte)(64)));
			this.Label1.Location = new System.Drawing.Point(8, 40);
			this.Label1.Name = "Label1";
			this.Label1.Size = new System.Drawing.Size(328, 40);
			this.Label1.TabIndex = 0;
			this.Label1.Text = "Each day the Market Rate of the ornaments are changed according to the Market Rat" + "e of Gold and Silver . So Quote Today's Rates";
			//
			//Label2
			//
			this.Label2.Font = new System.Drawing.Font("Monotype Corsiva", System.Convert.ToSingle(12.0),(System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label2.ForeColor = System.Drawing.Color.Firebrick;
			this.Label2.Location = new System.Drawing.Point(8, 8);
			this.Label2.Name = "Label2";
			this.Label2.Size = new System.Drawing.Size(136, 24);
			this.Label2.TabIndex = 1;
			this.Label2.Text = "Rate Of The Day ";
			//
			//GroupBox1
			//
			this.GroupBox1.Controls.AddRange(new System.Windows.Forms.Control[] { this.Label9, this.Label8, this.Label7, this.txtSilver, this.txtGold24CT, this.txtGold22CT, this.Label5, this.Label4, this.Label3 });
			this.GroupBox1.Location = new System.Drawing.Point(48, 80);
			this.GroupBox1.Name = "GroupBox1";
			this.GroupBox1.Size = new System.Drawing.Size(272, 120);
			this.GroupBox1.TabIndex = 3;
			this.GroupBox1.TabStop = false;
			this.GroupBox1.Text = "Rate Of The Day";
			//
			//Label9
			//
			this.Label9.Location = new System.Drawing.Point(192, 88);
			this.Label9.Name = "Label9";
			this.Label9.Size = new System.Drawing.Size(56, 24);
			this.Label9.TabIndex = 60;
			this.Label9.Text = "Rs/Grams";
			//
			//Label8
			//
			this.Label8.Location = new System.Drawing.Point(192, 56);
			this.Label8.Name = "Label8";
			this.Label8.Size = new System.Drawing.Size(64, 24);
			this.Label8.TabIndex = 50;
			this.Label8.Text = "Rs/Grams";
			//
			//Label7
			//
			this.Label7.Location = new System.Drawing.Point(192, 24);
			this.Label7.Name = "Label7";
			this.Label7.Size = new System.Drawing.Size(56, 16);
			this.Label7.TabIndex = 40;
			this.Label7.Text = "Rs/Grams";
			//
			//txtSilver
			//
			this.txtSilver.AcceptsReturn = true;
			this.txtSilver.AcceptsTab = true;
			this.txtSilver.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtSilver.Location = new System.Drawing.Point(88, 88);
			this.txtSilver.Name = "txtSilver";
			this.txtSilver.Size = new System.Drawing.Size(96, 20);
			this.txtSilver.TabIndex = 3;
			this.txtSilver.Text = "";
			//
			//txtGold24CT
			//
			this.txtGold24CT.AcceptsReturn = true;
			this.txtGold24CT.AcceptsTab = true;
			this.txtGold24CT.AllowDrop = true;
			this.txtGold24CT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtGold24CT.Location = new System.Drawing.Point(88, 56);
			this.txtGold24CT.Name = "txtGold24CT";
			this.txtGold24CT.Size = new System.Drawing.Size(96, 20);
			this.txtGold24CT.TabIndex = 2;
			this.txtGold24CT.Text = "";
			//
			//txtGold22CT
			//
			this.txtGold22CT.AcceptsReturn = true;
			this.txtGold22CT.AcceptsTab = true;
			this.txtGold22CT.AllowDrop = true;
			this.txtGold22CT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtGold22CT.Location = new System.Drawing.Point(88, 24);
			this.txtGold22CT.Name = "txtGold22CT";
			this.txtGold22CT.Size = new System.Drawing.Size(96, 20);
			this.txtGold22CT.TabIndex = 1;
			this.txtGold22CT.Text = "";
			//
			//Label5
			//
			this.Label5.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label5.Location = new System.Drawing.Point(8, 88);
			this.Label5.Name = "Label5";
			this.Label5.Size = new System.Drawing.Size(80, 24);
			this.Label5.TabIndex = 200;
			this.Label5.Text = "Silver";
			//
			//Label4
			//
			this.Label4.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label4.Location = new System.Drawing.Point(8, 56);
			this.Label4.Name = "Label4";
			this.Label4.Size = new System.Drawing.Size(80, 24);
			this.Label4.TabIndex = 199;
			this.Label4.Text = "Gold 24CT";
			//
			//Label3
			//
			this.Label3.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label3.Location = new System.Drawing.Point(8, 24);
			this.Label3.Name = "Label3";
			this.Label3.Size = new System.Drawing.Size(80, 24);
			this.Label3.TabIndex = 90;
			this.Label3.Text = "Gold 22CT";
			//
			//lblDate
			//
			this.lblDate.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(9.75), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.lblDate.ForeColor = System.Drawing.Color.Purple;
			this.lblDate.Location = new System.Drawing.Point(152, 8);
			this.lblDate.Name = "lblDate";
			this.lblDate.Size = new System.Drawing.Size(184, 24);
			this.lblDate.TabIndex = 4;
			this.lblDate.Text = "27/07/2004 12:00:00 AM";
			//
			//cmdOK
			//
			this.cmdOK.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdOK.Location = new System.Drawing.Point(152, 216);
			this.cmdOK.Name = "cmdOK";
			this.cmdOK.Size = new System.Drawing.Size(80, 24);
			this.cmdOK.TabIndex = 4;
			this.cmdOK.Text = "&OK";
			//
			//cmdCancel
			//
			this.cmdCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdCancel.Location = new System.Drawing.Point(256, 216);
			this.cmdCancel.Name = "cmdCancel";
			this.cmdCancel.Size = new System.Drawing.Size(80, 24);
			this.cmdCancel.TabIndex = 5;
			this.cmdCancel.Text = "&Cancel";
			//
			//frmRate
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.ClientSize = new System.Drawing.Size(352, 269);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.cmdCancel, this.cmdOK, this.lblDate, this.GroupBox1, this.Label2, this.Label1 });
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "frmRate";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Today's Rate";
			this.GroupBox1.ResumeLayout(false);
			this.ResumeLayout(false);
			
		}
		public void getdate ()
		{
			lblDate.Text = System.Convert.ToString(DateAndTime.Now);
		}
		#endregion
		
		private void cmdCancel_Click (System.Object sender, System.EventArgs e)
		{
			this.Dispose(true);
		}
		
		private void frmRate_Load (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void cmdOK_Click (System.Object sender, System.EventArgs e)
		{
			
		}
	}
	
}
