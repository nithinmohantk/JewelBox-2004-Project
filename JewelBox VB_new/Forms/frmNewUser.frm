VERSION 5.00
Begin VB.Form frmNewUser 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Enter New User Information"
   ClientHeight    =   2055
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3885
   ControlBox      =   0   'False
   Icon            =   "frmNewUser.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   3885
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtSalesManID 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   2880
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1560
      Width           =   855
   End
   Begin VB.CommandButton cmdAccept 
      Caption         =   "&Accept"
      Height          =   375
      Left            =   1800
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1560
      Width           =   855
   End
   Begin VB.TextBox txtPass1 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   840
      Width           =   1935
   End
   Begin VB.TextBox txtPass2 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox txtUser 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      TabIndex        =   1
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "SalesMan ID"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "Reenter Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "New User Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   480
      Width           =   1575
   End
End
Attribute VB_Name = "frmNewUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdAccept_Click()
If Not txtUser.Text = "" Then
    If Not txtPass1.Text = "" And Not txtPass2.Text = "" Then
         newpass1 = Trim(txtPass1.Text)
         newpass2 = Trim(txtPass2.Text)
         Call newuser
    Else
       MsgBox "Because of Security reasons EMPTY passwords are not allowed"
       txtPass1.SetFocus
    End If
Else
    MsgBox "You Left UserName field Empty"
End If
End Sub

Private Sub cmdAccept_GotFocus()
If txtPass2.Text = "" Then
     MsgBox "Because of Security reasons EMPTY passwords are not allowed"
     txtPass2.SetFocus
  End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
If called = False Then
frmpassword.Show
End If
End Sub

Private Sub txtPass1_GotFocus()
 If Not txtUser.Text = "" Then
    txtPass1.SetFocus
 Else
    MsgBox "User Name cannot be empty"
 End If
End Sub

Private Sub txtPass1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtPass1.Text = "" Then
     txtPass2.SetFocus
  Else
     MsgBox "Because of Security reasons EMPTY passwords are not allowed"
     txtPass1.SetFocus
  End If
End If
End Sub

Private Function validate() As Boolean
validate = False
If Not rsLogin.RecordCount < 1 Then
If rsLogin.EOF Or rsLogin.BOF Then
  rsLogin.MoveFirst
End If
While Not rsLogin.EOF
   If rsLogin!LOGINID = Trim(LCase(txtUser.Text)) Then
         validate = True
   End If
   rsLogin.MoveNext
Wend
End If
End Function

Private Sub newuser()
Call CommitDB
    If validate = False Then
        If newpass1 = newpass2 Then
            rsLogin.AddNew
            rsLogin!SALESMANID = UCase(Trim(txtSalesManID.Text))
            rsLogin!LOGINID = LCase(Trim(txtUser.Text))
            rsLogin!Password = encrypt_pass(Trim(txtPass1.Text))
            rsLogin!expired = 0
            rsLogin.Update
            Call CommitDB
            MsgBox "New User " & Trim(UCase(txtUser.Text)) & " Successfully Added"
            frmNewUser.Hide
            If called = False Then
            frmpassword.Show
            End If
        Else
            MsgBox "Passwords not match,please reenter it"
            txtPass1.SetFocus
        End If
    ElseIf validate = True Then
        MsgBox "UserName Already Exists"
    End If
End Sub



Private Sub txtPass2_GotFocus()
If Not txtPass1.Text = "" Then
     txtPass2.SetFocus
  Else
     MsgBox "Because of Security reasons EMPTY passwords are not allowed"
     txtPass1.SetFocus
  End If
End Sub
Private Sub txtPass2_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtPass2.Text = "" Then
     cmdAccept.SetFocus
  Else
     MsgBox "Because of Security reasons EMPTY passwords are not allowed"
     txtPass2.SetFocus
  End If
End If
End Sub



Private Sub txtSalesManID_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call val_sman
End If
End Sub

Private Sub txtUser_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
 If Not txtUser.Text = "" Then
    txtPass1.SetFocus
 Else
    MsgBox "User Name cannot be empty"
 End If
End If
End Sub


Public Sub val_sman()
ss = "select * from login where salesmanid = '" & UCase(Trim(txtSalesManID.Text)) & "'"
Set rs = conn.Execute(ss)
If Not rs.EOF Then
   MsgBox "SalesMan iD " & UCase(Trim(txtSalesManID.Text)) & " already exists"
   txtSalesManID.SetFocus
Else
    txtUser.SetFocus
End If
End Sub

