VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmMsgBox 
   Caption         =   "Message"
   ClientHeight    =   2190
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4710
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   2190
   ScaleWidth      =   4710
   StartUpPosition =   2  'CenterScreen
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   3360
      OleObjectBlob   =   "frmMsgBox.frx":0000
      TabIndex        =   3
      Top             =   480
      Width           =   480
   End
   Begin ACTIVESKINLibCtl.SkinButton SkinButton1 
      Height          =   375
      Left            =   1560
      OleObjectBlob   =   "frmMsgBox.frx":00C1
      TabIndex        =   1
      Top             =   1680
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.SkinPanel SkinPanel2 
      Height          =   615
      Left            =   0
      OleObjectBlob   =   "frmMsgBox.frx":0145
      TabIndex        =   0
      Top             =   1560
      Width           =   4695
   End
   Begin ACTIVESKINLibCtl.SkinPanel SkinPanel1 
      Height          =   1455
      Left            =   0
      OleObjectBlob   =   "frmMsgBox.frx":01C9
      TabIndex        =   2
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "frmMsgBox"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Load()
    ApplySkinForm
End Sub
Public Sub ShowMessage(msg As String)
SkinPanel1.Text = msg
Me.Show 1

End Sub

Private Sub SkinButton1_Click()
Unload Me
End Sub
Private Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
SkinForm1.AdjustSize = True
SkinPanel1.ApplySkin SkinForm1
SkinPanel2.ApplySkin SkinForm1
SkinButton1.ApplySkin SkinForm1
End Sub
