'Copyright (C) 2002 Microsoft Corporation
'All rights reserved.
'THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER 
'EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF 
'MERCHANTIBILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.

'Requires the Trial or Release version of Visual Studio .NET Professional (or greater).

Option Strict On

Public Class frmAbout
	Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

	Public Sub New()
		MyBase.New()

		'This call is required by the Windows Form Designer.
		InitializeComponent()

		'Add any initialization after the InitializeComponent() call

	End Sub

	'Form overrides dispose to clean up the component list.
	Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
		If disposing Then
			If Not (components Is Nothing) Then
				components.Dispose()
			End If
		End If
		MyBase.Dispose(disposing)
	End Sub

	'Required by the Windows Form Designer
	Private components As System.ComponentModel.IContainer

	'NOTE: The following procedure is required by the Windows Form Designer
	'It can be modified using the Windows Form Designer.  
	'Do not modify it using the code editor.
    Friend WithEvents lblTitle As System.Windows.Forms.Label
    Friend WithEvents lblVersion As System.Windows.Forms.Label
    Friend WithEvents cmdOK As System.Windows.Forms.Button
    Friend WithEvents lblCopyright As System.Windows.Forms.Label
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmAbout))
        Me.lblTitle = New System.Windows.Forms.Label()
        Me.lblVersion = New System.Windows.Forms.Label()
        Me.cmdOK = New System.Windows.Forms.Button()
        Me.lblCopyright = New System.Windows.Forms.Label()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'lblTitle
        '
        Me.lblTitle.AccessibleDescription = CType(resources.GetObject("lblTitle.AccessibleDescription"), String)
        Me.lblTitle.AccessibleName = CType(resources.GetObject("lblTitle.AccessibleName"), String)
        Me.lblTitle.Anchor = CType(resources.GetObject("lblTitle.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.lblTitle.AutoSize = CType(resources.GetObject("lblTitle.AutoSize"), Boolean)
        Me.lblTitle.Dock = CType(resources.GetObject("lblTitle.Dock"), System.Windows.Forms.DockStyle)
        Me.lblTitle.Enabled = CType(resources.GetObject("lblTitle.Enabled"), Boolean)
        Me.lblTitle.Font = CType(resources.GetObject("lblTitle.Font"), System.Drawing.Font)
        Me.lblTitle.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.lblTitle.Image = CType(resources.GetObject("lblTitle.Image"), System.Drawing.Image)
        Me.lblTitle.ImageAlign = CType(resources.GetObject("lblTitle.ImageAlign"), System.Drawing.ContentAlignment)
        Me.lblTitle.ImageIndex = CType(resources.GetObject("lblTitle.ImageIndex"), Integer)
        Me.lblTitle.ImeMode = CType(resources.GetObject("lblTitle.ImeMode"), System.Windows.Forms.ImeMode)
        Me.lblTitle.Location = CType(resources.GetObject("lblTitle.Location"), System.Drawing.Point)
        Me.lblTitle.Name = "lblTitle"
        Me.lblTitle.RightToLeft = CType(resources.GetObject("lblTitle.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.lblTitle.Size = CType(resources.GetObject("lblTitle.Size"), System.Drawing.Size)
        Me.lblTitle.TabIndex = CType(resources.GetObject("lblTitle.TabIndex"), Integer)
        Me.lblTitle.Text = resources.GetString("lblTitle.Text")
        Me.lblTitle.TextAlign = CType(resources.GetObject("lblTitle.TextAlign"), System.Drawing.ContentAlignment)
        Me.lblTitle.Visible = CType(resources.GetObject("lblTitle.Visible"), Boolean)
        '
        'lblVersion
        '
        Me.lblVersion.AccessibleDescription = CType(resources.GetObject("lblVersion.AccessibleDescription"), String)
        Me.lblVersion.AccessibleName = CType(resources.GetObject("lblVersion.AccessibleName"), String)
        Me.lblVersion.Anchor = CType(resources.GetObject("lblVersion.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.lblVersion.AutoSize = CType(resources.GetObject("lblVersion.AutoSize"), Boolean)
        Me.lblVersion.Dock = CType(resources.GetObject("lblVersion.Dock"), System.Windows.Forms.DockStyle)
        Me.lblVersion.Enabled = CType(resources.GetObject("lblVersion.Enabled"), Boolean)
        Me.lblVersion.Font = CType(resources.GetObject("lblVersion.Font"), System.Drawing.Font)
        Me.lblVersion.ForeColor = System.Drawing.Color.OrangeRed
        Me.lblVersion.Image = CType(resources.GetObject("lblVersion.Image"), System.Drawing.Image)
        Me.lblVersion.ImageAlign = CType(resources.GetObject("lblVersion.ImageAlign"), System.Drawing.ContentAlignment)
        Me.lblVersion.ImageIndex = CType(resources.GetObject("lblVersion.ImageIndex"), Integer)
        Me.lblVersion.ImeMode = CType(resources.GetObject("lblVersion.ImeMode"), System.Windows.Forms.ImeMode)
        Me.lblVersion.Location = CType(resources.GetObject("lblVersion.Location"), System.Drawing.Point)
        Me.lblVersion.Name = "lblVersion"
        Me.lblVersion.RightToLeft = CType(resources.GetObject("lblVersion.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.lblVersion.Size = CType(resources.GetObject("lblVersion.Size"), System.Drawing.Size)
        Me.lblVersion.TabIndex = CType(resources.GetObject("lblVersion.TabIndex"), Integer)
        Me.lblVersion.Text = resources.GetString("lblVersion.Text")
        Me.lblVersion.TextAlign = CType(resources.GetObject("lblVersion.TextAlign"), System.Drawing.ContentAlignment)
        Me.lblVersion.Visible = CType(resources.GetObject("lblVersion.Visible"), Boolean)
        '
        'cmdOK
        '
        Me.cmdOK.AccessibleDescription = CType(resources.GetObject("cmdOK.AccessibleDescription"), String)
        Me.cmdOK.AccessibleName = CType(resources.GetObject("cmdOK.AccessibleName"), String)
        Me.cmdOK.Anchor = CType(resources.GetObject("cmdOK.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.cmdOK.BackgroundImage = CType(resources.GetObject("cmdOK.BackgroundImage"), System.Drawing.Image)
        Me.cmdOK.DialogResult = System.Windows.Forms.DialogResult.OK
        Me.cmdOK.Dock = CType(resources.GetObject("cmdOK.Dock"), System.Windows.Forms.DockStyle)
        Me.cmdOK.Enabled = CType(resources.GetObject("cmdOK.Enabled"), Boolean)
        Me.cmdOK.FlatStyle = CType(resources.GetObject("cmdOK.FlatStyle"), System.Windows.Forms.FlatStyle)
        Me.cmdOK.Font = CType(resources.GetObject("cmdOK.Font"), System.Drawing.Font)
        Me.cmdOK.Image = CType(resources.GetObject("cmdOK.Image"), System.Drawing.Image)
        Me.cmdOK.ImageAlign = CType(resources.GetObject("cmdOK.ImageAlign"), System.Drawing.ContentAlignment)
        Me.cmdOK.ImageIndex = CType(resources.GetObject("cmdOK.ImageIndex"), Integer)
        Me.cmdOK.ImeMode = CType(resources.GetObject("cmdOK.ImeMode"), System.Windows.Forms.ImeMode)
        Me.cmdOK.Location = CType(resources.GetObject("cmdOK.Location"), System.Drawing.Point)
        Me.cmdOK.Name = "cmdOK"
        Me.cmdOK.RightToLeft = CType(resources.GetObject("cmdOK.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.cmdOK.Size = CType(resources.GetObject("cmdOK.Size"), System.Drawing.Size)
        Me.cmdOK.TabIndex = CType(resources.GetObject("cmdOK.TabIndex"), Integer)
        Me.cmdOK.Text = resources.GetString("cmdOK.Text")
        Me.cmdOK.TextAlign = CType(resources.GetObject("cmdOK.TextAlign"), System.Drawing.ContentAlignment)
        Me.cmdOK.Visible = CType(resources.GetObject("cmdOK.Visible"), Boolean)
        '
        'lblCopyright
        '
        Me.lblCopyright.AccessibleDescription = CType(resources.GetObject("lblCopyright.AccessibleDescription"), String)
        Me.lblCopyright.AccessibleName = CType(resources.GetObject("lblCopyright.AccessibleName"), String)
        Me.lblCopyright.Anchor = CType(resources.GetObject("lblCopyright.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.lblCopyright.AutoSize = CType(resources.GetObject("lblCopyright.AutoSize"), Boolean)
        Me.lblCopyright.Dock = CType(resources.GetObject("lblCopyright.Dock"), System.Windows.Forms.DockStyle)
        Me.lblCopyright.Enabled = CType(resources.GetObject("lblCopyright.Enabled"), Boolean)
        Me.lblCopyright.Font = CType(resources.GetObject("lblCopyright.Font"), System.Drawing.Font)
        Me.lblCopyright.ForeColor = System.Drawing.Color.Green
        Me.lblCopyright.Image = CType(resources.GetObject("lblCopyright.Image"), System.Drawing.Image)
        Me.lblCopyright.ImageAlign = CType(resources.GetObject("lblCopyright.ImageAlign"), System.Drawing.ContentAlignment)
        Me.lblCopyright.ImageIndex = CType(resources.GetObject("lblCopyright.ImageIndex"), Integer)
        Me.lblCopyright.ImeMode = CType(resources.GetObject("lblCopyright.ImeMode"), System.Windows.Forms.ImeMode)
        Me.lblCopyright.Location = CType(resources.GetObject("lblCopyright.Location"), System.Drawing.Point)
        Me.lblCopyright.Name = "lblCopyright"
        Me.lblCopyright.RightToLeft = CType(resources.GetObject("lblCopyright.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.lblCopyright.Size = CType(resources.GetObject("lblCopyright.Size"), System.Drawing.Size)
        Me.lblCopyright.TabIndex = CType(resources.GetObject("lblCopyright.TabIndex"), Integer)
        Me.lblCopyright.Text = resources.GetString("lblCopyright.Text")
        Me.lblCopyright.TextAlign = CType(resources.GetObject("lblCopyright.TextAlign"), System.Drawing.ContentAlignment)
        Me.lblCopyright.Visible = CType(resources.GetObject("lblCopyright.Visible"), Boolean)
        '
        'PictureBox1
        '
        Me.PictureBox1.AccessibleDescription = CType(resources.GetObject("PictureBox1.AccessibleDescription"), String)
        Me.PictureBox1.AccessibleName = CType(resources.GetObject("PictureBox1.AccessibleName"), String)
        Me.PictureBox1.Anchor = CType(resources.GetObject("PictureBox1.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.PictureBox1.BackgroundImage = CType(resources.GetObject("PictureBox1.BackgroundImage"), System.Drawing.Image)
        Me.PictureBox1.Dock = CType(resources.GetObject("PictureBox1.Dock"), System.Windows.Forms.DockStyle)
        Me.PictureBox1.Enabled = CType(resources.GetObject("PictureBox1.Enabled"), Boolean)
        Me.PictureBox1.Font = CType(resources.GetObject("PictureBox1.Font"), System.Drawing.Font)
        Me.PictureBox1.Image = CType(resources.GetObject("PictureBox1.Image"), System.Drawing.Bitmap)
        Me.PictureBox1.ImeMode = CType(resources.GetObject("PictureBox1.ImeMode"), System.Windows.Forms.ImeMode)
        Me.PictureBox1.Location = CType(resources.GetObject("PictureBox1.Location"), System.Drawing.Point)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.RightToLeft = CType(resources.GetObject("PictureBox1.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.PictureBox1.Size = CType(resources.GetObject("PictureBox1.Size"), System.Drawing.Size)
        Me.PictureBox1.SizeMode = CType(resources.GetObject("PictureBox1.SizeMode"), System.Windows.Forms.PictureBoxSizeMode)
        Me.PictureBox1.TabIndex = CType(resources.GetObject("PictureBox1.TabIndex"), Integer)
        Me.PictureBox1.TabStop = False
        Me.PictureBox1.Text = resources.GetString("PictureBox1.Text")
        Me.PictureBox1.Visible = CType(resources.GetObject("PictureBox1.Visible"), Boolean)
        '
        'Label1
        '
        Me.Label1.AccessibleDescription = CType(resources.GetObject("Label1.AccessibleDescription"), String)
        Me.Label1.AccessibleName = CType(resources.GetObject("Label1.AccessibleName"), String)
        Me.Label1.Anchor = CType(resources.GetObject("Label1.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.Label1.AutoSize = CType(resources.GetObject("Label1.AutoSize"), Boolean)
        Me.Label1.Dock = CType(resources.GetObject("Label1.Dock"), System.Windows.Forms.DockStyle)
        Me.Label1.Enabled = CType(resources.GetObject("Label1.Enabled"), Boolean)
        Me.Label1.Font = CType(resources.GetObject("Label1.Font"), System.Drawing.Font)
        Me.Label1.ForeColor = System.Drawing.Color.Black
        Me.Label1.Image = CType(resources.GetObject("Label1.Image"), System.Drawing.Image)
        Me.Label1.ImageAlign = CType(resources.GetObject("Label1.ImageAlign"), System.Drawing.ContentAlignment)
        Me.Label1.ImageIndex = CType(resources.GetObject("Label1.ImageIndex"), Integer)
        Me.Label1.ImeMode = CType(resources.GetObject("Label1.ImeMode"), System.Windows.Forms.ImeMode)
        Me.Label1.Location = CType(resources.GetObject("Label1.Location"), System.Drawing.Point)
        Me.Label1.Name = "Label1"
        Me.Label1.RightToLeft = CType(resources.GetObject("Label1.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.Label1.Size = CType(resources.GetObject("Label1.Size"), System.Drawing.Size)
        Me.Label1.TabIndex = CType(resources.GetObject("Label1.TabIndex"), Integer)
        Me.Label1.Text = resources.GetString("Label1.Text")
        Me.Label1.TextAlign = CType(resources.GetObject("Label1.TextAlign"), System.Drawing.ContentAlignment)
        Me.Label1.Visible = CType(resources.GetObject("Label1.Visible"), Boolean)
        '
        'Label2
        '
        Me.Label2.AccessibleDescription = CType(resources.GetObject("Label2.AccessibleDescription"), String)
        Me.Label2.AccessibleName = CType(resources.GetObject("Label2.AccessibleName"), String)
        Me.Label2.Anchor = CType(resources.GetObject("Label2.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.Label2.AutoSize = CType(resources.GetObject("Label2.AutoSize"), Boolean)
        Me.Label2.Dock = CType(resources.GetObject("Label2.Dock"), System.Windows.Forms.DockStyle)
        Me.Label2.Enabled = CType(resources.GetObject("Label2.Enabled"), Boolean)
        Me.Label2.Font = CType(resources.GetObject("Label2.Font"), System.Drawing.Font)
        Me.Label2.ForeColor = System.Drawing.Color.FromArgb(CType(192, Byte), CType(0, Byte), CType(192, Byte))
        Me.Label2.Image = CType(resources.GetObject("Label2.Image"), System.Drawing.Image)
        Me.Label2.ImageAlign = CType(resources.GetObject("Label2.ImageAlign"), System.Drawing.ContentAlignment)
        Me.Label2.ImageIndex = CType(resources.GetObject("Label2.ImageIndex"), Integer)
        Me.Label2.ImeMode = CType(resources.GetObject("Label2.ImeMode"), System.Windows.Forms.ImeMode)
        Me.Label2.Location = CType(resources.GetObject("Label2.Location"), System.Drawing.Point)
        Me.Label2.Name = "Label2"
        Me.Label2.RightToLeft = CType(resources.GetObject("Label2.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.Label2.Size = CType(resources.GetObject("Label2.Size"), System.Drawing.Size)
        Me.Label2.TabIndex = CType(resources.GetObject("Label2.TabIndex"), Integer)
        Me.Label2.Text = resources.GetString("Label2.Text")
        Me.Label2.TextAlign = CType(resources.GetObject("Label2.TextAlign"), System.Drawing.ContentAlignment)
        Me.Label2.Visible = CType(resources.GetObject("Label2.Visible"), Boolean)
        '
        'frmAbout
        '
        Me.AcceptButton = Me.cmdOK
        Me.AccessibleDescription = CType(resources.GetObject("$this.AccessibleDescription"), String)
        Me.AccessibleName = CType(resources.GetObject("$this.AccessibleName"), String)
        Me.Anchor = CType(resources.GetObject("$this.Anchor"), System.Windows.Forms.AnchorStyles)
        Me.AutoScaleBaseSize = CType(resources.GetObject("$this.AutoScaleBaseSize"), System.Drawing.Size)
        Me.AutoScroll = CType(resources.GetObject("$this.AutoScroll"), Boolean)
        Me.AutoScrollMargin = CType(resources.GetObject("$this.AutoScrollMargin"), System.Drawing.Size)
        Me.AutoScrollMinSize = CType(resources.GetObject("$this.AutoScrollMinSize"), System.Drawing.Size)
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Image)
        Me.CancelButton = Me.cmdOK
        Me.ClientSize = CType(resources.GetObject("$this.ClientSize"), System.Drawing.Size)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Label2, Me.Label1, Me.PictureBox1, Me.lblCopyright, Me.cmdOK, Me.lblVersion, Me.lblTitle})
        Me.Dock = CType(resources.GetObject("$this.Dock"), System.Windows.Forms.DockStyle)
        Me.Enabled = CType(resources.GetObject("$this.Enabled"), Boolean)
        Me.Font = CType(resources.GetObject("$this.Font"), System.Drawing.Font)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.ImeMode = CType(resources.GetObject("$this.ImeMode"), System.Windows.Forms.ImeMode)
        Me.Location = CType(resources.GetObject("$this.Location"), System.Drawing.Point)
        Me.MaximizeBox = False
        Me.MaximumSize = CType(resources.GetObject("$this.MaximumSize"), System.Drawing.Size)
        Me.MinimizeBox = False
        Me.MinimumSize = CType(resources.GetObject("$this.MinimumSize"), System.Drawing.Size)
        Me.Name = "frmAbout"
        Me.RightToLeft = CType(resources.GetObject("$this.RightToLeft"), System.Windows.Forms.RightToLeft)
        Me.ShowInTaskbar = False
        Me.StartPosition = CType(resources.GetObject("$this.StartPosition"), System.Windows.Forms.FormStartPosition)
        Me.Text = resources.GetString("$this.Text")
        Me.Visible = CType(resources.GetObject("$this.Visible"), Boolean)
        Me.ResumeLayout(False)

    End Sub

#End Region

	' Note: Because this form is opened by frmMain using the ShowDialog command, we simply set the
	' DialogResult property of cmdOK to OK which causes the form to close when clicked.
	Private Sub frmAbout_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
		Try
			' Set this Form's Text & Icon properties by using values from the parent form
			Me.Text = "About " & Me.Owner.Text
            'Me.Icon = Me.Owner.Icon

			' Set this Form's Picture Box's image using the parent's icon 
			' However, we need to convert it to a Bitmap since the Picture Box Control
			' will not accept a raw Icon.
            'Me.pbIcon.Image = Me.Owner.Icon.ToBitmap()

			' Set the labels identitying the Title, Version, and Description by
			' reading Assembly meta-data originally entered in the AssemblyInfo.vb file
			' using the AssemblyInfo class defined in the same file
			Dim ainfo As New AssemblyInfo()

			Me.lblTitle.Text = ainfo.Title
			Me.lblVersion.Text = String.Format("Version {0}", ainfo.Version)
			Me.lblCopyright.Text = ainfo.Copyright
            'Me.lblDescription.Text = ainfo.Description
            'Me.lblCodebase.Text = ainfo.CodeBase

		Catch exp As System.Exception
			' This catch will trap any unexpected error.
			MessageBox.Show(exp.Message, Me.Text, MessageBoxButtons.OK, MessageBoxIcon.Stop)

		End Try
	End Sub


End Class
