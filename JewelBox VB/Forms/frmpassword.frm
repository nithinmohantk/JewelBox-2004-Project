VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmpassword 
   BackColor       =   &H00404040&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "User Login"
   ClientHeight    =   2730
   ClientLeft      =   3105
   ClientTop       =   3165
   ClientWidth     =   5745
   ForeColor       =   &H00404040&
   Icon            =   "frmpassword.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2730
   ScaleWidth      =   5745
   ShowInTaskbar   =   0   'False
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   5160
      OleObjectBlob   =   "frmpassword.frx":23D2
      TabIndex        =   4
      Top             =   240
      Width           =   480
   End
   Begin VB.TextBox txtUser 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1800
      MaxLength       =   50
      TabIndex        =   0
      Top             =   1230
      Width           =   2265
   End
   Begin VB.TextBox txtPass 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1800
      MaxLength       =   50
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1680
      Width           =   2265
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   720
      OleObjectBlob   =   "frmpassword.frx":249F
      TabIndex        =   5
      Top             =   1230
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   720
      OleObjectBlob   =   "frmpassword.frx":2521
      TabIndex        =   6
      Top             =   1680
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   375
      Left            =   360
      OleObjectBlob   =   "frmpassword.frx":25A1
      TabIndex        =   7
      Top             =   240
      Width           =   4695
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   375
      Left            =   720
      OleObjectBlob   =   "frmpassword.frx":265B
      TabIndex        =   8
      Top             =   720
      Width           =   3975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
      Height          =   375
      Left            =   720
      OleObjectBlob   =   "frmpassword.frx":270C
      TabIndex        =   9
      Top             =   2160
      Width           =   4215
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000040C0&
      BorderColor     =   &H00808080&
      BorderWidth     =   5
      Height          =   2685
      Left            =   30
      Top             =   0
      Width           =   5685
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Caption         =   "Label2"
      Height          =   255
      Index           =   1
      Left            =   2010
      TabIndex        =   3
      Top             =   1650
      Width           =   2145
   End
   Begin VB.Label Label2 
      BackColor       =   &H00808080&
      Caption         =   "Label2"
      Height          =   255
      Index           =   0
      Left            =   2010
      TabIndex        =   2
      Top             =   1200
      Width           =   2145
   End
End
Attribute VB_Name = "frmpassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Integer

Private Sub ApplySkinForm()
 SkinForm1.SkinPath = skinname
 SkinLabel1.ApplySkin SkinForm1
 SkinLabel2.ApplySkin SkinForm1
 SkinLabel3.ApplySkin SkinForm1
 SkinLabel4.ApplySkin SkinForm1
 SkinLabel5.ApplySkin SkinForm1
End Sub

Private Sub Form_Load()
'GetFormSettings Me
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
'SaveFormSettings Me
End Sub
Private Sub Form_Activate()
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub txtUser_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   sql = "select * from Login where LOGINID = '" & LCase(Trim(txtUser.Text)) & "'"
   If rsLogin.State = 1 Then rsLogin.Close
   Set rsLogin = conn.Execute(sql)
   If rsLogin.EOF Then
    MsgBox "Invalid UserName -> " + txtUser.Text + " <- Please ReEnter UserName", vbInformation, "Invalid UserName"
    Exit Sub
   Else
      rsLogin.MoveFirst
      If rsLogin!LOGINID = LCase(Trim(txtUser.Text)) Then
         txtPass.SetFocus
      End If
   End If
 End If
End Sub

Private Sub txtPass_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  rsLogin.MoveFirst
  If LCase(txtPass.Text) = rsLogin!Password Then
      MsgBox "Access granted  " + txtUser.Text, vbInformation, "Message"
      Unload frmpassword
      Load frmMain
      frmMain.Show
  Else
      MsgBox "Invalid password  for " & txtUser.Text, vbCritical, "Message"
      txtPass.Text = ""
X = X + 1
End If
If X = 3 Then
MsgBox "Sorry  " & txtUser.Text & "  three trials only", vbInformation, "Message"
End
End If

End If
End Sub
