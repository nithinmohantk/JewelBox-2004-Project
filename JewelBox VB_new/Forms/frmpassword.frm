VERSION 5.00
Begin VB.Form frmpassword 
   BackColor       =   &H00404040&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "User Login"
   ClientHeight    =   2130
   ClientLeft      =   3105
   ClientTop       =   3165
   ClientWidth     =   5505
   ForeColor       =   &H00404040&
   Icon            =   "frmpassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2130
   ScaleWidth      =   5505
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   3960
      TabIndex        =   10
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New User"
      Height          =   375
      Left            =   2520
      TabIndex        =   9
      Top             =   1560
      Width           =   1215
   End
   Begin VB.ComboBox cboCounter 
      Height          =   315
      ItemData        =   "frmpassword.frx":23D2
      Left            =   240
      List            =   "frmpassword.frx":246C
      TabIndex        =   4
      Top             =   960
      Width           =   975
   End
   Begin VB.TextBox txtUser 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   2760
      MaxLength       =   50
      TabIndex        =   0
      Top             =   750
      Width           =   2265
   End
   Begin VB.TextBox txtPass 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2760
      MaxLength       =   50
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1200
      Width           =   2265
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "PASS WORD :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   1560
      TabIndex        =   8
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "USER NAME :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   1530
      TabIndex        =   7
      Top             =   765
      Width           =   1215
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "This is for the security of the system."
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   5295
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "COUNTER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   720
      Width           =   975
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000040C0&
      BorderColor     =   &H00808080&
      BorderWidth     =   5
      Height          =   2085
      Left            =   30
      Top             =   0
      Width           =   5445
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Caption         =   "Label2"
      Height          =   255
      Index           =   1
      Left            =   2970
      TabIndex        =   3
      Top             =   1170
      Width           =   2145
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Caption         =   "Label2"
      Height          =   255
      Index           =   0
      Left            =   2955
      TabIndex        =   2
      Top             =   720
      Width           =   2145
   End
End
Attribute VB_Name = "frmpassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Integer
Dim Y As Integer
Private Sub cboCounter_Click()
If Not cboCounter.Text = "" Then
   txtUser.SetFocus
Else
   MsgBox "please enter counter id"
   cboCounter.SetFocus
End If
End Sub

Private Sub cboCounter_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
 If Not cboCounter.Text = "" Then
   txtUser.SetFocus
Else
   MsgBox "please enter counter id"
   cboCounter.SetFocus
End If
End If
End Sub

Private Sub cmdCancel_Click()
End
End Sub

Private Sub cmdNew_Click()
called = False
frmpassword.Hide
Load frmNewUser
frmNewUser.Show
End Sub

Private Sub Form_Activate()
cboCounter.SetFocus
End Sub

Private Sub txtUser_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If rsLogin.State = 1 Then rsLogin.Close
        rsLogin.Open
        rsLogin.Find "loginid = '" & LCase(Trim(txtUser.Text)) & "'"
        If rsLogin.EOF Then
            MsgBox "Invalid UserName : " & UCase(txtUser.Text), vbCritical, "Invalid UserName"
        Else
           If rsLogin!expired = 0 Then
            If rsLogin!LOGINID = LCase(Trim(txtUser.Text)) Then
               txtPass.SetFocus
            End If
           Else
              MsgBox "Login Expired for : " & UCase(txtUser.Text), vbCritical, "LOGIN EXPIRED"
              txtUser.SetFocus
           End If
        End If
   Y = Y + 1
   If Y = 3 Then
     MsgBox "Sorry  " & txtUser.Text & "  you have exceeded the retry level,three trials only", vbInformation, "Message"
   End
   End If
 End If
End Sub

Private Sub txtPass_KeyPress(KeyAscii As Integer)
counter = Val(Trim(cboCounter.Text))
If KeyAscii = 13 Then
  If rsLogin.State = 1 Then rsLogin.Close
  rsLogin.Open "login", conn, adOpenDynamic, adLockOptimistic
  rsLogin.Find "loginid = '" & LCase(Trim(txtUser.Text)) & "'"
  If Trim(txtPass.Text) = decrypt_pass(rsLogin!Password) Then
      logpass = decrypt_pass(rsLogin!Password)
      loguser = UCase(Trim(txtUser.Text))
      smanid = UCase(Trim(rsLogin!SALESMANID))
      Unload frmpassword
      Load frmMain
      frmMain.Show
      MsgBox "Access Granted,Today " & DateTime.Now & vbCrLf & "Welcome '" & loguser & "' To " & App.ProductName & " - " & App.Major & "." & App.Minor & "." & App.Revision & " - " & App.Comments & vbCrLf & "Have a Nice Day !!", vbInformation + vbOKOnly, "Welcome User"
      If UseWizard = True Then
        Load frmWizard
        frmWizard.Show
      End If
  Else
      MsgBox "Invalid password  for " & UCase(Trim(txtUser.Text)), vbCritical, "Message"
      txtPass.Text = ""
  X = X + 1
  Exit Sub
  End If
If X = 3 Then
MsgBox "Sorry  " & txtUser.Text & "  three trials only", vbInformation, "Message"
End
End If

End If
End Sub
