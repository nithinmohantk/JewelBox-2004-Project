VERSION 5.00
Begin VB.Form frmDelUser 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Delete User"
   ClientHeight    =   1455
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   4065
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   859.662
   ScaleMode       =   0  'User
   ScaleWidth      =   3816.815
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox txtUserName 
      Appearance      =   0  'Flat
      Height          =   270
      Left            =   1920
      TabIndex        =   1
      Top             =   615
      Width           =   1725
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   1320
      TabIndex        =   2
      Top             =   960
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   390
      Left            =   2640
      TabIndex        =   3
      Top             =   960
      Width           =   1140
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter the LOGINID of the User to be deleted."
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   0
      Width           =   3975
   End
   Begin VB.Label lblLabels 
      Caption         =   "&User Name:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   600
      TabIndex        =   0
      Top             =   630
      Width           =   1200
   End
End
Attribute VB_Name = "frmDelUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub cmdCancel_Click()
    Unload Me
End Sub

Private Sub cmdOK_Click()
       deluser = LCase(Trim(txtUserName.Text))
       Load frmConfirmPass
       frmConfirmPass.Show
       Me.Hide
End Sub

Private Sub Form_Load()
Me.Top = 100
Me.Left = 500
End Sub
