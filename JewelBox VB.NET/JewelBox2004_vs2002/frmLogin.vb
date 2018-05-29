Option Explicit On 
Imports System
Imports System.ComponentModel
Imports System.Drawing
Imports System.Windows.Forms
Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic.ControlChars 'needed for crLF constant

Public Class frmLogin
    Inherits System.Windows.Forms.Form


#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        frmLogin = Me

        'This call is required by the Windows Form Designer.
        InitializeComponent()
        'Public Property Handled() As Boolean
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
    Friend WithEvents cmdLogin As System.Windows.Forms.Button
    Friend WithEvents cmdCancel As System.Windows.Forms.Button
    Friend WithEvents txtPassword As System.Windows.Forms.TextBox
    Friend WithEvents txtUser As System.Windows.Forms.TextBox

    Dim WithEvents frmLogin As System.Windows.Forms.Form

    
    Dim i As Integer
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Button1 As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmLogin))
        Me.cmdLogin = New System.Windows.Forms.Button()
        Me.cmdCancel = New System.Windows.Forms.Button()
        Me.txtUser = New System.Windows.Forms.TextBox()
        Me.txtPassword = New System.Windows.Forms.TextBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'cmdLogin
        '
        Me.cmdLogin.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.cmdLogin.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdLogin.Location = New System.Drawing.Point(136, 160)
        Me.cmdLogin.Name = "cmdLogin"
        Me.cmdLogin.Size = New System.Drawing.Size(72, 24)
        Me.cmdLogin.TabIndex = 4
        Me.cmdLogin.Text = "&Log In"
        '
        'cmdCancel
        '
        Me.cmdCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.cmdCancel.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.cmdCancel.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdCancel.Location = New System.Drawing.Point(216, 160)
        Me.cmdCancel.Name = "cmdCancel"
        Me.cmdCancel.Size = New System.Drawing.Size(72, 24)
        Me.cmdCancel.TabIndex = 5
        Me.cmdCancel.Text = "&Cancel"
        '
        'txtUser
        '
        Me.txtUser.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtUser.Location = New System.Drawing.Point(136, 80)
        Me.txtUser.Name = "txtUser"
        Me.txtUser.Size = New System.Drawing.Size(136, 20)
        Me.txtUser.TabIndex = 0
        Me.txtUser.Text = ""
        '
        'txtPassword
        '
        Me.txtPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtPassword.Location = New System.Drawing.Point(136, 112)
        Me.txtPassword.Name = "txtPassword"
        Me.txtPassword.PasswordChar = Microsoft.VisualBasic.ChrW(42)
        Me.txtPassword.Size = New System.Drawing.Size(136, 20)
        Me.txtPassword.TabIndex = 1
        Me.txtPassword.Text = ""
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.AddRange(New System.Windows.Forms.Control() {Me.Label2, Me.Label1})
        Me.GroupBox1.Font = New System.Drawing.Font("Monotype Corsiva", 14.25!, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(8, 48)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(280, 100)
        Me.GroupBox1.TabIndex = 6
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Enter Login Details"
        '
        'Label2
        '
        Me.Label2.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label2.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label2.Location = New System.Drawing.Point(32, 56)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(88, 23)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Password :"
        '
        'Label1
        '
        Me.Label1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label1.Location = New System.Drawing.Point(32, 32)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(88, 23)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "User Name :"
        '
        'Button1
        '
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.System
        Me.Button1.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Button1.Location = New System.Drawing.Point(56, 160)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(72, 24)
        Me.Button1.TabIndex = 7
        Me.Button1.Text = "&New User"
        '
        'frmLogin
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(296, 206)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button1, Me.txtPassword, Me.txtUser, Me.cmdCancel, Me.cmdLogin, Me.GroupBox1})
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmLogin"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "User Authentication"
        Me.TopMost = True
        Me.GroupBox1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub cmdLogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdLogin.Click
        logsuccess = False
        sql = "select loginid,password from login"
        comm = New SqlClient.SqlCommand(sql, conn)
        Dim adapt As New SqlClient.SqlDataAdapter(comm)
        adapt.Fill(rslogin, "Login")
        loguser = UCase(Trim(txtUser.Text))
        logpass = Trim(txtPassword.Text)
        Dim objdatarow As DataRow
        For Each objdatarow In rslogin.Tables("Login").Rows
            If (UCase(objdatarow.Item("loginid")) = loguser) Then
                If decrypt_pass(objdatarow.Item("password")) = (logpass) Then
                    logsuccess = True
                    adapt.Dispose()
                    adapt = Nothing
                    comm.Dispose()
                    comm = Nothing

                    Dim frm As New frmMain()
                    Me.Hide()
                    frm.Show()
                    Exit Sub
                End If
            End If
        Next
        If logsuccess = False Then
            MsgBox("Login Failed ? Please Check whether your login details are true")
            txtUser.Focus()
        End If
        adapt.Dispose()
        adapt = Nothing
        comm.Dispose()
        comm = Nothing
    End Sub

    Private Sub cmdCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdCancel.Click
        End
    End Sub

    Private Sub frmLogin_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Me.Text = Me.Text + "-> " & Date.Now()
        txtUser.Focus()
    End Sub
    Private Sub frmLogin_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Closed
        End
    End Sub



    Private Sub txtUser_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtUser.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim user_correct As Boolean
            user_correct = False
            sql = "select loginid,password from login"
            comm = New SqlClient.SqlCommand(sql, conn)
            Dim adapt As New SqlClient.SqlDataAdapter(comm)
            adapt.Fill(rslogin, "Login")
            loguser = UCase(Trim(txtUser.Text))
            Dim objdatarow As DataRow
            For Each objdatarow In rslogin.Tables("Login").Rows
                If (UCase(objdatarow.Item("loginid")) = loguser) Then
                    user_correct = True
                End If
            Next
            If user_correct = True Then
                objdatarow = Nothing
                comm.Dispose()
                comm = Nothing
                'rslogin.Dispose()
                'rslogin = Nothing
                adapt.Dispose()
                adapt = Nothing
                txtPassword.Focus()
            Else
                MsgBox("Invalid User Name")
            End If
        End If
    End Sub
    Private Sub txtPassword_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtPassword.KeyPress
        If Asc(e.KeyChar) = 13 Then
            logsuccess = False
            sql = "select loginid,password from login"
            comm = New SqlClient.SqlCommand(sql, conn)
            Dim adapt As New SqlClient.SqlDataAdapter(comm)
            adapt.Fill(rslogin, "Login")
            loguser = UCase(Trim(txtUser.Text))
            logpass = Trim(txtPassword.Text)
            Dim objdatarow As DataRow
            For Each objdatarow In rslogin.Tables("Login").Rows
                If (UCase(objdatarow.Item("loginid")) = loguser) Then
                    If decrypt_pass(objdatarow.Item("password")) = (logpass) Then
                        logsuccess = True
                        adapt.Dispose()
                        adapt = Nothing
                        comm.Dispose()
                        comm = Nothing

                        Dim frm As New frmMain()
                        Me.Hide()
                        frm.Show()
                        Exit Sub
                    End If
                End If
            Next
            If logsuccess = False Then
                MsgBox("Login Failed ? Please Check whether your login details are true")
                txtUser.Focus()
            End If
            adapt.Dispose()
            adapt = Nothing
            comm.Dispose()
            comm = Nothing
        End If
    End Sub

    Private Sub frmLogin_Activated(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles frmLogin.Activated, MyBase.Activated

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim frm2 As New frmNewUser()
        Me.Hide()
        frm2.Show()
    End Sub

    Private Sub txtUser_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtUser.TextChanged

    End Sub

    Private Sub txtPassword_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtPassword.TextChanged

    End Sub
End Class
