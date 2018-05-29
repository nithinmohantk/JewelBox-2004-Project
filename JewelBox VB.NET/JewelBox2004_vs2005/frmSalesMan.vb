Public Class frmSalesMan
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
    Friend WithEvents cboSalesManID As System.Windows.Forms.ComboBox
    Friend WithEvents txtFirstName As System.Windows.Forms.TextBox
    Friend WithEvents txtLastName As System.Windows.Forms.TextBox
    Friend WithEvents optMale As System.Windows.Forms.RadioButton
    Friend WithEvents optFemale As System.Windows.Forms.RadioButton
    Friend WithEvents dtBirth As System.Windows.Forms.DateTimePicker
    Friend WithEvents txtAge As System.Windows.Forms.TextBox
    Friend WithEvents txtAddress As System.Windows.Forms.TextBox
    Friend WithEvents txtCity As System.Windows.Forms.TextBox
    Friend WithEvents txtState As System.Windows.Forms.TextBox
    Friend WithEvents txtZip As System.Windows.Forms.TextBox
    Friend WithEvents txtPhone As System.Windows.Forms.TextBox
    Friend WithEvents txtLogin As System.Windows.Forms.TextBox
    Friend WithEvents txtPassword As System.Windows.Forms.TextBox
    Friend WithEvents dtJoin As System.Windows.Forms.DateTimePicker
    Friend WithEvents dtLeave As System.Windows.Forms.DateTimePicker
    Friend WithEvents txtStatus As System.Windows.Forms.TextBox
    Friend WithEvents cmdExit As System.Windows.Forms.Button
    Friend WithEvents cmdDel As System.Windows.Forms.Button
    Friend WithEvents CmdEdit As System.Windows.Forms.Button
    Friend WithEvents cmdNew As System.Windows.Forms.Button
    Friend WithEvents cmdSave As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmSalesMan))
        Me.cboSalesManID = New System.Windows.Forms.ComboBox()
        Me.txtFirstName = New System.Windows.Forms.TextBox()
        Me.txtLastName = New System.Windows.Forms.TextBox()
        Me.optMale = New System.Windows.Forms.RadioButton()
        Me.optFemale = New System.Windows.Forms.RadioButton()
        Me.dtBirth = New System.Windows.Forms.DateTimePicker()
        Me.txtAge = New System.Windows.Forms.TextBox()
        Me.txtAddress = New System.Windows.Forms.TextBox()
        Me.txtCity = New System.Windows.Forms.TextBox()
        Me.txtState = New System.Windows.Forms.TextBox()
        Me.txtZip = New System.Windows.Forms.TextBox()
        Me.txtPhone = New System.Windows.Forms.TextBox()
        Me.txtLogin = New System.Windows.Forms.TextBox()
        Me.txtPassword = New System.Windows.Forms.TextBox()
        Me.dtJoin = New System.Windows.Forms.DateTimePicker()
        Me.dtLeave = New System.Windows.Forms.DateTimePicker()
        Me.txtStatus = New System.Windows.Forms.TextBox()
        Me.cmdExit = New System.Windows.Forms.Button()
        Me.cmdDel = New System.Windows.Forms.Button()
        Me.CmdEdit = New System.Windows.Forms.Button()
        Me.cmdNew = New System.Windows.Forms.Button()
        Me.cmdSave = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'cboSalesManID
        '
        Me.cboSalesManID.Location = New System.Drawing.Point(104, 72)
        Me.cboSalesManID.Name = "cboSalesManID"
        Me.cboSalesManID.Size = New System.Drawing.Size(112, 21)
        Me.cboSalesManID.TabIndex = 0
        '
        'txtFirstName
        '
        Me.txtFirstName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtFirstName.Location = New System.Drawing.Point(104, 104)
        Me.txtFirstName.Name = "txtFirstName"
        Me.txtFirstName.Size = New System.Drawing.Size(128, 20)
        Me.txtFirstName.TabIndex = 1
        Me.txtFirstName.Text = ""
        '
        'txtLastName
        '
        Me.txtLastName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtLastName.Location = New System.Drawing.Point(320, 104)
        Me.txtLastName.Name = "txtLastName"
        Me.txtLastName.Size = New System.Drawing.Size(128, 20)
        Me.txtLastName.TabIndex = 2
        Me.txtLastName.Text = ""
        '
        'optMale
        '
        Me.optMale.Location = New System.Drawing.Point(136, 128)
        Me.optMale.Name = "optMale"
        Me.optMale.Size = New System.Drawing.Size(16, 16)
        Me.optMale.TabIndex = 3
        Me.optMale.Text = "RadioButton1"
        '
        'optFemale
        '
        Me.optFemale.Location = New System.Drawing.Point(208, 128)
        Me.optFemale.Name = "optFemale"
        Me.optFemale.Size = New System.Drawing.Size(16, 16)
        Me.optFemale.TabIndex = 4
        Me.optFemale.Text = "RadioButton2"
        '
        'dtBirth
        '
        Me.dtBirth.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtBirth.Location = New System.Drawing.Point(104, 152)
        Me.dtBirth.Name = "dtBirth"
        Me.dtBirth.Size = New System.Drawing.Size(88, 20)
        Me.dtBirth.TabIndex = 5
        '
        'txtAge
        '
        Me.txtAge.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtAge.Location = New System.Drawing.Point(320, 152)
        Me.txtAge.Name = "txtAge"
        Me.txtAge.Size = New System.Drawing.Size(48, 20)
        Me.txtAge.TabIndex = 6
        Me.txtAge.Text = ""
        '
        'txtAddress
        '
        Me.txtAddress.Location = New System.Drawing.Point(104, 184)
        Me.txtAddress.Multiline = True
        Me.txtAddress.Name = "txtAddress"
        Me.txtAddress.Size = New System.Drawing.Size(248, 48)
        Me.txtAddress.TabIndex = 7
        Me.txtAddress.Text = ""
        '
        'txtCity
        '
        Me.txtCity.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtCity.Location = New System.Drawing.Point(104, 240)
        Me.txtCity.Name = "txtCity"
        Me.txtCity.Size = New System.Drawing.Size(136, 20)
        Me.txtCity.TabIndex = 8
        Me.txtCity.Text = ""
        '
        'txtState
        '
        Me.txtState.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtState.Location = New System.Drawing.Point(320, 240)
        Me.txtState.Name = "txtState"
        Me.txtState.Size = New System.Drawing.Size(152, 20)
        Me.txtState.TabIndex = 9
        Me.txtState.Text = ""
        '
        'txtZip
        '
        Me.txtZip.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtZip.Location = New System.Drawing.Point(104, 264)
        Me.txtZip.Name = "txtZip"
        Me.txtZip.Size = New System.Drawing.Size(136, 20)
        Me.txtZip.TabIndex = 10
        Me.txtZip.Text = ""
        '
        'txtPhone
        '
        Me.txtPhone.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtPhone.Location = New System.Drawing.Point(320, 264)
        Me.txtPhone.Name = "txtPhone"
        Me.txtPhone.Size = New System.Drawing.Size(152, 20)
        Me.txtPhone.TabIndex = 11
        Me.txtPhone.Text = ""
        '
        'txtLogin
        '
        Me.txtLogin.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtLogin.Location = New System.Drawing.Point(104, 288)
        Me.txtLogin.Name = "txtLogin"
        Me.txtLogin.Size = New System.Drawing.Size(136, 20)
        Me.txtLogin.TabIndex = 12
        Me.txtLogin.Text = ""
        '
        'txtPassword
        '
        Me.txtPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtPassword.Location = New System.Drawing.Point(320, 288)
        Me.txtPassword.Name = "txtPassword"
        Me.txtPassword.PasswordChar = Microsoft.VisualBasic.ChrW(42)
        Me.txtPassword.Size = New System.Drawing.Size(152, 20)
        Me.txtPassword.TabIndex = 13
        Me.txtPassword.Text = ""
        '
        'dtJoin
        '
        Me.dtJoin.Format = System.Windows.Forms.DateTimePickerFormat.Short
        Me.dtJoin.Location = New System.Drawing.Point(104, 312)
        Me.dtJoin.Name = "dtJoin"
        Me.dtJoin.Size = New System.Drawing.Size(96, 20)
        Me.dtJoin.TabIndex = 14
        '
        'dtLeave
        '
        Me.dtLeave.Format = System.Windows.Forms.DateTimePickerFormat.Short
        Me.dtLeave.Location = New System.Drawing.Point(320, 312)
        Me.dtLeave.Name = "dtLeave"
        Me.dtLeave.Size = New System.Drawing.Size(96, 20)
        Me.dtLeave.TabIndex = 15
        '
        'txtStatus
        '
        Me.txtStatus.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtStatus.Location = New System.Drawing.Point(104, 336)
        Me.txtStatus.Name = "txtStatus"
        Me.txtStatus.Size = New System.Drawing.Size(120, 20)
        Me.txtStatus.TabIndex = 16
        Me.txtStatus.Text = "ACTIVE"
        '
        'cmdExit
        '
        Me.cmdExit.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdExit.Image = CType(resources.GetObject("cmdExit.Image"), System.Drawing.Bitmap)
        Me.cmdExit.Location = New System.Drawing.Point(392, 376)
        Me.cmdExit.Name = "cmdExit"
        Me.cmdExit.Size = New System.Drawing.Size(88, 40)
        Me.cmdExit.TabIndex = 21
        '
        'cmdDel
        '
        Me.cmdDel.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdDel.Image = CType(resources.GetObject("cmdDel.Image"), System.Drawing.Bitmap)
        Me.cmdDel.Location = New System.Drawing.Point(296, 376)
        Me.cmdDel.Name = "cmdDel"
        Me.cmdDel.Size = New System.Drawing.Size(88, 40)
        Me.cmdDel.TabIndex = 20
        '
        'CmdEdit
        '
        Me.CmdEdit.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.CmdEdit.Image = CType(resources.GetObject("CmdEdit.Image"), System.Drawing.Bitmap)
        Me.CmdEdit.Location = New System.Drawing.Point(104, 376)
        Me.CmdEdit.Name = "CmdEdit"
        Me.CmdEdit.Size = New System.Drawing.Size(88, 40)
        Me.CmdEdit.TabIndex = 18
        '
        'cmdNew
        '
        Me.cmdNew.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdNew.Image = CType(resources.GetObject("cmdNew.Image"), System.Drawing.Bitmap)
        Me.cmdNew.Location = New System.Drawing.Point(8, 376)
        Me.cmdNew.Name = "cmdNew"
        Me.cmdNew.Size = New System.Drawing.Size(88, 40)
        Me.cmdNew.TabIndex = 17
        '
        'cmdSave
        '
        Me.cmdSave.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdSave.Image = CType(resources.GetObject("cmdSave.Image"), System.Drawing.Bitmap)
        Me.cmdSave.Location = New System.Drawing.Point(200, 376)
        Me.cmdSave.Name = "cmdSave"
        Me.cmdSave.Size = New System.Drawing.Size(88, 40)
        Me.cmdSave.TabIndex = 19
        '
        'frmSalesMan
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Bitmap)
        Me.ClientSize = New System.Drawing.Size(488, 430)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.cmdExit, Me.cmdDel, Me.cmdSave, Me.CmdEdit, Me.cmdNew, Me.txtStatus, Me.dtLeave, Me.dtJoin, Me.txtPassword, Me.txtLogin, Me.txtPhone, Me.txtZip, Me.txtState, Me.txtCity, Me.txtAddress, Me.txtAge, Me.dtBirth, Me.optFemale, Me.optMale, Me.txtLastName, Me.txtFirstName, Me.cboSalesManID})
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.Name = "frmSalesMan"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "SalesMan Manager"
        Me.ResumeLayout(False)

    End Sub
    Public isNew As Boolean = False
