using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;
using System.ComponentModel;
using System.Data.SqlClient;
//using Microsoft.VisualBasic.ControlChars;
using Microsoft.VisualBasic.CompilerServices;

namespace JewelBox2004
{
	
	public class frmLogin : System.Windows.Forms.Form
	{
		
		
		#region " Windows Form Designer generated code "
		
		public frmLogin() {
			
			frmLogin_Renamed = this;
			Activated += new EventHandler(this.frmLogin_Activated);
			
			//This call is required by the Windows Form Designer.
			InitializeComponent();
			//Public Property Handled() As Boolean
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
		internal System.Windows.Forms.Button cmdLogin;
		internal System.Windows.Forms.Button cmdCancel;
		internal System.Windows.Forms.TextBox txtPassword;
		internal System.Windows.Forms.TextBox txtUser;
		
		System.Windows.Forms.Form frmLogin_Renamed;
		
		
		int i;
		internal System.Windows.Forms.GroupBox GroupBox1;
		internal System.Windows.Forms.Label Label1;
		internal System.Windows.Forms.Label Label2;
		internal System.Windows.Forms.Button Button1;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmLogin));
			this.cmdLogin = new System.Windows.Forms.Button();
			this.cmdLogin.Click += new EventHandler(this.cmdLogin_Click);
			this.Load += new EventHandler(this.frmLogin_Load);
			this.Closed += new EventHandler(this.frmLogin_Unload);
			this.Activated += new EventHandler(this.frmLogin_Activated);
			this.cmdCancel = new System.Windows.Forms.Button();
			this.cmdCancel.Click += new EventHandler(this.cmdCancel_Click);
			this.txtUser = new System.Windows.Forms.TextBox();
			this.txtUser.KeyPress += new KeyPressEventHandler(this.txtUser_KeyPress);
			this.txtUser.TextChanged += new EventHandler(this.txtUser_TextChanged);
			this.txtPassword = new System.Windows.Forms.TextBox();
			this.txtPassword.KeyPress += new KeyPressEventHandler(this.txtPassword_KeyPress);
			this.txtPassword.TextChanged += new EventHandler(this.txtPassword_TextChanged);
			this.GroupBox1 = new System.Windows.Forms.GroupBox();
			this.Label2 = new System.Windows.Forms.Label();
			this.Label1 = new System.Windows.Forms.Label();
			this.Button1 = new System.Windows.Forms.Button();
			this.Button1.Click += new EventHandler(this.Button1_Click);
			this.GroupBox1.SuspendLayout();
			this.SuspendLayout();
			//
			//cmdLogin
			//
			this.cmdLogin.FlatStyle = System.Windows.Forms.FlatStyle.System;
			this.cmdLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdLogin.Location = new System.Drawing.Point(136, 160);
			this.cmdLogin.Name = "cmdLogin";
			this.cmdLogin.Size = new System.Drawing.Size(72, 24);
			this.cmdLogin.TabIndex = 4;
			this.cmdLogin.Text = "&Log In";
			//
			//cmdCancel
			//
			this.cmdCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.cmdCancel.FlatStyle = System.Windows.Forms.FlatStyle.System;
			this.cmdCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdCancel.Location = new System.Drawing.Point(216, 160);
			this.cmdCancel.Name = "cmdCancel";
			this.cmdCancel.Size = new System.Drawing.Size(72, 24);
			this.cmdCancel.TabIndex = 5;
			this.cmdCancel.Text = "&Cancel";
			//
			//txtUser
			//
			this.txtUser.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtUser.Location = new System.Drawing.Point(136, 80);
			this.txtUser.Name = "txtUser";
			this.txtUser.Size = new System.Drawing.Size(136, 20);
			this.txtUser.TabIndex = 0;
			this.txtUser.Text = "";
			//
			//txtPassword
			//
			this.txtPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtPassword.Location = new System.Drawing.Point(136, 112);
			this.txtPassword.Name = "txtPassword";
			this.txtPassword.PasswordChar = Microsoft.VisualBasic.Strings.ChrW(42);
			this.txtPassword.Size = new System.Drawing.Size(136, 20);
			this.txtPassword.TabIndex = 1;
			this.txtPassword.Text = "";
			//
			//GroupBox1
			//
			this.GroupBox1.Controls.AddRange(new System.Windows.Forms.Control[] { this.Label2, this.Label1 });
			this.GroupBox1.Font = new System.Drawing.Font("Monotype Corsiva", System.Convert.ToSingle(14.25), System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.GroupBox1.Location = new System.Drawing.Point(8, 48);
			this.GroupBox1.Name = "GroupBox1";
			this.GroupBox1.Size = new System.Drawing.Size(280, 100);
			this.GroupBox1.TabIndex = 6;
			this.GroupBox1.TabStop = false;
			this.GroupBox1.Text = "Enter Login Details";
			//
			//Label2
			//
			this.Label2.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(9.75), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label2.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label2.Location = new System.Drawing.Point(32, 56);
			this.Label2.Name = "Label2";
			this.Label2.Size = new System.Drawing.Size(88, 23);
			this.Label2.TabIndex = 1;
			this.Label2.Text = "Password :";
			//
			//Label1
			//
			this.Label1.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(9.75), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Label1.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label1.Location = new System.Drawing.Point(32, 32);
			this.Label1.Name = "Label1";
			this.Label1.Size = new System.Drawing.Size(88, 23);
			this.Label1.TabIndex = 0;
			this.Label1.Text = "User Name :";
			//
			//Button1
			//
			this.Button1.FlatStyle = System.Windows.Forms.FlatStyle.System;
			this.Button1.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.Button1.Location = new System.Drawing.Point(56, 160);
			this.Button1.Name = "Button1";
			this.Button1.Size = new System.Drawing.Size(72, 24);
			this.Button1.TabIndex = 7;
			this.Button1.Text = "&New User";
			//
			//frmLogin
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.ClientSize = new System.Drawing.Size(296, 206);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.Button1, this.txtPassword, this.txtUser, this.cmdCancel, this.cmdLogin, this.GroupBox1 });
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmLogin";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "User Authentication";
			this.TopMost = true;
			this.GroupBox1.ResumeLayout(false);
			this.ResumeLayout(false);
			
		}
		
		#endregion
		
		private void cmdLogin_Click (System.Object sender, System.EventArgs e)
		{
			modMain.logsuccess = false;
			modMain.sql = "select loginid,password from login";
			modMain.comm = new System.Data.SqlClient.SqlCommand(modMain.sql, modMain.conn);
			System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter(modMain.comm);
			adapt.Fill(modMain.rslogin, "Login");
			modMain.loguser = Strings.UCase(Strings.Trim(txtUser.Text));
			modMain.logpass = Strings.Trim(txtPassword.Text);
			DataRow objdatarow;
			foreach (DataRow tempLoopVar_objdatarow in modMain.rslogin.Tables["Login"].Rows)
			{
				objdatarow = tempLoopVar_objdatarow;
				if (Strings.UCase(System.Convert.ToString(objdatarow["loginid"])) == modMain.loguser)
				{
					if (modMain.decrypt_pass(System.Convert.ToString(objdatarow["password"])) ==(modMain.logpass))
					{
						modMain.logsuccess = true;
						adapt.Dispose();
						adapt = null;
						modMain.comm.Dispose();
						modMain.comm = null;
						
						frmMain frm = new frmMain();
						this.Hide();
						frm.Show();
						return;
					}
				}
			}
			if (modMain.logsuccess == false)
			{
				Interaction.MsgBox("Login Failed ? Please Check whether your login details are true", 0, null);
				txtUser.Focus();
			}
			adapt.Dispose();
			adapt = null;
			modMain.comm.Dispose();
			modMain.comm = null;
		}
		
		private void cmdCancel_Click (System.Object sender, System.EventArgs e)
		{
			ProjectData.EndApp();
		}
		
		private void frmLogin_Load (System.Object sender, System.EventArgs e)
		{
			this.Text = this.Text + "-> " + DateTime.Now;
			txtUser.Focus();
		}
		private void frmLogin_Unload (object sender, System.EventArgs e)
		{
			ProjectData.EndApp();
		}
		
		
		
		private void txtUser_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				bool user_correct;
				user_correct = false;
				modMain.sql = "select loginid,password from login";
				modMain.comm = new System.Data.SqlClient.SqlCommand(modMain.sql, modMain.conn);
				System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter(modMain.comm);
				adapt.Fill(modMain.rslogin, "Login");
				modMain.loguser = Strings.UCase(Strings.Trim(txtUser.Text));
				DataRow objdatarow;
				foreach (DataRow tempLoopVar_objdatarow in modMain.rslogin.Tables["Login"].Rows)
				{
					objdatarow = tempLoopVar_objdatarow;
					if (Strings.UCase(System.Convert.ToString(objdatarow["loginid"])) == modMain.loguser)
					{
						user_correct = true;
					}
				}
				if (user_correct == true)
				{
					objdatarow = null;
					modMain.comm.Dispose();
					modMain.comm = null;
					//rslogin.Dispose()
					//rslogin = Nothing
					adapt.Dispose();
					adapt = null;
					txtPassword.Focus();
				}
				else
				{
					Interaction.MsgBox("Invalid User Name", 0, null);
				}
			}
		}
		private void txtPassword_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				modMain.logsuccess = false;
				modMain.sql = "select loginid,password from login";
				modMain.comm = new System.Data.SqlClient.SqlCommand(modMain.sql, modMain.conn);
				System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter(modMain.comm);
				adapt.Fill(modMain.rslogin, "Login");
				modMain.loguser = Strings.UCase(Strings.Trim(txtUser.Text));
				modMain.logpass = Strings.Trim(txtPassword.Text);
				DataRow objdatarow;
				foreach (DataRow tempLoopVar_objdatarow in modMain.rslogin.Tables["Login"].Rows)
				{
					objdatarow = tempLoopVar_objdatarow;
					if (Strings.UCase(System.Convert.ToString(objdatarow["loginid"])) == modMain.loguser)
					{
						if (modMain.decrypt_pass(System.Convert.ToString(objdatarow["password"])) ==(modMain.logpass))
						{
							modMain.logsuccess = true;
							adapt.Dispose();
							adapt = null;
							modMain.comm.Dispose();
							modMain.comm = null;
							
							frmMain frm = new frmMain();
							this.Hide();
							frm.Show();
							return;
						}
					}
				}
				if (modMain.logsuccess == false)
				{
					Interaction.MsgBox("Login Failed ? Please Check whether your login details are true", 0, null);
					txtUser.Focus();
				}
				adapt.Dispose();
				adapt = null;
				modMain.comm.Dispose();
				modMain.comm = null;
			}
		}
		
		private void frmLogin_Activated (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void Button1_Click (System.Object sender, System.EventArgs e)
		{
			frmNewUser frm2 = new frmNewUser();
			this.Hide();
			frm2.Show();
		}
		
		private void txtUser_TextChanged (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void txtPassword_TextChanged (System.Object sender, System.EventArgs e)
		{
			
		}
	}
	
}
