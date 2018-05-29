VERSION 5.00
Begin VB.Form frmRegister 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Register JewelBox 2004"
   ClientHeight    =   3495
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5235
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3495
   ScaleWidth      =   5235
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdRegister 
      Caption         =   "&Register"
      Height          =   375
      Left            =   3000
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   4080
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   2160
      Width           =   855
   End
   Begin VB.Frame Frame1 
      Caption         =   "Please Enter Your Registration details"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Width           =   4935
      Begin VB.TextBox txtRegID3 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   3480
         MaxLength       =   15
         TabIndex        =   12
         Top             =   1080
         Width           =   615
      End
      Begin VB.TextBox txtRegID2 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   2640
         MaxLength       =   15
         TabIndex        =   11
         Top             =   1080
         Width           =   735
      End
      Begin VB.TextBox txtCompany 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1800
         TabIndex        =   1
         Top             =   720
         Width           =   3015
      End
      Begin VB.TextBox txtRegID1 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1800
         MaxLength       =   50
         TabIndex        =   2
         Top             =   1080
         Width           =   735
      End
      Begin VB.TextBox txtregName 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1800
         TabIndex        =   0
         Top             =   360
         Width           =   3015
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Company Name  :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   180
         TabIndex        =   8
         Top             =   720
         Width           =   1575
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   " Registered Name:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label txtRegI1 
         BackStyle       =   0  'Transparent
         Caption         =   "Registration ID   :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   255
         Left            =   180
         TabIndex        =   6
         Top             =   1080
         Width           =   1575
      End
   End
   Begin VB.Label lblEvaluation 
      BackStyle       =   0  'Transparent
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   855
      Left            =   120
      TabIndex        =   10
      Top             =   2640
      Width           =   4935
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Registration must be done inorder to use the software."
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   375
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   4935
   End
End
Attribute VB_Name = "frmRegister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
Unload Me
If called_by = False Then
If expired = False And reg_done = False Then
    Call SaveSettings
    Call LoadSettings
    Load frmSplash
    frmSplash.Show
ElseIf reg_done = True Then
     Call SaveSettings
     Call LoadSettings
    Load frmpassword
    frmpassword.Show
ElseIf expired = True Then
    ans = MsgBox("cannot continue with out Registering" & vbCrLf & "Do you want to register JewelBox 2004 ??", vbCritical + vbYesNo, "EVALUATION EXPIRED")
    If ans = vbYes Then
        frmRegister.Show
    Else
        End
    End If
    Call SaveSettings
    Call LoadSettings
End If
End If
End Sub
Private Sub cmdRegister_Click()
reg_user = Trim(txtregName.Text)
reg_key = Trim(txtRegID1.Text) & "-" & Trim(txtRegID2.Text) & "-" & Trim(txtRegID3.Text)
MsgBox reg_key
reg_company = Trim(txtCompany.Text)
first_reg = True
Call SaveSettings
Call LoadSettings
Unload Me
If called_by = False Then
Load frmSplash
frmSplash.Show
End If
End Sub

Private Sub Form_Load()
cmdRegister.Enabled = True
If reg_done = True Then
    cmdRegister.Enabled = False
    txtCompany.Enabled = False
    txtregName.Enabled = False
    txtRegID1.Width = 2000
    txtRegID1.Enabled = False
    txtRegID2.Visible = False
    txtRegID3.Visible = False
    txtCompany.Text = reg_company
    txtregName.Text = reg_user
    txtRegID1.Text = decrypt_pass(reg_id)
    lblEvaluation.Caption = "Registered Version"
ElseIf reg_done = False Then
    lblEvaluation.Caption = "You have only " & 100 - try_day & " Trys are Left,Register it immediately"
    If try_day > 100 Then
       expired = True
       Call SaveSettings
       Call LoadSettings
       lblEvaluation.Caption = "Your Evaluation usage days are over," & vbCrLf & "Register Jewel Box inorder to continue using it."
    End If
End If
End Sub

Private Sub txtRegID1_KeyPress(KeyAscii As Integer)
If Len(Trim(txtRegID1.Text)) = 5 Then
  txtRegID2.SetFocus
End If
End Sub
Private Sub txtRegID2_KeyPress(KeyAscii As Integer)
If Len(Trim(txtRegID2.Text)) = 6 Then
  txtRegID3.SetFocus
End If
End Sub
Private Sub txtRegID3_KeyPress(KeyAscii As Integer)
If Len(Trim(txtRegID3.Text)) = 4 Then
  cmdRegister.SetFocus
End If
End Sub


Private Sub txtregName_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If Not txtregName.Text = "" Then
      txtCompany.SetFocus
   Else
      MsgBox "Registration Name Cannot be Empty"
      txtregName.SetFocus
   End If
End If
End Sub
Private Sub txtCompany_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If Not txtCompany.Text = "" Then
      txtRegID1.SetFocus
   Else
      MsgBox "Company Name Cannot be Empty"
      txtCompany.SetFocus
   End If
End If
End Sub

'Private Sub txtRegID_KeyPress(KeyAscii As Integer)
'If KeyAscii = 13 Then
'   If Not txtRegID.Text = "" Then
'      cmdRegister.SetFocus
'   Else
'      MsgBox "Registration-Key Cannot be Empty"
'      txtRegID.SetFocus
'   End If
'End If
'End Sub
