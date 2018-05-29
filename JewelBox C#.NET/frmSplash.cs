using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	public class frmSplash : System.Windows.Forms.Form
	{
		[STAThread]
		static void Main()
		{
			Application.Run(new frmSplash());
		}
		#region " Windows Form Designer generated code "
		
		public frmSplash() {
			
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
		internal System.Windows.Forms.ProgressBar ProgressBar1;
		public bool ans;
		public int k;
		internal System.Windows.Forms.Timer Timer1;
		internal System.Windows.Forms.Label lblSoftName;
		internal System.Windows.Forms.Label lblCompany;
		internal System.Windows.Forms.Label lblVersion;
		internal System.Windows.Forms.Label lblCopyRight;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			this.components = new System.ComponentModel.Container();
			this.Load += new EventHandler(this.frmSplash_Load);
			System.Configuration.AppSettingsReader configurationAppSettings = new System.Configuration.AppSettingsReader();
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmSplash));
			this.ProgressBar1 = new System.Windows.Forms.ProgressBar();
			this.ProgressBar1.Click += new EventHandler(this.ProgressBar1_Click);
			this.Timer1 = new System.Windows.Forms.Timer(this.components);
			this.Timer1.Tick += new EventHandler(this.Timer1_Tick);
			this.lblSoftName = new System.Windows.Forms.Label();
			this.lblCompany = new System.Windows.Forms.Label();
			this.lblVersion = new System.Windows.Forms.Label();
			this.lblCopyRight = new System.Windows.Forms.Label();
			this.SuspendLayout();
			//
			//ProgressBar1
			//
			this.ProgressBar1.Location = new System.Drawing.Point(4, 190);
			this.ProgressBar1.Name = "ProgressBar1";
			this.ProgressBar1.Size = new System.Drawing.Size(425, 12);
			this.ProgressBar1.TabIndex = 1;
			//
			//Timer1
			//
			this.Timer1.Enabled = ((bool)(configurationAppSettings.GetValue("Timer1.Enabled", typeof(System.Boolean))));
			this.Timer1.Interval = ((int)(configurationAppSettings.GetValue("Timer1.Interval", typeof(System.Int32))));
			//
			//lblSoftName
			//
			this.lblSoftName.BackColor = System.Drawing.Color.Transparent;
			this.lblSoftName.Font = new System.Drawing.Font("Monotype Corsiva", System.Convert.ToSingle(20.25),(System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.lblSoftName.ForeColor = System.Drawing.Color.DodgerBlue;
			this.lblSoftName.Location = new System.Drawing.Point(126, 52);
			this.lblSoftName.Name = "lblSoftName";
			this.lblSoftName.Size = new System.Drawing.Size(294, 35);
			this.lblSoftName.TabIndex = 2;
			this.lblSoftName.Text = "SoftName";
			//
			//lblCompany
			//
			this.lblCompany.BackColor = System.Drawing.Color.Transparent;
			this.lblCompany.Font = new System.Drawing.Font("Monotype Corsiva", System.Convert.ToSingle(11.25), System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.lblCompany.ForeColor = System.Drawing.Color.OrangeRed;
			this.lblCompany.Location = new System.Drawing.Point(25, 20);
			this.lblCompany.Name = "lblCompany";
			this.lblCompany.Size = new System.Drawing.Size(383, 20);
			this.lblCompany.TabIndex = 3;
			this.lblCompany.Text = "Company";
			//
			//lblVersion
			//
			this.lblVersion.BackColor = System.Drawing.Color.Transparent;
			this.lblVersion.Font = new System.Drawing.Font("Times New Roman", System.Convert.ToSingle(12.0), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.lblVersion.ForeColor = System.Drawing.Color.Green;
			this.lblVersion.Location = new System.Drawing.Point(267, 94);
			this.lblVersion.Name = "lblVersion";
			this.lblVersion.Size = new System.Drawing.Size(152, 20);
			this.lblVersion.TabIndex = 4;
			this.lblVersion.Text = "Version";
			//
			//lblCopyRight
			//
			this.lblCopyRight.BackColor = System.Drawing.Color.Transparent;
			this.lblCopyRight.Font = new System.Drawing.Font("Times New Roman", System.Convert.ToSingle(9.0), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.lblCopyRight.ForeColor = System.Drawing.Color.DeepPink;
			this.lblCopyRight.Location = new System.Drawing.Point(8, 213);
			this.lblCopyRight.Name = "lblCopyRight";
			this.lblCopyRight.Size = new System.Drawing.Size(418, 20);
			this.lblCopyRight.TabIndex = 5;
			this.lblCopyRight.Text = "CopyRight";
			//
			//frmSplash
			//
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(434, 242);
			this.ControlBox = false;
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.lblCopyRight, this.lblVersion, this.lblCompany, this.lblSoftName, this.ProgressBar1 });
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.MaximizeBox = false;
			this.MinimizeBox = false;
			this.Name = "frmSplash";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "JewelBox2004 is LOADING";
			this.ResumeLayout(false);
			
		}
		
		
		#endregion
		
		public void Timer1_Tick (System.Object sender, System.EventArgs e)
		{
			k = k + 1;
			if (k < 101)
			{
				ProgressBar1.Value = k;
			}
			else if (k == 101)
			{
				frmLogin frm1 = new frmLogin();
				this.Hide();
				modMain.ConnectDB();
				frm1.ShowDialog();
			}
		}
		
		private void ProgressBar1_Click (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void frmSplash_Load (System.Object sender, System.EventArgs e)
		{
			AssemblyInfo ainfo = new AssemblyInfo();
			lblSoftName.Text = ainfo.AsmName;
			lblCompany.Text = ainfo.Company + "'s";
			lblCopyRight.Text = ainfo.Copyright;
			lblVersion.Text = ainfo.Version;
		}
	}
	
}
