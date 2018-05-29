VERSION 5.00
Begin VB.Form frmSplash1 
   BackColor       =   &H80000005&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2865
   ClientLeft      =   15
   ClientTop       =   15
   ClientWidth     =   4770
   ControlBox      =   0   'False
   Icon            =   "frmSplash1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2865
   ScaleWidth      =   4770
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   13
      Left            =   240
      Top             =   480
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H80000007&
      Height          =   2880
      Left            =   0
      Picture         =   "frmSplash1.frx":23D2
      ScaleHeight     =   2820
      ScaleWidth      =   4695
      TabIndex        =   0
      Top             =   0
      Width           =   4755
   End
End
Attribute VB_Name = "frmSplash1"
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
    ProgressBar201.Value = i
ElseIf i = 100 Then
    Unload Me
    Load frmpassword
    frmpassword.Show
End If
End Sub
