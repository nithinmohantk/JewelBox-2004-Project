VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Object = "{608009F3-E1FB-11D2-9BA1-0040D0002C80}#1.0#0"; "NSLock15vb6.ocx"
Begin VB.Form frmRegister 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Please, register !"
   ClientHeight    =   2910
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   5100
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   5100
   Begin ACTIVESKINLibCtl.SkinButton cmdCancel 
      Height          =   375
      Left            =   3720
      OleObjectBlob   =   "frmRegister.frx":0000
      TabIndex        =   8
      Top             =   2400
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdRegister 
      Height          =   375
      Left            =   2640
      OleObjectBlob   =   "frmRegister.frx":008C
      TabIndex        =   7
      Top             =   2400
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   1320
      OleObjectBlob   =   "frmRegister.frx":011C
      TabIndex        =   6
      Top             =   1560
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   1320
      OleObjectBlob   =   "frmRegister.frx":01AA
      TabIndex        =   5
      Top             =   1200
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   375
      Left            =   120
      OleObjectBlob   =   "frmRegister.frx":0236
      TabIndex        =   4
      Top             =   600
      Width           =   4815
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   375
      Left            =   120
      OleObjectBlob   =   "frmRegister.frx":0334
      TabIndex        =   3
      Top             =   240
      Width           =   4935
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   240
      OleObjectBlob   =   "frmRegister.frx":0434
      TabIndex        =   2
      Top             =   1200
      Width           =   480
   End
   Begin nslock15vb6.ActiveLock ActiveLock1 
      Left            =   360
      Top             =   1680
      _ExtentX        =   847
      _ExtentY        =   820
      Password        =   "velocity"
      SoftwareName    =   "JewelBox 2004"
      LiberationKeyLength=   16
      SoftwareCodeLength=   16
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2640
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   1560
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H8000000F&
      Height          =   285
      Left            =   2640
      Locked          =   -1  'True
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   1200
      Width           =   2295
   End
End
Attribute VB_Name = "frmRegister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdCancel_Click()
If ActiveLock1.UsedDays > 21 And Not ActiveLock1.RegisteredUser Then
    frmMsgBox.ShowMessage "Your Evaluation has expaired"
    End
Else
    If ActiveLock1.UsedDays < 21 And Not ActiveLock1.RegisteredUser Then
        frmMain.Caption = "JewelBox 2004 0.99 Evaluation Version"
        frmMain.Show
    End If
End If
Unload Me
End Sub

Private Sub cmdRegister_Click()
  ' Set the LiberationKey:
  If cmdRegister.Text = "&Register" Then
    ActiveLock1.LiberationKey = Text2
  ' Check if it was correct:
    If Not (ActiveLock1.RegisteredUser) Then
        Unload Me
        frmMsgBox.ShowMessage "Invalid liberation key!"
        If ActiveLock1.UsedDays <= 21 Then
            frmMain.Caption = "JewelBox 2004 v0.99 beta1 Evaluation Version"
            frmMain.Show
        Else
            frmMsgBox.ShowMessage "Your Evaluation Period is over"
            End
        End If
    Else
        Unload Me
        frmMsgBox.ShowMessage "Thank you for registering!"
        frmMain.Show
    End If
Else
    ActiveLock1.LiberationKey = "0"
    frmMsgBox.ShowMessage "You have unregistered successfully"
    Unload Me
End If
End Sub


Private Sub Form_Load()
    ApplySkinForm
    If Not ActiveLock1.RegisteredUser Then
        Text1 = ActiveLock1.SoftwareCode
        Text2 = "0"
    Else
        cmdRegister.Text = "&UnRegister"
        Text1 = ActiveLock1.SoftwareCode
        Text2 = "0"
        Load frmMain
        frmMain.Show
    End If
End Sub
Private Sub ApplySkinForm()
SkinForm1.SkinPath = App.Path + "\Skins\winaqua.skn"
SkinForm1.AdjustSize = True
SkinLabel1.ApplySkin SkinForm1
SkinLabel2.ApplySkin SkinForm1
SkinLabel3.ApplySkin SkinForm1
SkinLabel4.ApplySkin SkinForm1
cmdRegister.ApplySkin SkinForm1
cmdCancel.ApplySkin SkinForm1
End Sub

