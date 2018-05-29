VERSION 5.00
Begin VB.Form frmConfirmPass 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Confirm ADMININSTRATOR Password"
   ClientHeight    =   990
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   4155
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   584.925
   ScaleMode       =   0  'User
   ScaleWidth      =   3901.32
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   480
      Width           =   1020
   End
   Begin VB.TextBox txtPassword 
      Appearance      =   0  'Flat
      Height          =   255
      IMEMode         =   3  'DISABLE
      Left            =   1680
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   120
      Width           =   1725
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&Password:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   270
      Index           =   1
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   1080
   End
End
Attribute VB_Name = "frmConfirmPass"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdOk_Click()
If confirm_pass(Trim(txtPassword.Text)) = True Then
        Call del_user
Else
   MsgBox "invalid user password"
End If
Me.Hide
End Sub

Private Sub Form_Load()
Me.Left = 3000
Me.Top = 50
End Sub
