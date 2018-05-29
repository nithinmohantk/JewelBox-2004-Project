VERSION 5.00
Begin VB.Form frmMsgBox 
   Caption         =   "Message"
   ClientHeight    =   2055
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6135
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   6135
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   0
      TabIndex        =   2
      Top             =   1200
      Width           =   6135
      Begin VB.CommandButton cmdOK 
         Appearance      =   0  'Flat
         Caption         =   "&OK"
         Height          =   495
         Left            =   2040
         TabIndex        =   3
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000004&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   615
      Left            =   0
      Picture         =   "frmMsgBox.frx":0000
      ScaleHeight     =   615
      ScaleWidth      =   615
      TabIndex        =   0
      Top             =   0
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   1095
      Left            =   600
      TabIndex        =   1
      Top             =   0
      Width           =   5535
   End
End
Attribute VB_Name = "frmMsgBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdOK_Click()
Unload Me
End Sub

Private Sub Form_Load()
End Sub
Public Function ShowMessage(msg As String)
Me.Show
Label1.Caption = msg
End Function

