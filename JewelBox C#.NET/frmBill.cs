using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	public class frmBill : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmBill() {
			
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
		internal System.Windows.Forms.TextBox txtDate;
		internal System.Windows.Forms.TextBox txtBillNo;
		internal System.Windows.Forms.TextBox txtItemID;
		internal System.Windows.Forms.TextBox txtSalesMan;
		internal System.Windows.Forms.TextBox txtConterNO;
		internal System.Windows.Forms.TextBox txtBuyer;
		internal System.Windows.Forms.TextBox txtQTY;
		internal System.Windows.Forms.Button cmdCancel;
		internal System.Windows.Forms.Button cmdOK;
		internal System.Windows.Forms.RadioButton optSales;
		internal System.Windows.Forms.RadioButton optExchange;
		internal System.Windows.Forms.RadioButton optPurchase;
		internal System.Windows.Forms.Button Button1;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmBill));
			this.txtDate = new System.Windows.Forms.TextBox();
			this.txtBillNo = new System.Windows.Forms.TextBox();
			this.txtItemID = new System.Windows.Forms.TextBox();
			this.txtSalesMan = new System.Windows.Forms.TextBox();
			this.txtConterNO = new System.Windows.Forms.TextBox();
			this.txtBuyer = new System.Windows.Forms.TextBox();
			this.txtQTY = new System.Windows.Forms.TextBox();
			this.cmdCancel = new System.Windows.Forms.Button();
			this.cmdCancel.Click += new EventHandler(this.cmdCancel_Click);
			this.cmdOK = new System.Windows.Forms.Button();
			this.cmdOK.Click += new EventHandler(this.cmdOK_Click);
			this.optSales = new System.Windows.Forms.RadioButton();
			this.optExchange = new System.Windows.Forms.RadioButton();
			this.optPurchase = new System.Windows.Forms.RadioButton();
			this.Button1 = new System.Windows.Forms.Button();
			this.SuspendLayout();
			//
			//txtDate
			//
			this.txtDate.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtDate.Location = new System.Drawing.Point(120, 80);
			this.txtDate.Name = "txtDate";
			this.txtDate.Size = new System.Drawing.Size(120, 20);
			this.txtDate.TabIndex = 0;
			this.txtDate.Text = "";
			//
			//txtBillNo
			//
			this.txtBillNo.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtBillNo.Location = new System.Drawing.Point(120, 120);
			this.txtBillNo.Name = "txtBillNo";
			this.txtBillNo.Size = new System.Drawing.Size(120, 20);
			this.txtBillNo.TabIndex = 1;
			this.txtBillNo.Text = "";
			//
			//txtItemID
			//
			this.txtItemID.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtItemID.Location = new System.Drawing.Point(120, 160);
			this.txtItemID.Name = "txtItemID";
			this.txtItemID.Size = new System.Drawing.Size(120, 20);
			this.txtItemID.TabIndex = 2;
			this.txtItemID.Text = "";
			//
			//txtSalesMan
			//
			this.txtSalesMan.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtSalesMan.Location = new System.Drawing.Point(120, 200);
			this.txtSalesMan.Name = "txtSalesMan";
			this.txtSalesMan.Size = new System.Drawing.Size(120, 20);
			this.txtSalesMan.TabIndex = 3;
			this.txtSalesMan.Text = "";
			//
			//txtConterNO
			//
			this.txtConterNO.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtConterNO.Location = new System.Drawing.Point(120, 240);
			this.txtConterNO.Name = "txtConterNO";
			this.txtConterNO.Size = new System.Drawing.Size(120, 20);
			this.txtConterNO.TabIndex = 4;
			this.txtConterNO.Text = "";
			//
			//txtBuyer
			//
			this.txtBuyer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtBuyer.Location = new System.Drawing.Point(120, 280);
			this.txtBuyer.Name = "txtBuyer";
			this.txtBuyer.Size = new System.Drawing.Size(280, 20);
			this.txtBuyer.TabIndex = 5;
			this.txtBuyer.Text = "";
			//
			//txtQTY
			//
			this.txtQTY.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtQTY.Location = new System.Drawing.Point(120, 328);
			this.txtQTY.Name = "txtQTY";
			this.txtQTY.Size = new System.Drawing.Size(112, 20);
			this.txtQTY.TabIndex = 6;
			this.txtQTY.Text = "";
			//
			//cmdCancel
			//
			this.cmdCancel.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("cmdCancel.BackgroundImage")));
			this.cmdCancel.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdCancel.Location = new System.Drawing.Point(392, 352);
			this.cmdCancel.Name = "cmdCancel";
			this.cmdCancel.Size = new System.Drawing.Size(82, 40);
			this.cmdCancel.TabIndex = 9;
			//
			//cmdOK
			//
			this.cmdOK.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("cmdOK.BackgroundImage")));
			this.cmdOK.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdOK.Location = new System.Drawing.Point(288, 352);
			this.cmdOK.Name = "cmdOK";
			this.cmdOK.Size = new System.Drawing.Size(82, 40);
			this.cmdOK.TabIndex = 8;
			//
			//optSales
			//
			this.optSales.BackColor = System.Drawing.SystemColors.ControlText;
			this.optSales.Location = new System.Drawing.Point(344, 104);
			this.optSales.Name = "optSales";
			this.optSales.Size = new System.Drawing.Size(16, 24);
			this.optSales.TabIndex = 10;
			this.optSales.Text = "RadioButton1";
			//
			//optExchange
			//
			this.optExchange.BackColor = System.Drawing.SystemColors.ControlText;
			this.optExchange.Location = new System.Drawing.Point(344, 200);
			this.optExchange.Name = "optExchange";
			this.optExchange.Size = new System.Drawing.Size(16, 24);
			this.optExchange.TabIndex = 11;
			this.optExchange.Text = "RadioButton2";
			//
			//optPurchase
			//
			this.optPurchase.BackColor = System.Drawing.SystemColors.ControlText;
			this.optPurchase.Location = new System.Drawing.Point(344, 152);
			this.optPurchase.Name = "optPurchase";
			this.optPurchase.Size = new System.Drawing.Size(16, 24);
			this.optPurchase.TabIndex = 12;
			this.optPurchase.Text = "RadioButton3";
			//
			//Button1
			//
			this.Button1.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("Button1.BackgroundImage")));
			this.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.Button1.Location = new System.Drawing.Point(184, 352);
			this.Button1.Name = "Button1";
			this.Button1.Size = new System.Drawing.Size(82, 40);
			this.Button1.TabIndex = 13;
			//
			//frmBill
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(504, 421);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.Button1, this.optPurchase, this.optExchange, this.optSales, this.cmdCancel, this.cmdOK, this.txtQTY, this.txtBuyer, this.txtConterNO, this.txtSalesMan, this.txtItemID, this.txtBillNo, this.txtDate });
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.Name = "frmBill";
			this.Text = "Bill Manager";
			this.ResumeLayout(false);
			
		}
		
		#endregion
		
		private void cmdOK_Click (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void cmdCancel_Click (System.Object sender, System.EventArgs e)
		{
			this.Close();
		}
	}
	
}
