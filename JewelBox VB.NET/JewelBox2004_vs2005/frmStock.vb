Public Class frmStock
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
    Friend WithEvents optGold As System.Windows.Forms.RadioButton
    Friend WithEvents optSilver As System.Windows.Forms.RadioButton
    Friend WithEvents cboType As System.Windows.Forms.ComboBox
    Friend WithEvents cboCode As System.Windows.Forms.ComboBox
    Friend WithEvents txtDescription As System.Windows.Forms.TextBox
    Friend WithEvents txtGrossWT As System.Windows.Forms.TextBox
    Friend WithEvents txtStoneWT As System.Windows.Forms.TextBox
    Friend WithEvents txtGrossAMT As System.Windows.Forms.TextBox
    Friend WithEvents txtStoneAMT As System.Windows.Forms.TextBox
    Friend WithEvents txtLossWT As System.Windows.Forms.TextBox
    Friend WithEvents txtLossAMT As System.Windows.Forms.TextBox
    Friend WithEvents txtLabourAMT As System.Windows.Forms.TextBox
    Friend WithEvents txtNetWT As System.Windows.Forms.TextBox
    Friend WithEvents txtNetAMT As System.Windows.Forms.TextBox
    Friend WithEvents txtStatus As System.Windows.Forms.Label
    Friend WithEvents cmdExit As System.Windows.Forms.Button
    Friend WithEvents cmdDel As System.Windows.Forms.Button
    Friend WithEvents cmdSave As System.Windows.Forms.Button
    Friend WithEvents CmdEdit As System.Windows.Forms.Button
    Friend WithEvents cmdNew As System.Windows.Forms.Button
    Friend WithEvents txtStockQTY As System.Windows.Forms.TextBox
    Friend WithEvents PictureBox1 As System.Windows.Forms.PictureBox
    Friend WithEvents DataGrid1 As System.Windows.Forms.DataGrid
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmStock))
        Me.optGold = New System.Windows.Forms.RadioButton()
        Me.optSilver = New System.Windows.Forms.RadioButton()
        Me.cboType = New System.Windows.Forms.ComboBox()
        Me.cboCode = New System.Windows.Forms.ComboBox()
        Me.txtDescription = New System.Windows.Forms.TextBox()
        Me.txtGrossWT = New System.Windows.Forms.TextBox()
        Me.txtStoneWT = New System.Windows.Forms.TextBox()
        Me.txtGrossAMT = New System.Windows.Forms.TextBox()
        Me.txtStoneAMT = New System.Windows.Forms.TextBox()
        Me.txtLossWT = New System.Windows.Forms.TextBox()
        Me.txtLossAMT = New System.Windows.Forms.TextBox()
        Me.txtLabourAMT = New System.Windows.Forms.TextBox()
        Me.txtNetWT = New System.Windows.Forms.TextBox()
        Me.txtNetAMT = New System.Windows.Forms.TextBox()
        Me.txtStatus = New System.Windows.Forms.Label()
        Me.cmdExit = New System.Windows.Forms.Button()
        Me.cmdDel = New System.Windows.Forms.Button()
        Me.cmdSave = New System.Windows.Forms.Button()
        Me.CmdEdit = New System.Windows.Forms.Button()
        Me.cmdNew = New System.Windows.Forms.Button()
        Me.txtStockQTY = New System.Windows.Forms.TextBox()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.DataGrid1 = New System.Windows.Forms.DataGrid()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        CType(Me.DataGrid1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'optGold
        '
        Me.optGold.Location = New System.Drawing.Point(368, 96)
        Me.optGold.Name = "optGold"
        Me.optGold.Size = New System.Drawing.Size(16, 16)
        Me.optGold.TabIndex = 0
        Me.optGold.Text = "RadioButton1"
        '
        'optSilver
        '
        Me.optSilver.Location = New System.Drawing.Point(368, 120)
        Me.optSilver.Name = "optSilver"
        Me.optSilver.Size = New System.Drawing.Size(16, 16)
        Me.optSilver.TabIndex = 1
        Me.optSilver.Text = "RadioButton2"
        '
        'cboType
        '
        Me.cboType.Location = New System.Drawing.Point(152, 64)
        Me.cboType.Name = "cboType"
        Me.cboType.Size = New System.Drawing.Size(112, 23)
        Me.cboType.TabIndex = 2
        '
        'cboCode
        '
        Me.cboCode.Location = New System.Drawing.Point(152, 96)
        Me.cboCode.Name = "cboCode"
        Me.cboCode.Size = New System.Drawing.Size(112, 23)
        Me.cboCode.TabIndex = 3
        '
        'txtDescription
        '
        Me.txtDescription.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtDescription.Location = New System.Drawing.Point(152, 128)
        Me.txtDescription.Multiline = True
        Me.txtDescription.Name = "txtDescription"
        Me.txtDescription.Size = New System.Drawing.Size(200, 64)
        Me.txtDescription.TabIndex = 4
        Me.txtDescription.Text = ""
        '
        'txtGrossWT
        '
        Me.txtGrossWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtGrossWT.Location = New System.Drawing.Point(152, 200)
        Me.txtGrossWT.Name = "txtGrossWT"
        Me.txtGrossWT.Size = New System.Drawing.Size(88, 21)
        Me.txtGrossWT.TabIndex = 5
        Me.txtGrossWT.Text = ""
        '
        'txtStoneWT
        '
        Me.txtStoneWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtStoneWT.Location = New System.Drawing.Point(152, 240)
        Me.txtStoneWT.Name = "txtStoneWT"
        Me.txtStoneWT.Size = New System.Drawing.Size(88, 21)
        Me.txtStoneWT.TabIndex = 6
        Me.txtStoneWT.Text = ""
        '
        'txtGrossAMT
        '
        Me.txtGrossAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtGrossAMT.Location = New System.Drawing.Point(392, 200)
        Me.txtGrossAMT.Name = "txtGrossAMT"
        Me.txtGrossAMT.Size = New System.Drawing.Size(88, 21)
        Me.txtGrossAMT.TabIndex = 7
        Me.txtGrossAMT.Text = ""
        '
        'txtStoneAMT
        '
        Me.txtStoneAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtStoneAMT.Location = New System.Drawing.Point(392, 240)
        Me.txtStoneAMT.Name = "txtStoneAMT"
        Me.txtStoneAMT.Size = New System.Drawing.Size(88, 21)
        Me.txtStoneAMT.TabIndex = 8
        Me.txtStoneAMT.Text = ""
        '
        'txtLossWT
        '
        Me.txtLossWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtLossWT.Location = New System.Drawing.Point(152, 280)
        Me.txtLossWT.Name = "txtLossWT"
        Me.txtLossWT.Size = New System.Drawing.Size(88, 21)
        Me.txtLossWT.TabIndex = 9
        Me.txtLossWT.Text = ""
        '
        'txtLossAMT
        '
        Me.txtLossAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtLossAMT.Location = New System.Drawing.Point(392, 280)
        Me.txtLossAMT.Name = "txtLossAMT"
        Me.txtLossAMT.Size = New System.Drawing.Size(88, 21)
        Me.txtLossAMT.TabIndex = 10
        Me.txtLossAMT.Text = ""
        '
        'txtLabourAMT
        '
        Me.txtLabourAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtLabourAMT.Location = New System.Drawing.Point(152, 320)
        Me.txtLabourAMT.Name = "txtLabourAMT"
        Me.txtLabourAMT.Size = New System.Drawing.Size(88, 21)
        Me.txtLabourAMT.TabIndex = 11
        Me.txtLabourAMT.Text = ""
        '
        'txtNetWT
        '
        Me.txtNetWT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNetWT.Location = New System.Drawing.Point(152, 360)
        Me.txtNetWT.Name = "txtNetWT"
        Me.txtNetWT.Size = New System.Drawing.Size(88, 21)
        Me.txtNetWT.TabIndex = 12
        Me.txtNetWT.Text = ""
        '
        'txtNetAMT
        '
        Me.txtNetAMT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNetAMT.Location = New System.Drawing.Point(392, 360)
        Me.txtNetAMT.Name = "txtNetAMT"
        Me.txtNetAMT.Size = New System.Drawing.Size(88, 21)
        Me.txtNetAMT.TabIndex = 13
        Me.txtNetAMT.Text = ""
        '
        'txtStatus
        '
        Me.txtStatus.BackColor = System.Drawing.Color.White
        Me.txtStatus.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtStatus.ForeColor = System.Drawing.Color.Red
        Me.txtStatus.Location = New System.Drawing.Point(152, 392)
        Me.txtStatus.Name = "txtStatus"
        Me.txtStatus.Size = New System.Drawing.Size(88, 20)
        Me.txtStatus.TabIndex = 14
        Me.txtStatus.Text = "EXCESS"
        '
        'cmdExit
        '
        Me.cmdExit.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdExit.Image = CType(resources.GetObject("cmdExit.Image"), System.Drawing.Bitmap)
        Me.cmdExit.Location = New System.Drawing.Point(448, 416)
        Me.cmdExit.Name = "cmdExit"
        Me.cmdExit.Size = New System.Drawing.Size(88, 40)
        Me.cmdExit.TabIndex = 26
        '
        'cmdDel
        '
        Me.cmdDel.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdDel.Image = CType(resources.GetObject("cmdDel.Image"), System.Drawing.Bitmap)
        Me.cmdDel.Location = New System.Drawing.Point(339, 416)
        Me.cmdDel.Name = "cmdDel"
        Me.cmdDel.Size = New System.Drawing.Size(88, 40)
        Me.cmdDel.TabIndex = 25
        '
        'cmdSave
        '
        Me.cmdSave.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdSave.Image = CType(resources.GetObject("cmdSave.Image"), System.Drawing.Bitmap)
        Me.cmdSave.Location = New System.Drawing.Point(232, 416)
        Me.cmdSave.Name = "cmdSave"
        Me.cmdSave.Size = New System.Drawing.Size(88, 40)
        Me.cmdSave.TabIndex = 24
        '
        'CmdEdit
        '
        Me.CmdEdit.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.CmdEdit.Image = CType(resources.GetObject("CmdEdit.Image"), System.Drawing.Bitmap)
        Me.CmdEdit.Location = New System.Drawing.Point(128, 416)
        Me.CmdEdit.Name = "CmdEdit"
        Me.CmdEdit.Size = New System.Drawing.Size(88, 40)
        Me.CmdEdit.TabIndex = 23
        '
        'cmdNew
        '
        Me.cmdNew.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdNew.Image = CType(resources.GetObject("cmdNew.Image"), System.Drawing.Bitmap)
        Me.cmdNew.Location = New System.Drawing.Point(24, 416)
        Me.cmdNew.Name = "cmdNew"
        Me.cmdNew.Size = New System.Drawing.Size(88, 40)
        Me.cmdNew.TabIndex = 22
        '
        'txtStockQTY
        '
        Me.txtStockQTY.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtStockQTY.Location = New System.Drawing.Point(392, 320)
        Me.txtStockQTY.Name = "txtStockQTY"
        Me.txtStockQTY.Size = New System.Drawing.Size(88, 21)
        Me.txtStockQTY.TabIndex = 27
        Me.txtStockQTY.Text = ""
        '
        'PictureBox1
        '
        Me.PictureBox1.BackgroundImage = CType(resources.GetObject("PictureBox1.BackgroundImage"), System.Drawing.Bitmap)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(576, 517)
        Me.PictureBox1.TabIndex = 28
        Me.PictureBox1.TabStop = False
        '
        'DataGrid1
        '
        Me.DataGrid1.DataMember = ""
        Me.DataGrid1.HeaderForeColor = System.Drawing.SystemColors.ControlText
        Me.DataGrid1.Location = New System.Drawing.Point(576, 0)
        Me.DataGrid1.Name = "DataGrid1"
        Me.DataGrid1.Size = New System.Drawing.Size(216, 517)
        Me.DataGrid1.TabIndex = 29
        '
        'Timer1
        '
        Me.Timer1.Enabled = True
        Me.Timer1.Interval = 60
        '
        'frmStock
        '
        Me.AutoScale = False
        Me.AutoScaleBaseSize = New System.Drawing.Size(6, 14)
        Me.ClientSize = New System.Drawing.Size(786, 494)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.DataGrid1, Me.txtStockQTY, Me.cmdExit, Me.cmdDel, Me.cmdSave, Me.CmdEdit, Me.cmdNew, Me.txtStatus, Me.txtNetAMT, Me.txtNetWT, Me.txtLabourAMT, Me.txtLossAMT, Me.txtLossWT, Me.txtStoneAMT, Me.txtGrossAMT, Me.txtStoneWT, Me.txtGrossWT, Me.txtDescription, Me.cboCode, Me.cboType, Me.optSilver, Me.optGold, Me.PictureBox1})
        Me.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ForeColor = System.Drawing.Color.Red
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmStock"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.Manual
        Me.Text = "Stock Manager"
        Me.TopMost = True
        CType(Me.DataGrid1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Public myname As String
#End Region

    Private Sub cmdExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdExit.Click
        ans = True
        Me.Close()
    End Sub
    Public ans As Boolean = False
    Private Sub frmStock_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'While Not ans = True
        myname = Me.Text
            Me.Text = Me.Text + " --- >> TODAY " & Date.Now.AddTicks(1)
        'End While
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Me.Text = myname + " --- >> TODAY " & Date.Now
    End Sub
End Class
