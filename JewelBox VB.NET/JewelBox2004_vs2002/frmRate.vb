Public Class frmRate
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()
        getdate()
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
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Public WithEvents txtGold22CT As System.Windows.Forms.TextBox
    Public WithEvents txtGold24CT As System.Windows.Forms.TextBox
    Public WithEvents txtSilver As System.Windows.Forms.TextBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents lblDate As System.Windows.Forms.Label
    Friend WithEvents cmdOK As System.Windows.Forms.Button
    Friend WithEvents cmdCancel As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmRate))
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.txtSilver = New System.Windows.Forms.TextBox()
        Me.txtGold24CT = New System.Windows.Forms.TextBox()
        Me.txtGold22CT = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.lblDate = New System.Windows.Forms.Label()
        Me.cmdOK = New System.Windows.Forms.Button()
        Me.cmdCancel = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.Font = New System.Drawing.Font("Arial Narrow", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.Color.FromArgb(CType(0, Byte), CType(64, Byte), CType(64, Byte))
        Me.Label1.Location = New System.Drawing.Point(8, 40)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(328, 40)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Each day the Market Rate of the ornaments are changed according to the Market Rat" & _
        "e of Gold and Silver . So Quote Today's Rates"
        '
        'Label2
        '
        Me.Label2.Font = New System.Drawing.Font("Monotype Corsiva", 12.0!, (System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.Color.Firebrick
        Me.Label2.Location = New System.Drawing.Point(8, 8)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(136, 24)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Rate Of The Day "
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.AddRange(New System.Windows.Forms.Control() {Me.Label9, Me.Label8, Me.Label7, Me.txtSilver, Me.txtGold24CT, Me.txtGold22CT, Me.Label5, Me.Label4, Me.Label3})
        Me.GroupBox1.Location = New System.Drawing.Point(48, 80)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(272, 120)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Rate Of The Day"
        '
        'Label9
        '
        Me.Label9.Location = New System.Drawing.Point(192, 88)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(56, 24)
        Me.Label9.TabIndex = 60
        Me.Label9.Text = "Rs/Grams"
        '
        'Label8
        '
        Me.Label8.Location = New System.Drawing.Point(192, 56)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(64, 24)
        Me.Label8.TabIndex = 50
        Me.Label8.Text = "Rs/Grams"
        '
        'Label7
        '
        Me.Label7.Location = New System.Drawing.Point(192, 24)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(56, 16)
        Me.Label7.TabIndex = 40
        Me.Label7.Text = "Rs/Grams"
        '
        'txtSilver
        '
        Me.txtSilver.AcceptsReturn = True
        Me.txtSilver.AcceptsTab = True
        Me.txtSilver.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtSilver.Location = New System.Drawing.Point(88, 88)
        Me.txtSilver.Name = "txtSilver"
        Me.txtSilver.Size = New System.Drawing.Size(96, 20)
        Me.txtSilver.TabIndex = 3
        Me.txtSilver.Text = ""
        '
        'txtGold24CT
        '
        Me.txtGold24CT.AcceptsReturn = True
        Me.txtGold24CT.AcceptsTab = True
        Me.txtGold24CT.AllowDrop = True
        Me.txtGold24CT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtGold24CT.Location = New System.Drawing.Point(88, 56)
        Me.txtGold24CT.Name = "txtGold24CT"
        Me.txtGold24CT.Size = New System.Drawing.Size(96, 20)
        Me.txtGold24CT.TabIndex = 2
        Me.txtGold24CT.Text = ""
        '
        'txtGold22CT
        '
        Me.txtGold22CT.AcceptsReturn = True
        Me.txtGold22CT.AcceptsTab = True
        Me.txtGold22CT.AllowDrop = True
        Me.txtGold22CT.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtGold22CT.Location = New System.Drawing.Point(88, 24)
        Me.txtGold22CT.Name = "txtGold22CT"
        Me.txtGold22CT.Size = New System.Drawing.Size(96, 20)
        Me.txtGold22CT.TabIndex = 1
        Me.txtGold22CT.Text = ""
        '
        'Label5
        '
        Me.Label5.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label5.Location = New System.Drawing.Point(8, 88)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(80, 24)
        Me.Label5.TabIndex = 200
        Me.Label5.Text = "Silver"
        '
        'Label4
        '
        Me.Label4.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label4.Location = New System.Drawing.Point(8, 56)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(80, 24)
        Me.Label4.TabIndex = 199
        Me.Label4.Text = "Gold 24CT"
        '
        'Label3
        '
        Me.Label3.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label3.Location = New System.Drawing.Point(8, 24)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(80, 24)
        Me.Label3.TabIndex = 90
        Me.Label3.Text = "Gold 22CT"
        '
        'lblDate
        '
        Me.lblDate.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblDate.ForeColor = System.Drawing.Color.Purple
        Me.lblDate.Location = New System.Drawing.Point(152, 8)
        Me.lblDate.Name = "lblDate"
        Me.lblDate.Size = New System.Drawing.Size(184, 24)
        Me.lblDate.TabIndex = 4
        Me.lblDate.Text = "27/07/2004 12:00:00 AM"
        '
        'cmdOK
        '
        Me.cmdOK.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdOK.Location = New System.Drawing.Point(152, 216)
        Me.cmdOK.Name = "cmdOK"
        Me.cmdOK.Size = New System.Drawing.Size(80, 24)
        Me.cmdOK.TabIndex = 4
        Me.cmdOK.Text = "&OK"
        '
        'cmdCancel
        '
        Me.cmdCancel.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdCancel.Location = New System.Drawing.Point(256, 216)
        Me.cmdCancel.Name = "cmdCancel"
        Me.cmdCancel.Size = New System.Drawing.Size(80, 24)
        Me.cmdCancel.TabIndex = 5
        Me.cmdCancel.Text = "&Cancel"
        '
        'frmRate
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(352, 269)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.cmdCancel, Me.cmdOK, Me.lblDate, Me.GroupBox1, Me.Label2, Me.Label1})
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmRate"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Today's Rate"
        Me.GroupBox1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Public Sub getdate()
        lblDate.Text = DateAndTime.Now()
    End Sub
#End Region

    Private Sub cmdCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdCancel.Click
        Me.Dispose(True)
    End Sub

    Private Sub frmRate_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub cmdOK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdOK.Click

    End Sub
End Class
