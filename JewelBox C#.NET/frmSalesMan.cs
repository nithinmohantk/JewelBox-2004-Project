using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	public class frmSalesMan : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmSalesMan() {
			
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
		internal System.Windows.Forms.ComboBox cboSalesManID;
		internal System.Windows.Forms.TextBox txtFirstName;
		internal System.Windows.Forms.TextBox txtLastName;
		internal System.Windows.Forms.RadioButton optMale;
		internal System.Windows.Forms.RadioButton optFemale;
		internal System.Windows.Forms.DateTimePicker dtBirth;
		internal System.Windows.Forms.TextBox txtAge;
		internal System.Windows.Forms.TextBox txtAddress;
		internal System.Windows.Forms.TextBox txtCity;
		internal System.Windows.Forms.TextBox txtState;
		internal System.Windows.Forms.TextBox txtZip;
		internal System.Windows.Forms.TextBox txtPhone;
		internal System.Windows.Forms.TextBox txtLogin;
		internal System.Windows.Forms.TextBox txtPassword;
		internal System.Windows.Forms.DateTimePicker dtJoin;
		internal System.Windows.Forms.DateTimePicker dtLeave;
		internal System.Windows.Forms.TextBox txtStatus;
		internal System.Windows.Forms.Button cmdExit;
		internal System.Windows.Forms.Button cmdDel;
		internal System.Windows.Forms.Button CmdEdit;
		internal System.Windows.Forms.Button cmdNew;
		internal System.Windows.Forms.Button cmdSave;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmSalesMan));
			this.cboSalesManID = new System.Windows.Forms.ComboBox();
			this.Load += new EventHandler(this.frmSalesMan_Load);
			this.txtFirstName = new System.Windows.Forms.TextBox();
			this.txtLastName = new System.Windows.Forms.TextBox();
			this.optMale = new System.Windows.Forms.RadioButton();
			this.optFemale = new System.Windows.Forms.RadioButton();
			this.optFemale.CheckedChanged += new EventHandler(this.optFemale_CheckedChanged);
			this.dtBirth = new System.Windows.Forms.DateTimePicker();
			this.txtAge = new System.Windows.Forms.TextBox();
			this.txtAddress = new System.Windows.Forms.TextBox();
			this.txtCity = new System.Windows.Forms.TextBox();
			this.txtState = new System.Windows.Forms.TextBox();
			this.txtZip = new System.Windows.Forms.TextBox();
			this.txtPhone = new System.Windows.Forms.TextBox();
			this.txtLogin = new System.Windows.Forms.TextBox();
			this.txtPassword = new System.Windows.Forms.TextBox();
			this.dtJoin = new System.Windows.Forms.DateTimePicker();
			this.dtLeave = new System.Windows.Forms.DateTimePicker();
			this.txtStatus = new System.Windows.Forms.TextBox();
			this.cmdExit = new System.Windows.Forms.Button();
			this.cmdExit.Click += new EventHandler(this.cmdExit_Click);
			this.cmdDel = new System.Windows.Forms.Button();
			this.cmdDel.Click += new EventHandler(this.cmdDel_Click);
			this.CmdEdit = new System.Windows.Forms.Button();
			this.cmdNew = new System.Windows.Forms.Button();
			this.cmdNew.Click += new EventHandler(this.cmdNew_Click);
			this.cmdSave = new System.Windows.Forms.Button();
			this.cmdSave.Click += new EventHandler(this.cmdSave_Click);
			this.SuspendLayout();
			//
			//cboSalesManID
			//
			this.cboSalesManID.Location = new System.Drawing.Point(104, 72);
			this.cboSalesManID.Name = "cboSalesManID";
			this.cboSalesManID.Size = new System.Drawing.Size(112, 21);
			this.cboSalesManID.TabIndex = 0;
			//
			//txtFirstName
			//
			this.txtFirstName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtFirstName.Location = new System.Drawing.Point(104, 104);
			this.txtFirstName.Name = "txtFirstName";
			this.txtFirstName.Size = new System.Drawing.Size(128, 20);
			this.txtFirstName.TabIndex = 1;
			this.txtFirstName.Text = "";
			//
			//txtLastName
			//
			this.txtLastName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtLastName.Location = new System.Drawing.Point(320, 104);
			this.txtLastName.Name = "txtLastName";
			this.txtLastName.Size = new System.Drawing.Size(128, 20);
			this.txtLastName.TabIndex = 2;
			this.txtLastName.Text = "";
			//
			//optMale
			//
			this.optMale.Location = new System.Drawing.Point(136, 128);
			this.optMale.Name = "optMale";
			this.optMale.Size = new System.Drawing.Size(16, 16);
			this.optMale.TabIndex = 3;
			this.optMale.Text = "RadioButton1";
			//
			//optFemale
			//
			this.optFemale.Location = new System.Drawing.Point(208, 128);
			this.optFemale.Name = "optFemale";
			this.optFemale.Size = new System.Drawing.Size(16, 16);
			this.optFemale.TabIndex = 4;
			this.optFemale.Text = "RadioButton2";
			//
			//dtBirth
			//
			this.dtBirth.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
			this.dtBirth.Location = new System.Drawing.Point(104, 152);
			this.dtBirth.Name = "dtBirth";
			this.dtBirth.Size = new System.Drawing.Size(88, 20);
			this.dtBirth.TabIndex = 5;
			//
			//txtAge
			//
			this.txtAge.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtAge.Location = new System.Drawing.Point(320, 152);
			this.txtAge.Name = "txtAge";
			this.txtAge.Size = new System.Drawing.Size(48, 20);
			this.txtAge.TabIndex = 6;
			this.txtAge.Text = "";
			//
			//txtAddress
			//
			this.txtAddress.Location = new System.Drawing.Point(104, 184);
			this.txtAddress.Multiline = true;
			this.txtAddress.Name = "txtAddress";
			this.txtAddress.Size = new System.Drawing.Size(248, 48);
			this.txtAddress.TabIndex = 7;
			this.txtAddress.Text = "";
			//
			//txtCity
			//
			this.txtCity.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtCity.Location = new System.Drawing.Point(104, 240);
			this.txtCity.Name = "txtCity";
			this.txtCity.Size = new System.Drawing.Size(136, 20);
			this.txtCity.TabIndex = 8;
			this.txtCity.Text = "";
			//
			//txtState
			//
			this.txtState.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtState.Location = new System.Drawing.Point(320, 240);
			this.txtState.Name = "txtState";
			this.txtState.Size = new System.Drawing.Size(152, 20);
			this.txtState.TabIndex = 9;
			this.txtState.Text = "";
			//
			//txtZip
			//
			this.txtZip.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtZip.Location = new System.Drawing.Point(104, 264);
			this.txtZip.Name = "txtZip";
			this.txtZip.Size = new System.Drawing.Size(136, 20);
			this.txtZip.TabIndex = 10;
			this.txtZip.Text = "";
			//
			//txtPhone
			//
			this.txtPhone.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtPhone.Location = new System.Drawing.Point(320, 264);
			this.txtPhone.Name = "txtPhone";
			this.txtPhone.Size = new System.Drawing.Size(152, 20);
			this.txtPhone.TabIndex = 11;
			this.txtPhone.Text = "";
			//
			//txtLogin
			//
			this.txtLogin.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtLogin.Location = new System.Drawing.Point(104, 288);
			this.txtLogin.Name = "txtLogin";
			this.txtLogin.Size = new System.Drawing.Size(136, 20);
			this.txtLogin.TabIndex = 12;
			this.txtLogin.Text = "";
			//
			//txtPassword
			//
			this.txtPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtPassword.Location = new System.Drawing.Point(320, 288);
			this.txtPassword.Name = "txtPassword";
			this.txtPassword.PasswordChar = Microsoft.VisualBasic.Strings.ChrW(42);
			this.txtPassword.Size = new System.Drawing.Size(152, 20);
			this.txtPassword.TabIndex = 13;
			this.txtPassword.Text = "";
			//
			//dtJoin
			//
			this.dtJoin.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtJoin.Location = new System.Drawing.Point(104, 312);
			this.dtJoin.Name = "dtJoin";
			this.dtJoin.Size = new System.Drawing.Size(96, 20);
			this.dtJoin.TabIndex = 14;
			//
			//dtLeave
			//
			this.dtLeave.Format = System.Windows.Forms.DateTimePickerFormat.Short;
			this.dtLeave.Location = new System.Drawing.Point(320, 312);
			this.dtLeave.Name = "dtLeave";
			this.dtLeave.Size = new System.Drawing.Size(96, 20);
			this.dtLeave.TabIndex = 15;
			//
			//txtStatus
			//
			this.txtStatus.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtStatus.Location = new System.Drawing.Point(104, 336);
			this.txtStatus.Name = "txtStatus";
			this.txtStatus.Size = new System.Drawing.Size(120, 20);
			this.txtStatus.TabIndex = 16;
			this.txtStatus.Text = "ACTIVE";
			//
			//cmdExit
			//
			this.cmdExit.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdExit.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdExit.Image")));
			this.cmdExit.Location = new System.Drawing.Point(392, 376);
			this.cmdExit.Name = "cmdExit";
			this.cmdExit.Size = new System.Drawing.Size(88, 40);
			this.cmdExit.TabIndex = 21;
			//
			//cmdDel
			//
			this.cmdDel.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdDel.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdDel.Image")));
			this.cmdDel.Location = new System.Drawing.Point(296, 376);
			this.cmdDel.Name = "cmdDel";
			this.cmdDel.Size = new System.Drawing.Size(88, 40);
			this.cmdDel.TabIndex = 20;
			//
			//CmdEdit
			//
			this.CmdEdit.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.CmdEdit.Image = ((System.Drawing.Bitmap)(resources.GetObject("CmdEdit.Image")));
			this.CmdEdit.Location = new System.Drawing.Point(104, 376);
			this.CmdEdit.Name = "CmdEdit";
			this.CmdEdit.Size = new System.Drawing.Size(88, 40);
			this.CmdEdit.TabIndex = 18;
			//
			//cmdNew
			//
			this.cmdNew.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdNew.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdNew.Image")));
			this.cmdNew.Location = new System.Drawing.Point(8, 376);
			this.cmdNew.Name = "cmdNew";
			this.cmdNew.Size = new System.Drawing.Size(88, 40);
			this.cmdNew.TabIndex = 17;
			//
			//cmdSave
			//
			this.cmdSave.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.cmdSave.Image = ((System.Drawing.Bitmap)(resources.GetObject("cmdSave.Image")));
			this.cmdSave.Location = new System.Drawing.Point(200, 376);
			this.cmdSave.Name = "cmdSave";
			this.cmdSave.Size = new System.Drawing.Size(88, 40);
			this.cmdSave.TabIndex = 19;
			//
			//frmSalesMan
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(488, 430);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.cmdExit, this.cmdDel, this.cmdSave, this.CmdEdit, this.cmdNew, this.txtStatus, this.dtLeave, this.dtJoin, this.txtPassword, this.txtLogin, this.txtPhone, this.txtZip, this.txtState, this.txtCity, this.txtAddress, this.txtAge, this.dtBirth, this.optFemale, this.optMale, this.txtLastName, this.txtFirstName, this.cboSalesManID });
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.Name = "frmSalesMan";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "SalesMan Manager";
			this.ResumeLayout(false);
			
		}
		public bool isNew = false;
		#endregion
		
		private void frmSalesMan_Load (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void optFemale_CheckedChanged (System.Object sender, System.EventArgs e)
		{
			
		}
		
		
		private void cmdExit_Click (System.Object sender, System.EventArgs e)
		{
			this.Close();
		}
		
		private void cmdNew_Click (System.Object sender, System.EventArgs e)
		{
			isNew = true;
		}
		
		private void cmdSave_Click (System.Object sender, System.EventArgs e)
		{
			if (isNew == true)
			{
				if (cboSalesManID.Text == "")
				{
					Interaction.MsgBox("Please fill in SalesManID  box.", MsgBoxStyle.Critical, this.Text);
					return;
				}
				//Dim rs As String()
				//rsLogin.AddNew("SALESMANID", Trim(cboSalesManID.Text))
				//rsLogin.Save()
				//Call commitDB()
				//Dim strSQL As String = "INSERT INTO Login(SALESMANID,LOGINID,PASSWORD) " &             '"VALUES ('" & Trim(cboSalesManID.Text) &             '"','" & Trim(txtLogin.Text) & "','" & Trim(txtPassword.Text) & "')"
				//conn.Open(strConn)
				//Dim recordsEffected As Object
				//conn.Execute(strSQL, recordsEffected)
				//conn.Close()
				// Check to see if 1 record was effected
				//If CInt(recordsEffected) > 0 Then
				//MsgBox("Update Successful!", MsgBoxStyle.Exclamation, Me.Text)
				//Else
				//MsgBox("Update Failed!", MsgBoxStyle.Critical, Me.Text)
			}
			
		}
		
		private void cmdDel_Click (System.Object sender, System.EventArgs e)
		{
			//			string strSQL = "DELETE FROM Login";
			//conn.Open(strConn)
			//Dim recordsEffected As Object
			//conn.Execute(strSQL, recordsEffected)
			//conn.Close()
			// Check to see if 1 record was effected
			//If CInt(recordsEffected) > 0 Then
			//    MsgBox("Deletion Successful!", MsgBoxStyle.Exclamation, Me.Text)
			//Else
			//    MsgBox("Failed!", MsgBoxStyle.Critical, Me.Text)
			//End If
			
		}
	}
	
}