#End Region

    Private Sub frmSalesMan_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub optFemale_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles optFemale.CheckedChanged

    End Sub

    
    Private Sub cmdExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdExit.Click
        Me.Close()
    End Sub

    Private Sub cmdNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdNew.Click
        isNew = True
    End Sub

    Private Sub cmdSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdSave.Click
        If isNew = True Then
            If cboSalesManID.Text = "" Then
                MsgBox("Please fill in SalesManID  box.", _
                        MsgBoxStyle.Critical, Me.Text)
                Exit Sub
            End If
            'Dim rs As String()
            'rsLogin.AddNew("SALESMANID", Trim(cboSalesManID.Text))
            'rsLogin.Save()
            'Call commitDB()
            'Dim strSQL As String = "INSERT INTO Login(SALESMANID,LOGINID,PASSWORD) " & _
            '"VALUES ('" & Trim(cboSalesManID.Text) & _
            '"','" & Trim(txtLogin.Text) & "','" & Trim(txtPassword.Text) & "')"
            'conn.Open(strConn)
            'Dim recordsEffected As Object
            'conn.Execute(strSQL, recordsEffected)
            'conn.Close()
            ' Check to see if 1 record was effected
            'If CInt(recordsEffected) > 0 Then
            'MsgBox("Update Successful!", MsgBoxStyle.Exclamation, Me.Text)
            'Else
            'MsgBox("Update Failed!", MsgBoxStyle.Critical, Me.Text)
        End If

    End Sub

    Private Sub cmdDel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdDel.Click
        Dim strSQL As String = "DELETE FROM Login"
        'conn.Open(strConn)
        'Dim recordsEffected As Object
        'conn.Execute(strSQL, recordsEffected)
        'conn.Close()
        ' Check to see if 1 record was effected
        'If CInt(recordsEffected) > 0 Then
        '    MsgBox("Deletion Successful!", MsgBoxStyle.Exclamation, Me.Text)
        'Else
        '    MsgBox("Failed!", MsgBoxStyle.Critical, Me.Text)
        'End If

    End Sub
End Class
