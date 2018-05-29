using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;

namespace JewelBox2004
{
	//Copyright (C) 2002 Microsoft Corporation
	//All rights reserved.
	//THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
	//EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF
	//MERCHANTIBILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
	
	//Requires the Trial or Release version of Visual Studio .NET Professional (or greater).
	
	
	public class frmAbout : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmAbout() {
			
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
		internal System.Windows.Forms.Label lblTitle;
		internal System.Windows.Forms.Label lblVersion;
		internal System.Windows.Forms.Button cmdOK;
		internal System.Windows.Forms.Label lblCopyright;
		internal System.Windows.Forms.PictureBox PictureBox1;
		internal System.Windows.Forms.Label Label1;
		internal System.Windows.Forms.Label Label2;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmAbout));
			this.lblTitle = new System.Windows.Forms.Label();
			this.Load += new EventHandler(this.frmAbout_Load);
			this.lblVersion = new System.Windows.Forms.Label();
			this.cmdOK = new System.Windows.Forms.Button();
			this.lblCopyright = new System.Windows.Forms.Label();
			this.PictureBox1 = new System.Windows.Forms.PictureBox();
			this.Label1 = new System.Windows.Forms.Label();
			this.Label2 = new System.Windows.Forms.Label();
			this.SuspendLayout();
			//
			//lblTitle
			//
			this.lblTitle.AccessibleDescription = System.Convert.ToString(resources.GetObject("lblTitle.AccessibleDescription"));
			this.lblTitle.AccessibleName = System.Convert.ToString(resources.GetObject("lblTitle.AccessibleName"));
			this.lblTitle.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("lblTitle.Anchor")));
			this.lblTitle.AutoSize = ((bool)(resources.GetObject("lblTitle.AutoSize")));
			this.lblTitle.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("lblTitle.Dock")));
			this.lblTitle.Enabled = ((bool)(resources.GetObject("lblTitle.Enabled")));
			this.lblTitle.Font = ((System.Drawing.Font)(resources.GetObject("lblTitle.Font")));
			this.lblTitle.ForeColor = System.Drawing.SystemColors.ActiveCaption;
			this.lblTitle.Image = ((System.Drawing.Image)(resources.GetObject("lblTitle.Image")));
			this.lblTitle.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblTitle.ImageAlign")));
			this.lblTitle.ImageIndex = ((int)(resources.GetObject("lblTitle.ImageIndex")));
			this.lblTitle.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("lblTitle.ImeMode")));
			this.lblTitle.Location = ((System.Drawing.Point)(resources.GetObject("lblTitle.Location")));
			this.lblTitle.Name = "lblTitle";
			this.lblTitle.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("lblTitle.RightToLeft")));
			this.lblTitle.Size = ((System.Drawing.Size)(resources.GetObject("lblTitle.Size")));
			this.lblTitle.TabIndex = ((int)(resources.GetObject("lblTitle.TabIndex")));
			this.lblTitle.Text = resources.GetString("lblTitle.Text");
			this.lblTitle.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblTitle.TextAlign")));
			this.lblTitle.Visible = ((bool)(resources.GetObject("lblTitle.Visible")));
			//
			//lblVersion
			//
			this.lblVersion.AccessibleDescription = System.Convert.ToString(resources.GetObject("lblVersion.AccessibleDescription"));
			this.lblVersion.AccessibleName = System.Convert.ToString(resources.GetObject("lblVersion.AccessibleName"));
			this.lblVersion.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("lblVersion.Anchor")));
			this.lblVersion.AutoSize = ((bool)(resources.GetObject("lblVersion.AutoSize")));
			this.lblVersion.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("lblVersion.Dock")));
			this.lblVersion.Enabled = ((bool)(resources.GetObject("lblVersion.Enabled")));
			this.lblVersion.Font = ((System.Drawing.Font)(resources.GetObject("lblVersion.Font")));
			this.lblVersion.ForeColor = System.Drawing.Color.OrangeRed;
			this.lblVersion.Image = ((System.Drawing.Image)(resources.GetObject("lblVersion.Image")));
			this.lblVersion.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblVersion.ImageAlign")));
			this.lblVersion.ImageIndex = ((int)(resources.GetObject("lblVersion.ImageIndex")));
			this.lblVersion.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("lblVersion.ImeMode")));
			this.lblVersion.Location = ((System.Drawing.Point)(resources.GetObject("lblVersion.Location")));
			this.lblVersion.Name = "lblVersion";
			this.lblVersion.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("lblVersion.RightToLeft")));
			this.lblVersion.Size = ((System.Drawing.Size)(resources.GetObject("lblVersion.Size")));
			this.lblVersion.TabIndex = ((int)(resources.GetObject("lblVersion.TabIndex")));
			this.lblVersion.Text = resources.GetString("lblVersion.Text");
			this.lblVersion.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblVersion.TextAlign")));
			this.lblVersion.Visible = ((bool)(resources.GetObject("lblVersion.Visible")));
			//
			//cmdOK
			//
			this.cmdOK.AccessibleDescription = System.Convert.ToString(resources.GetObject("cmdOK.AccessibleDescription"));
			this.cmdOK.AccessibleName = System.Convert.ToString(resources.GetObject("cmdOK.AccessibleName"));
			this.cmdOK.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("cmdOK.Anchor")));
			this.cmdOK.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("cmdOK.BackgroundImage")));
			this.cmdOK.DialogResult = System.Windows.Forms.DialogResult.OK;
			this.cmdOK.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("cmdOK.Dock")));
			this.cmdOK.Enabled = ((bool)(resources.GetObject("cmdOK.Enabled")));
			this.cmdOK.FlatStyle = ((System.Windows.Forms.FlatStyle)(resources.GetObject("cmdOK.FlatStyle")));
			this.cmdOK.Font = ((System.Drawing.Font)(resources.GetObject("cmdOK.Font")));
			this.cmdOK.Image = ((System.Drawing.Image)(resources.GetObject("cmdOK.Image")));
			this.cmdOK.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("cmdOK.ImageAlign")));
			this.cmdOK.ImageIndex = ((int)(resources.GetObject("cmdOK.ImageIndex")));
			this.cmdOK.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("cmdOK.ImeMode")));
			this.cmdOK.Location = ((System.Drawing.Point)(resources.GetObject("cmdOK.Location")));
			this.cmdOK.Name = "cmdOK";
			this.cmdOK.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("cmdOK.RightToLeft")));
			this.cmdOK.Size = ((System.Drawing.Size)(resources.GetObject("cmdOK.Size")));
			this.cmdOK.TabIndex = ((int)(resources.GetObject("cmdOK.TabIndex")));
			this.cmdOK.Text = resources.GetString("cmdOK.Text");
			this.cmdOK.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("cmdOK.TextAlign")));
			this.cmdOK.Visible = ((bool)(resources.GetObject("cmdOK.Visible")));
			//
			//lblCopyright
			//
			this.lblCopyright.AccessibleDescription = System.Convert.ToString(resources.GetObject("lblCopyright.AccessibleDescription"));
			this.lblCopyright.AccessibleName = System.Convert.ToString(resources.GetObject("lblCopyright.AccessibleName"));
			this.lblCopyright.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("lblCopyright.Anchor")));
			this.lblCopyright.AutoSize = ((bool)(resources.GetObject("lblCopyright.AutoSize")));
			this.lblCopyright.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("lblCopyright.Dock")));
			this.lblCopyright.Enabled = ((bool)(resources.GetObject("lblCopyright.Enabled")));
			this.lblCopyright.Font = ((System.Drawing.Font)(resources.GetObject("lblCopyright.Font")));
			this.lblCopyright.ForeColor = System.Drawing.Color.Green;
			this.lblCopyright.Image = ((System.Drawing.Image)(resources.GetObject("lblCopyright.Image")));
			this.lblCopyright.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblCopyright.ImageAlign")));
			this.lblCopyright.ImageIndex = ((int)(resources.GetObject("lblCopyright.ImageIndex")));
			this.lblCopyright.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("lblCopyright.ImeMode")));
			this.lblCopyright.Location = ((System.Drawing.Point)(resources.GetObject("lblCopyright.Location")));
			this.lblCopyright.Name = "lblCopyright";
			this.lblCopyright.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("lblCopyright.RightToLeft")));
			this.lblCopyright.Size = ((System.Drawing.Size)(resources.GetObject("lblCopyright.Size")));
			this.lblCopyright.TabIndex = ((int)(resources.GetObject("lblCopyright.TabIndex")));
			this.lblCopyright.Text = resources.GetString("lblCopyright.Text");
			this.lblCopyright.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("lblCopyright.TextAlign")));
			this.lblCopyright.Visible = ((bool)(resources.GetObject("lblCopyright.Visible")));
			//
			//PictureBox1
			//
			this.PictureBox1.AccessibleDescription = System.Convert.ToString(resources.GetObject("PictureBox1.AccessibleDescription"));
			this.PictureBox1.AccessibleName = System.Convert.ToString(resources.GetObject("PictureBox1.AccessibleName"));
			this.PictureBox1.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("PictureBox1.Anchor")));
			this.PictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("PictureBox1.BackgroundImage")));
			this.PictureBox1.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("PictureBox1.Dock")));
			this.PictureBox1.Enabled = ((bool)(resources.GetObject("PictureBox1.Enabled")));
			this.PictureBox1.Font = ((System.Drawing.Font)(resources.GetObject("PictureBox1.Font")));
			this.PictureBox1.Image = ((System.Drawing.Bitmap)(resources.GetObject("PictureBox1.Image")));
			this.PictureBox1.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("PictureBox1.ImeMode")));
			this.PictureBox1.Location = ((System.Drawing.Point)(resources.GetObject("PictureBox1.Location")));
			this.PictureBox1.Name = "PictureBox1";
			this.PictureBox1.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("PictureBox1.RightToLeft")));
			this.PictureBox1.Size = ((System.Drawing.Size)(resources.GetObject("PictureBox1.Size")));
			this.PictureBox1.SizeMode = ((System.Windows.Forms.PictureBoxSizeMode)(resources.GetObject("PictureBox1.SizeMode")));
			this.PictureBox1.TabIndex = ((int)(resources.GetObject("PictureBox1.TabIndex")));
			this.PictureBox1.TabStop = false;
			this.PictureBox1.Text = resources.GetString("PictureBox1.Text");
			this.PictureBox1.Visible = ((bool)(resources.GetObject("PictureBox1.Visible")));
			//
			//Label1
			//
			this.Label1.AccessibleDescription = System.Convert.ToString(resources.GetObject("Label1.AccessibleDescription"));
			this.Label1.AccessibleName = System.Convert.ToString(resources.GetObject("Label1.AccessibleName"));
			this.Label1.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("Label1.Anchor")));
			this.Label1.AutoSize = ((bool)(resources.GetObject("Label1.AutoSize")));
			this.Label1.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("Label1.Dock")));
			this.Label1.Enabled = ((bool)(resources.GetObject("Label1.Enabled")));
			this.Label1.Font = ((System.Drawing.Font)(resources.GetObject("Label1.Font")));
			this.Label1.ForeColor = System.Drawing.Color.Black;
			this.Label1.Image = ((System.Drawing.Image)(resources.GetObject("Label1.Image")));
			this.Label1.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("Label1.ImageAlign")));
			this.Label1.ImageIndex = ((int)(resources.GetObject("Label1.ImageIndex")));
			this.Label1.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("Label1.ImeMode")));
			this.Label1.Location = ((System.Drawing.Point)(resources.GetObject("Label1.Location")));
			this.Label1.Name = "Label1";
			this.Label1.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("Label1.RightToLeft")));
			this.Label1.Size = ((System.Drawing.Size)(resources.GetObject("Label1.Size")));
			this.Label1.TabIndex = ((int)(resources.GetObject("Label1.TabIndex")));
			this.Label1.Text = resources.GetString("Label1.Text");
			this.Label1.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("Label1.TextAlign")));
			this.Label1.Visible = ((bool)(resources.GetObject("Label1.Visible")));
			//
			//Label2
			//
			this.Label2.AccessibleDescription = System.Convert.ToString(resources.GetObject("Label2.AccessibleDescription"));
			this.Label2.AccessibleName = System.Convert.ToString(resources.GetObject("Label2.AccessibleName"));
			this.Label2.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("Label2.Anchor")));
			this.Label2.AutoSize = ((bool)(resources.GetObject("Label2.AutoSize")));
			this.Label2.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("Label2.Dock")));
			this.Label2.Enabled = ((bool)(resources.GetObject("Label2.Enabled")));
			this.Label2.Font = ((System.Drawing.Font)(resources.GetObject("Label2.Font")));
			this.Label2.ForeColor = System.Drawing.Color.FromArgb(((byte)(192)),((byte)(0)),((byte)(192)));
			this.Label2.Image = ((System.Drawing.Image)(resources.GetObject("Label2.Image")));
			this.Label2.ImageAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("Label2.ImageAlign")));
			this.Label2.ImageIndex = ((int)(resources.GetObject("Label2.ImageIndex")));
			this.Label2.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("Label2.ImeMode")));
			this.Label2.Location = ((System.Drawing.Point)(resources.GetObject("Label2.Location")));
			this.Label2.Name = "Label2";
			this.Label2.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("Label2.RightToLeft")));
			this.Label2.Size = ((System.Drawing.Size)(resources.GetObject("Label2.Size")));
			this.Label2.TabIndex = ((int)(resources.GetObject("Label2.TabIndex")));
			this.Label2.Text = resources.GetString("Label2.Text");
			this.Label2.TextAlign = ((System.Drawing.ContentAlignment)(resources.GetObject("Label2.TextAlign")));
			this.Label2.Visible = ((bool)(resources.GetObject("Label2.Visible")));
			//
			//frmAbout
			//
			this.AcceptButton = this.cmdOK;
			this.AccessibleDescription = System.Convert.ToString(resources.GetObject("$this.AccessibleDescription"));
			this.AccessibleName = System.Convert.ToString(resources.GetObject("$this.AccessibleName"));
			this.Anchor = ((System.Windows.Forms.AnchorStyles)(resources.GetObject("$this.Anchor")));
			this.AutoScaleBaseSize = ((System.Drawing.Size)(resources.GetObject("$this.AutoScaleBaseSize")));
			this.AutoScroll = ((bool)(resources.GetObject("$this.AutoScroll")));
			this.AutoScrollMargin = ((System.Drawing.Size)(resources.GetObject("$this.AutoScrollMargin")));
			this.AutoScrollMinSize = ((System.Drawing.Size)(resources.GetObject("$this.AutoScrollMinSize")));
			this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
			this.CancelButton = this.cmdOK;
			this.ClientSize = ((System.Drawing.Size)(resources.GetObject("$this.ClientSize")));
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.Label2, this.Label1, this.PictureBox1, this.lblCopyright, this.cmdOK, this.lblVersion, this.lblTitle });
			this.Dock = ((System.Windows.Forms.DockStyle)(resources.GetObject("$this.Dock")));
			this.Enabled = ((bool)(resources.GetObject("$this.Enabled")));
			this.Font = ((System.Drawing.Font)(resources.GetObject("$this.Font")));
			this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.ImeMode = ((System.Windows.Forms.ImeMode)(resources.GetObject("$this.ImeMode")));
			this.Location = ((System.Drawing.Point)(resources.GetObject("$this.Location")));
			this.MaximizeBox = false;
			this.MaximumSize = ((System.Drawing.Size)(resources.GetObject("$this.MaximumSize")));
			this.MinimizeBox = false;
			this.MinimumSize = ((System.Drawing.Size)(resources.GetObject("$this.MinimumSize")));
			this.Name = "frmAbout";
			this.RightToLeft = ((System.Windows.Forms.RightToLeft)(resources.GetObject("$this.RightToLeft")));
			this.ShowInTaskbar = false;
			this.StartPosition = ((System.Windows.Forms.FormStartPosition)(resources.GetObject("$this.StartPosition")));
			this.Text = resources.GetString("$this.Text");
			this.Visible = ((bool)(resources.GetObject("$this.Visible")));
			this.ResumeLayout(false);
			
		}
		
		#endregion
		
		// Note: Because this form is opened by frmMain using the ShowDialog command, we simply set the
		// DialogResult property of cmdOK to OK which causes the form to close when clicked.
		private void frmAbout_Load (System.Object sender, System.EventArgs e)
		{
			try
			{
				// Set this Form's Text & Icon properties by using values from the parent form
				this.Text = "About " + this.Owner.Text;
				//Me.Icon = Me.Owner.Icon
				
				// Set this Form's Picture Box's image using the parent's icon
				// However, we need to convert it to a Bitmap since the Picture Box Control
				// will not accept a raw Icon.
				//Me.pbIcon.Image = Me.Owner.Icon.ToBitmap()
				
				// Set the labels identitying the Title, Version, and Description by
				// reading Assembly meta-data originally entered in the AssemblyInfo.vb file
				// using the AssemblyInfo class defined in the same file
				AssemblyInfo ainfo = new AssemblyInfo();
				
				this.lblTitle.Text = ainfo.Title;
				this.lblVersion.Text = string.Format("Version {0}", ainfo.Version);
				this.lblCopyright.Text = ainfo.Copyright;
				//Me.lblDescription.Text = ainfo.Description
				//Me.lblCodebase.Text = ainfo.CodeBase
				
			}
			catch (System.Exception exp)
			{
				// This catch will trap any unexpected error.
				MessageBox.Show(exp.Message, this.Text, MessageBoxButtons.OK, MessageBoxIcon.Stop);
				
			}
		}
		
		
	}
	
}
