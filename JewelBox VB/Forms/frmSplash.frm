VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.ocx"
Begin VB.Form frmSplash 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2640
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   4770
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2640
   ScaleWidth      =   4770
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   2400
      Width           =   4815
      _ExtentX        =   8493
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H80000007&
      Height          =   2640
      Left            =   0
      Picture         =   "frmSplash.frx":23D2
      ScaleHeight     =   2580
      ScaleWidth      =   4695
      TabIndex        =   0
      Top             =   0
      Width           =   4755
   End
   Begin VB.Timer Timer1 
      Interval        =   13
      Left            =   240
      Top             =   480
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Form_Load()
i = 0
End Sub

Private Sub Timer1_Timer()
If i < 100 Then
    i = i + 1
    ProgressBar1.Value = i
ElseIf i = 100 Then
    Call ConnectDB
    Unload Me
    Load frmpassword
    frmpassword.Show
End If
End Sub
