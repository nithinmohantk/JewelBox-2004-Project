Imports System.Data.SqlClient
Imports System.Data.OleDb
Public Class frmNewUser
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()
        frmNewUser = Me
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
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents txtNewUser As System.Windows.Forms.TextBox
    Friend WithEvents txtNewPass1 As System.Windows.Forms.TextBox
    Friend WithEvents txtNewPass2 As System.Windows.Forms.TextBox
    Friend WithEvents cmdCancel As System.Windows.Forms.Button
    Friend WithEvents cmdNew As System.Windows.Forms.Button
    Dim WithEvents frmNewUser As New System.Windows.Forms.Form()
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents txtSmanid As System.Windows.Forms.TextBox
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.txtSmanid = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.txtNewPass2 = New System.Windows.Forms.TextBox()
        Me.txtNewPass1 = New System.Windows.Forms.TextBox()
        Me.txtNewUser = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.cmdCancel = New System.Windows.Forms.Button()
        Me.cmdNew = New System.Windows.Forms.Button()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.AddRange(New System.Windows.Forms.Control() {Me.txtSmanid, Me.Label4, Me.txtNewPass2, Me.txtNewPass1, Me.txtNewUser, Me.Label3, Me.Label2, Me.Label1})
        Me.GroupBox1.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(8, 8)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(296, 152)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Enter New Login Details"
        '
        'txtSmanid
        '
        Me.txtSmanid.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtSmanid.Location = New System.Drawing.Point(160, 24)
        Me.txtSmanid.Name = "txtSmanid"
        Me.txtSmanid.Size = New System.Drawing.Size(120, 21)
        Me.txtSmanid.TabIndex = 0
        Me.txtSmanid.Text = ""
        '
        'Label4
        '
        Me.Label4.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label4.Location = New System.Drawing.Point(40, 24)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(120, 23)
        Me.Label4.TabIndex = 3
        Me.Label4.Text = "New SalesMan ID :"
        '
        'txtNewPass2
        '
        Me.txtNewPass2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNewPass2.Location = New System.Drawing.Point(160, 120)
        Me.txtNewPass2.Name = "txtNewPass2"
        Me.txtNewPass2.PasswordChar = Microsoft.VisualBasic.ChrW(42)
        Me.txtNewPass2.Size = New System.Drawing.Size(120, 21)
        Me.txtNewPass2.TabIndex = 3
        Me.txtNewPass2.Text = ""
        '
        'txtNewPass1
        '
        Me.txtNewPass1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNewPass1.Location = New System.Drawing.Point(160, 88)
        Me.txtNewPass1.Name = "txtNewPass1"
        Me.txtNewPass1.PasswordChar = Microsoft.VisualBasic.ChrW(42)
        Me.txtNewPass1.Size = New System.Drawing.Size(120, 21)
        Me.txtNewPass1.TabIndex = 2
        Me.txtNewPass1.Text = ""
        '
        'txtNewUser
        '
        Me.txtNewUser.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNewUser.Location = New System.Drawing.Point(160, 56)
        Me.txtNewUser.Name = "txtNewUser"
        Me.txtNewUser.Size = New System.Drawing.Size(120, 21)
        Me.txtNewUser.TabIndex = 1
        Me.txtNewUser.Text = ""
        '
        'Label3
        '
        Me.Label3.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label3.Location = New System.Drawing.Point(40, 120)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(120, 23)
        Me.Label3.TabIndex = 2
        Me.Label3.Text = "Confirm Password :"
        '
        'Label2
        '
        Me.Label2.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label2.Location = New System.Drawing.Point(40, 88)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(112, 23)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "New Password  :"
        '
        'Label1
        '
        Me.Label1.ForeColor = System.Drawing.SystemColors.ActiveCaption
        Me.Label1.Location = New System.Drawing.Point(40, 56)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(112, 23)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "New User Name :"
        '
        'cmdCancel
        '
        Me.cmdCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel
        Me.cmdCancel.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdCancel.ForeColor = System.Drawing.Color.OrangeRed
        Me.cmdCancel.Location = New System.Drawing.Point(200, 168)
        Me.cmdCancel.Name = "cmdCancel"
        Me.cmdCancel.Size = New System.Drawing.Size(72, 24)
        Me.cmdCancel.TabIndex = 5
        Me.cmdCancel.Text = "&Cancel"
        '
        'cmdNew
        '
        Me.cmdNew.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmdNew.ForeColor = System.Drawing.Color.OrangeRed
        Me.cmdNew.Location = New System.Drawing.Point(120, 168)
        Me.cmdNew.Name = "cmdNew"
        Me.cmdNew.Size = New System.Drawing.Size(72, 24)
        Me.cmdNew.TabIndex = 4
        Me.cmdNew.Text = "&OK"
        '
        'frmNewUser
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(312, 200)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.cmdCancel, Me.cmdNew, Me.GroupBox1})
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmNewUser"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Create New User"
        Me.GroupBox1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub cmdCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdCancel.Click
        Dim frm3 As New frmLogin()
        Me.Close()
        frm3.ShowDialog()
    End Sub
    Private Sub txtsmanid_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtSmanid.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim user_correct As Boolean
            user_correct = False
            sql = "select * from login"
            comm = New SqlClient.SqlCommand(sql, conn)
            Dim adapt As New SqlClient.SqlDataAdapter(comm)
            adapt.Fill(rslogin, "Login")
            te1 = UCase(Trim(txtSmanid.Text))
            Dim objdatarow As DataRow
            For Each objdatarow In rslogin.Tables("Login").Rows
                If (UCase(objdatarow.Item("salesmanid")) = te1) Then
                    user_correct = True
                End If
            Next
            If user_correct = False Then
                objdatarow = Nothing
                comm.Dispose()
                comm = Nothing
                'rslogin.Dispose()
                'rslogin = Nothing
                adapt.Dispose()
                adapt = Nothing
                txtNewUser.Focus()
            Else
                MsgBox("SalesManid " + te1 + " already exists")
                txtSmanid.Focus()
            End If
            user_correct = Nothing
        End If
        te1 = Nothing
    End Sub
    Private Sub txtNewUser_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNewUser.KeyPress
        If Asc(e.KeyChar) = 13 Then
            Dim user_correct As Boolean
            user_correct = False
            sql = "select * from login"
            comm = New SqlClient.SqlCommand(sql, conn)
            Dim adapt As New SqlClient.SqlDataAdapter(comm)
            adapt.Fill(rslogin, "Login")
            te2 = UCase(Trim(txtNewUser.Text))
            Dim objdatarow As DataRow
            For Each objdatarow In rslogin.Tables("Login").Rows
                If (UCase(objdatarow.Item("loginid")) = te2) Then
                    user_correct = True
                End If
            Next
            If user_correct = False Then
                objdatarow = Nothing
                comm.Dispose()
                comm = Nothing
                'rslogin.Dispose()
                'rslogin = Nothing
                adapt.Dispose()
                adapt = Nothing
                txtNewPass1.Focus()
            Else
                MsgBox("User Name " + te2 + " already exists")
                txtNewUser.Focus()
            End If
            te2 = Nothing
        End If
    End Sub

    Private Sub txtNewPass1_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNewPass1.KeyPress
        If Asc(e.KeyChar) = 13 Then
            txtNewPass2.Focus()
        End If
    End Sub
    Private Sub txtNewPass2_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles txtNewPass2.KeyPress
        If Asc(e.KeyChar) = 13 Then
            cmdNew.Focus()
        End If
    End Sub

    Private Sub cmdNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdNew.Click
        sql = "select * from login"
        comm = New SqlCommand(sql, conn)
        Dim adapt As New SqlDataAdapter(comm)
        adapt.Fill(rslogin, "Login")
        sql = "insert into login (salesmanid,loginid,password,expired) " & _
              "values ('" & Trim(txtSmanid.Text) & "','" & LCase(Trim(txtNewUser.Text)) & "', " & _
              "'" & encrypt_pass(txtNewPass1.Text) & "','0')"

        comm.CommandType = CommandType.Text
        comm.CommandText = sql
        adapt = New SqlDataAdapter(comm)
        Try
            adapt.Fill(rslogin, "login")
            'rslogin.Dispose()
            'adapt.Fill(rslogin, "Login")
            MessageBox.Show("New SalesMan " + UCase(Trim(txtSmanid.Text)) + " Details SuccessFully Added")
            adapt.Dispose()
            adapt = Nothing
            comm.Dispose()
            comm = Nothing
            sql = Nothing
            Me.Dispose(True)
            Dim frm As New frmLogin()
            frm.Show()


        Catch Except As SqlException
            MessageBox.Show(Except.Message)
        End Try
    End Sub
    Private Function check_user() As Boolean

    End Function

    Private Sub txtSmanid_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles txtSmanid.TextChanged

    End Sub
End Class


