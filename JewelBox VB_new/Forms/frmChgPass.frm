VERSION 5.00
Begin VB.Form frmChgPass 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Change Password"
   ClientHeight    =   3645
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4680
   ControlBox      =   0   'False
   Icon            =   "frmChgPass.frx":0000
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3645
   ScaleWidth      =   4680
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&CANCEL"
      Height          =   375
      Left            =   3600
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   3120
      Width           =   855
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   2520
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   3120
      Width           =   855
   End
   Begin VB.CommandButton cmdAccept 
      Caption         =   "&ACCEPT"
      Height          =   375
      Left            =   1440
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3120
      Width           =   855
   End
   Begin VB.Frame Frame2 
      Caption         =   "New Password"
      Height          =   1335
      Left            =   120
      TabIndex        =   4
      Top             =   1560
      Width           =   4455
      Begin VB.TextBox txtNewPass2 
         Appearance      =   0  'Flat
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   2040
         MaxLength       =   50
         PasswordChar    =   "*"
         TabIndex        =   16
         Top             =   885
         Width           =   2265
      End
      Begin VB.TextBox txtNewPass1 
         Appearance      =   0  'Flat
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   2040
         MaxLength       =   50
         PasswordChar    =   "*"
         TabIndex        =   14
         Top             =   405
         Width           =   2265
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0C0C0&
         Height          =   255
         Index           =   3
         Left            =   2085
         TabIndex        =   15
         Top             =   840
         Width           =   2265
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0C0C0&
         Height          =   255
         Index           =   2
         Left            =   2085
         TabIndex        =   13
         Top             =   360
         Width           =   2265
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "NEW PASSWORD:"
         BeginProperty Font 
            Name            =   "Times New Roman"
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
         Top             =   405
         Width           =   1695
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "REENTER PASSWORD :"
         BeginProperty Font 
            Name            =   "Times New Roman"
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
         TabIndex        =   5
         Top             =   930
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Login and Old Password"
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4455
      Begin VB.TextBox txtPass 
         Appearance      =   0  'Flat
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   2040
         MaxLength       =   50
         PasswordChar    =   "*"
         TabIndex        =   12
         Top             =   885
         Width           =   2265
      End
      Begin VB.TextBox txtUser 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   2040
         MaxLength       =   50
         TabIndex        =   10
         Top             =   405
         Width           =   2265
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0C0C0&
         Height          =   255
         Index           =   1
         Left            =   2085
         TabIndex        =   11
         Top             =   840
         Width           =   2265
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0C0C0&
         Height          =   255
         Index           =   0
         Left            =   2085
         TabIndex        =   3
         Top             =   360
         Width           =   2265
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "USER ID :"
         BeginProperty Font 
            Name            =   "Times New Roman"
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
         TabIndex        =   2
         Top             =   405
         Width           =   1215
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "OLD PASSWORD :"
         BeginProperty Font 
            Name            =   "Times New Roman"
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
         TabIndex        =   1
         Top             =   930
         Width           =   1575
      End
   End
End
Attribute VB_Name = "frmChgPass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAccept_Click()
newpass1 = Trim(txtNewPass1.Text)
newpass2 = Trim(txtNewPass2.Text)
If rsLogin.State = 0 Then rsLogin.Open
rsLogin.Find "LOGINID = '" & LCase(loguser) & "'"
If Not rsLogin.EOF Then
   If decrypt_pass(rsLogin!Password) = Trim(txtPass.Text) Then
        If Trim(txtNewPass1.Text) = Trim(txtNewPass2.Text) Then
            rsLogin!Password = encrypt_pass(Trim(txtNewPass1.Text))
            rsLogin.Update
            rsLogin.Close
            Call CommitDB
            MsgBox "Password Changed Successfully" & vbCrLf & "Please Re-login using new password", vbInformation + vbOKOnly, "PASSWORD CHANGED"
            pass_changed = True
        Else
            MsgBox "New Passwords & Retyped passwords doesn't match"
        End If
   Else
      MsgBox "Password incorrect"
   End If
Else
   MsgBox "User Name incorrect"
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdOK_Click()
If pass_changed = False Then
   Call cmdAccept_Click
   Unload Me
Else
   Unload Me
End If
End Sub

Private Sub Form_Load()
Me.Top = 200
Me.Left = 500
txtUser.Text = loguser
txtUser.Enabled = False
pass_changed = False
End Sub
