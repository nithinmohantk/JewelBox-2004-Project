Public Class frmSplash
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
    Friend WithEvents ProgressBar1 As System.Windows.Forms.ProgressBar
    Public ans As Boolean
    Public k As Integer
    Friend WithEvents Timer1 As System.Windows.Forms.Timer
    Friend WithEvents lblSoftName As System.Windows.Forms.Label
    Friend WithEvents lblCompany As System.Windows.Forms.Label
    Friend WithEvents lblVersion As System.Windows.Forms.Label
    Friend WithEvents lblCopyRight As System.Windows.Forms.Label
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim configurationAppSettings As System.Configuration.AppSettingsReader = New System.Configuration.AppSettingsReader()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmSplash))
        Me.ProgressBar1 = New System.Windows.Forms.ProgressBar()
        Me.Timer1 = New System.Windows.Forms.Timer(Me.components)
        Me.lblSoftName = New System.Windows.Forms.Label()
        Me.lblCompany = New System.Windows.Forms.Label()
        Me.lblVersion = New System.Windows.Forms.Label()
        Me.lblCopyRight = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'ProgressBar1
        '
        Me.ProgressBar1.Location = New System.Drawing.Point(4, 190)
        Me.ProgressBar1.Name = "ProgressBar1"
        Me.ProgressBar1.Size = New System.Drawing.Size(425, 12)
        Me.ProgressBar1.TabIndex = 1
        '
        'Timer1
        '
        Me.Timer1.Enabled = CType(configurationAppSettings.GetValue("Timer1.Enabled", GetType(System.Boolean)), Boolean)
        Me.Timer1.Interval = CType(configurationAppSettings.GetValue("Timer1.Interval", GetType(System.Int32)), Integer)
        '
        'lblSoftName
        '
        Me.lblSoftName.BackColor = System.Drawing.Color.Transparent
        Me.lblSoftName.Font = New System.Drawing.Font("Monotype Corsiva", 20.25!, (System.Drawing.FontStyle.Bold Or System.Drawing.FontStyle.Italic), System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSoftName.ForeColor = System.Drawing.Color.DodgerBlue
        Me.lblSoftName.Location = New System.Drawing.Point(126, 52)
        Me.lblSoftName.Name = "lblSoftName"
        Me.lblSoftName.Size = New System.Drawing.Size(294, 35)
        Me.lblSoftName.TabIndex = 2
        Me.lblSoftName.Text = "SoftName"
        '
        'lblCompany
        '
        Me.lblCompany.BackColor = System.Drawing.Color.Transparent
        Me.lblCompany.Font = New System.Drawing.Font("Monotype Corsiva", 11.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblCompany.ForeColor = System.Drawing.Color.OrangeRed
        Me.lblCompany.Location = New System.Drawing.Point(25, 20)
        Me.lblCompany.Name = "lblCompany"
        Me.lblCompany.Size = New System.Drawing.Size(383, 20)
        Me.lblCompany.TabIndex = 3
        Me.lblCompany.Text = "Company"
        '
        'lblVersion
        '
        Me.lblVersion.BackColor = System.Drawing.Color.Transparent
        Me.lblVersion.Font = New System.Drawing.Font("Times New Roman", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblVersion.ForeColor = System.Drawing.Color.Green
        Me.lblVersion.Location = New System.Drawing.Point(267, 94)
        Me.lblVersion.Name = "lblVersion"
        Me.lblVersion.Size = New System.Drawing.Size(152, 20)
        Me.lblVersion.TabIndex = 4
        Me.lblVersion.Text = "Version"
        '
        'lblCopyRight
        '
        Me.lblCopyRight.BackColor = System.Drawing.Color.Transparent
        Me.lblCopyRight.Font = New System.Drawing.Font("Times New Roman", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblCopyRight.ForeColor = System.Drawing.Color.DeepPink
        Me.lblCopyRight.Location = New System.Drawing.Point(8, 213)
        Me.lblCopyRight.Name = "lblCopyRight"
        Me.lblCopyRight.Size = New System.Drawing.Size(418, 20)
        Me.lblCopyRight.TabIndex = 5
        Me.lblCopyRight.Text = "CopyRight"
        '
        'frmSplash
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Bitmap)
        Me.ClientSize = New System.Drawing.Size(434, 242)
        Me.ControlBox = False
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.lblCopyRight, Me.lblVersion, Me.lblCompany, Me.lblSoftName, Me.ProgressBar1})
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmSplash"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "JewelBox2004 is LOADING"
        Me.ResumeLayout(False)

    End Sub


#End Region
   
    Public Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        k = k + 1
        If k < 101 Then
            ProgressBar1.Value = k
        ElseIf k = 101 Then
            Dim frm1 As New frmLogin()
            Me.Hide()
            Call ConnectDB()
            frm1.ShowDialog()
        End If
    End Sub

    Private Sub ProgressBar1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ProgressBar1.Click

    End Sub

    Private Sub frmSplash_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Dim ainfo As New AssemblyInfo()
        lblSoftName.Text = ainfo.AsmName
        lblCompany.Text = ainfo.Company & "'s"
        lblCopyRight.Text = ainfo.Copyright
        lblVersion.Text = ainfo.Version
    End Sub
End Class
