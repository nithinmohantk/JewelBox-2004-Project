using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;
using System.Data.SqlClient;
using System.Data.OleDb;

namespace JewelBox2004
{
	public class frmNewUser : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmNewUser() {
			frmNewUser_Renamed = this;
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
		internal System.Windows.Forms.GroupBox GroupBox1;
		internal System.Windows.Forms.Label Label1;
		internal System.Windows.Forms.Label Label2;
		internal System.Windows.Forms.Label Label3;
		internal System.Windows.Forms.TextBox txtNewUser;
		internal System.Windows.Forms.TextBox txtNewPass1;
		internal System.Windows.Forms.TextBox txtNewPass2;
		internal System.Windows.Forms.Button cmdCancel;
		internal System.Windows.Forms.Button cmdNew;
		System.Windows.Forms.Form frmNewUser_Renamed = new System.Windows.Forms.Form();
		internal System.Windows.Forms.Label Label4;
		internal System.Windows.Forms.TextBox txtSmanid;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			this.GroupBox1 = new System.Windows.Forms.GroupBox();
			this.txtSmanid = new System.Windows.Forms.TextBox();
			this.txtSmanid.KeyPress += new KeyPressEventHandler(this.txtsmanid_KeyPress);
			this.txtSmanid.TextChanged += new EventHandler(this.txtSmanid_TextChanged);
			this.Label4 = new System.Windows.Forms.Label();
			this.txtNewPass2 = new System.Windows.Forms.TextBox();
			this.txtNewPass2.KeyPress += new KeyPressEventHandler(this.txtNewPass2_KeyPress);
			this.txtNewPass1 = new System.Windows.Forms.TextBox();
			this.txtNewPass1.KeyPress += new KeyPressEventHandler(this.txtNewPass1_KeyPress);
			this.txtNewUser = new System.Windows.Forms.TextBox();
			this.txtNewUser.KeyPress += new KeyPressEventHandler(this.txtNewUser_KeyPress);
			this.Label3 = new System.Windows.Forms.Label();
			this.Label2 = new System.Windows.Forms.Label();
			this.Label1 = new System.Windows.Forms.Label();
			this.cmdCancel = new System.Windows.Forms.Button();
			this.cmdCancel.Click += new EventHandler(this.cmdCancel_Click);
			this.cmdNew = new System.Windows.Forms.Button();
			this.cmdNew.Click += new EventHandler(this.cmdNew_Click);
			this.GroupBox1.SuspendLayout();
			this.SuspendLayout();
			//
			//GroupBox1
			//
			this.GroupBox1.Controls.AddRange(new System.Windows.Forms.Control[] { this.txtSmanid, this.Label4, this.txtNewPass2, this.txtNewPass1, this.txtNewUser, this.Label3, this.Label2, this.Label1 });
			this.GroupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(9.0), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.GroupBox1.Location = new System.Drawing.Point(8, 8);
			this.GroupBox1.Name = "GroupBox1";
			this.GroupBox1.Size = new System.Drawing.Size(296, 152);
			this.GroupBox1.TabIndex = 0;
			this.GroupBox1.TabStop = false;
			this.GroupBox1.Text = "Enter New Login Details";
			//
			//txtSmanid
			//
			this.txtSmanid.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtSmanid.Location = new System.Drawing.Point(160, 24);
			this.txtSmanid.Name = "txtSmanid";
			this.txtSmanid.Size = new System.Drawing.Size(120, 21);
			this.txtSmanid.TabIndex = 0;
			this.txtSmanid.Text = "";
			//
			//Label4
			//
			this.Label4.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label4.Location = new System.Drawing.Point(40, 24);
			this.Label4.Name = "Label4";
			this.Label4.Size = new System.Drawing.Size(120, 23);
			this.Label4.TabIndex = 3;
			this.Label4.Text = "New SalesMan ID :";
			//
			//txtNewPass2
			//
			this.txtNewPass2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtNewPass2.Location = new System.Drawing.Point(160, 120);
			this.txtNewPass2.Name = "txtNewPass2";
			this.txtNewPass2.PasswordChar = Microsoft.VisualBasic.Strings.ChrW(42);
			this.txtNewPass2.Size = new System.Drawing.Size(120, 21);
			this.txtNewPass2.TabIndex = 3;
			this.txtNewPass2.Text = "";
			//
			//txtNewPass1
			//
			this.txtNewPass1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtNewPass1.Location = new System.Drawing.Point(160, 88);
			this.txtNewPass1.Name = "txtNewPass1";
			this.txtNewPass1.PasswordChar = Microsoft.VisualBasic.Strings.ChrW(42);
			this.txtNewPass1.Size = new System.Drawing.Size(120, 21);
			this.txtNewPass1.TabIndex = 2;
			this.txtNewPass1.Text = "";
			//
			//txtNewUser
			//
			this.txtNewUser.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.txtNewUser.Location = new System.Drawing.Point(160, 56);
			this.txtNewUser.Name = "txtNewUser";
			this.txtNewUser.Size = new System.Drawing.Size(120, 21);
			this.txtNewUser.TabIndex = 1;
			this.txtNewUser.Text = "";
			//
			//Label3
			//
			this.Label3.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label3.Location = new System.Drawing.Point(40, 120);
			this.Label3.Name = "Label3";
			this.Label3.Size = new System.Drawing.Size(120, 23);
			this.Label3.TabIndex = 2;
			this.Label3.Text = "Confirm Password :";
			//
			//Label2
			//
			this.Label2.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label2.Location = new System.Drawing.Point(40, 88);
			this.Label2.Name = "Label2";
			this.Label2.Size = new System.Drawing.Size(112, 23);
			this.Label2.TabIndex = 1;
			this.Label2.Text = "New Password  :";
			//
			//Label1
			//
			this.Label1.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.Label1.Location = new System.Drawing.Point(40, 56);
			this.Label1.Name = "Label1";
			this.Label1.Size = new System.Drawing.Size(112, 23);
			this.Label1.TabIndex = 0;
			this.Label1.Text = "New User Name :";
			//
			//cmdCancel
			//
			this.cmdCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
			this.cmdCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdCancel.ForeColor = System.Drawing.Color.OrangeRed;
			this.cmdCancel.Location = new System.Drawing.Point(200, 168);
			this.cmdCancel.Name = "cmdCancel";
			this.cmdCancel.Size = new System.Drawing.Size(72, 24);
			this.cmdCancel.TabIndex = 5;
			this.cmdCancel.Text = "&Cancel";
			//
			//cmdNew
			//
			this.cmdNew.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.cmdNew.ForeColor = System.Drawing.Color.OrangeRed;
			this.cmdNew.Location = new System.Drawing.Point(120, 168);
			this.cmdNew.Name = "cmdNew";
			this.cmdNew.Size = new System.Drawing.Size(72, 24);
			this.cmdNew.TabIndex = 4;
			this.cmdNew.Text = "&OK";
			//
			//frmNewUser
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.ClientSize = new System.Drawing.Size(312, 200);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.cmdCancel, this.cmdNew, this.GroupBox1 });
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmNewUser";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Create New User";
			this.GroupBox1.ResumeLayout(false);
			this.ResumeLayout(false);
			
		}
		
		#endregion
		
		private void cmdCancel_Click (System.Object sender, System.EventArgs e)
		{
			frmLogin frm3 = new frmLogin();
			this.Close();
			frm3.ShowDialog();
		}
		private void txtsmanid_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				bool user_correct;
				user_correct = false;
				modMain.sql = "select * from login";
				modMain.comm = new System.Data.SqlClient.SqlCommand(modMain.sql, modMain.conn);
				System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter(modMain.comm);
				adapt.Fill(modMain.rslogin, "Login");
				modMain.te1 = Strings.UCase(Strings.Trim(txtSmanid.Text));
				DataRow objdatarow;
				foreach (DataRow tempLoopVar_objdatarow in modMain.rslogin.Tables["Login"].Rows)
				{
					objdatarow = tempLoopVar_objdatarow;
					if (Strings.UCase(System.Convert.ToString(objdatarow["salesmanid"])) == modMain.te1)
					{
						user_correct = true;
					}
				}
				if (user_correct == false)
				{
					objdatarow = null;
					modMain.comm.Dispose();
					modMain.comm = null;
					//rslogin.Dispose()
					//rslogin = Nothing
					adapt.Dispose();
					adapt = null;
					txtNewUser.Focus();
				}
				else
				{
					Interaction.MsgBox("SalesManid " + modMain.te1 + " already exists", 0, null);
					txtSmanid.Focus();
				}
				user_correct = false;
			}
			modMain.te1 = null;
		}
		private void txtNewUser_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				bool user_correct;
				user_correct = false;
				modMain.sql = "select * from login";
				modMain.comm = new System.Data.SqlClient.SqlCommand(modMain.sql, modMain.conn);
				System.Data.SqlClient.SqlDataAdapter adapt = new System.Data.SqlClient.SqlDataAdapter(modMain.comm);
				adapt.Fill(modMain.rslogin, "Login");
				modMain.te2 = Strings.UCase(Strings.Trim(txtNewUser.Text));
				DataRow objdatarow;
				foreach (DataRow tempLoopVar_objdatarow in modMain.rslogin.Tables["Login"].Rows)
				{
					objdatarow = tempLoopVar_objdatarow;
					if (Strings.UCase(System.Convert.ToString(objdatarow["loginid"])) == modMain.te2)
					{
						user_correct = true;
					}
				}
				if (user_correct == false)
				{
					objdatarow = null;
					modMain.comm.Dispose();
					modMain.comm = null;
					//rslogin.Dispose()
					//rslogin = Nothing
					adapt.Dispose();
					adapt = null;
					txtNewPass1.Focus();
				}
				else
				{
					Interaction.MsgBox("User Name " + modMain.te2 + " already exists", 0, null);
					txtNewUser.Focus();
				}
				modMain.te2 = null;
			}
		}
		
		private void txtNewPass1_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				txtNewPass2.Focus();
			}
		}
		private void txtNewPass2_KeyPress (object sender, System.Windows.Forms.KeyPressEventArgs e)
		{
			if (Strings.Asc(e.KeyChar) == 13)
			{
				cmdNew.Focus();
			}
		}
		
		private void cmdNew_Click (System.Object sender, System.EventArgs e)
		{
			modMain.sql = "select * from login";
			modMain.comm = new SqlCommand(modMain.sql, modMain.conn);
			SqlDataAdapter adapt = new SqlDataAdapter(modMain.comm);
			adapt.Fill(modMain.rslogin, "Login");
			modMain.sql = "insert into login (salesmanid,loginid,password,expired) " + "values ('" + Strings.Trim(txtSmanid.Text) + "','" + Strings.LCase(Strings.Trim(txtNewUser.Text)) + "', " + "'" + modMain.encrypt_pass(txtNewPass1.Text) + "','0')";
			
			modMain.comm.CommandType = CommandType.Text;
			modMain.comm.CommandText = modMain.sql;
			adapt = new SqlDataAdapter(modMain.comm);
			try
			{
				adapt.Fill(modMain.rslogin, "login");
				//rslogin.Dispose()
				//adapt.Fill(rslogin, "Login")
				MessageBox.Show("New SalesMan " + Strings.UCase(Strings.Trim(txtSmanid.Text)) + " Details SuccessFully Added");
				adapt.Dispose();
				adapt = null;
				modMain.comm.Dispose();
				modMain.comm = null;
				modMain.sql = null;
				this.Dispose(true);
				frmLogin frm = new frmLogin();
				frm.Show();
				
				
			}
			catch (SqlException Except)
			{
				MessageBox.Show(Except.Message);
			}
		}
		private bool check_user()
		{
			
			return false;
		}
		
		private void txtSmanid_TextChanged (System.Object sender, System.EventArgs e)
		{
			
		}
	}
	
	
	
}
