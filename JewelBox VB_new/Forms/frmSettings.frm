VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmSettings 
   Caption         =   "Sample Form"
   ClientHeight    =   4245
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6660
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4245
   ScaleWidth      =   6660
   Begin VB.PictureBox SkinForm1 
      Height          =   480
      Left            =   120
      ScaleHeight     =   420
      ScaleWidth      =   420
      TabIndex        =   7
      Top             =   0
      Width           =   480
   End
   Begin TabDlg.SSTab Tab2 
      Height          =   4215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   7435
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "Skin Settings"
      TabPicture(0)   =   "frmSettings.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SkinButton1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "SkinButton2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "SkinPanel1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "SkinScrollBar1"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "SkinScrollBar2"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "File1"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Text1"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "chkUseSkin"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "SkinForm2"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).ControlCount=   9
      TabCaption(1)   =   "User Settings"
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Agent Settings"
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      Begin VB.PictureBox SkinForm2 
         Height          =   480
         Left            =   1680
         ScaleHeight     =   420
         ScaleWidth      =   420
         TabIndex        =   9
         Top             =   480
         Width           =   480
      End
      Begin VB.CheckBox chkUseSkin 
         Caption         =   "Use Skins"
         Height          =   375
         Left            =   2160
         TabIndex        =   8
         Top             =   1800
         Width           =   1335
      End
      Begin VB.TextBox Text1 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1080
         TabIndex        =   3
         Text            =   "Text"
         Top             =   840
         Width           =   4935
      End
      Begin VB.FileListBox File1 
         Height          =   1650
         Left            =   360
         TabIndex        =   1
         Top             =   1200
         Width           =   1575
      End
      Begin VB.PictureBox SkinScrollBar2 
         Height          =   2895
         Left            =   6120
         ScaleHeight     =   2835
         ScaleWidth      =   195
         TabIndex        =   2
         Top             =   480
         Width           =   255
      End
      Begin VB.PictureBox SkinScrollBar1 
         Height          =   255
         Left            =   360
         ScaleHeight     =   195
         ScaleWidth      =   5595
         TabIndex        =   4
         Top             =   3240
         Width           =   5655
      End
      Begin VB.PictureBox SkinPanel1 
         Height          =   3255
         Left            =   120
         ScaleHeight     =   3195
         ScaleWidth      =   6315
         TabIndex        =   6
         Top             =   360
         Width           =   6375
      End
      Begin VB.PictureBox SkinButton2 
         Height          =   375
         Left            =   5040
         ScaleHeight     =   315
         ScaleWidth      =   1275
         TabIndex        =   10
         Top             =   3720
         Width           =   1335
      End
      Begin VB.PictureBox SkinButton1 
         Height          =   375
         Left            =   3600
         ScaleHeight     =   315
         ScaleWidth      =   1275
         TabIndex        =   5
         Top             =   3720
         Width           =   1335
      End
   End
End
Attribute VB_Name = "frmSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim skinstate As Boolean
Private Sub chkUseSkin_Click()
If chkUseSkin.Value = vbChecked Then
    Text1.Text = App.Path & "\Skins\" & "winaqua.skn"
    File1.Enabled = True
    UseSkin = True
Else
    UseSkin = False
    File1.Enabled = False
End If
End Sub

Private Sub File1_Click()
If UseSkin = True Then
    skinname = App.Path & "\Skins\" & File1.FileName
End If
Call Form_Activate
End Sub

Private Sub Form_Activate()
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub Form_Load()
GetFormSettings Me
skinstate = UseSkin
File1.Path = App.Path & "\Skins\"
File1.Pattern = "*.skn"
If UseSkin = True Then
    File1.Enabled = True
    chkUseSkin.Value = vbChecked
    ApplySkinForm
Else
    File1.Enabled = False
    chkUseSkin.Value = vbUnchecked
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
SaveFormSettings Me
If UseSkin = True Then
    skinname = SkinForm1.SkinPath
    frmMain.SkinForm1.SkinPath = skinname
    frmMain.SkinForm1.AdjustSize = True
End If
End Sub

Private Sub SkinButton1_Click()
skinname = App.Path & "\Skins\" & ""
If UseSkin = True Then
    frmMain.SkinForm1.SkinPath = skinname
    frmMain.SkinForm1.AdjustSize = True
End If
Unload Me
End Sub
Private Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
SkinForm2.SkinPath = skinname
SkinLabel1.ApplySkin SkinForm2
SkinButton1.ApplySkin SkinForm2
SkinPanel1.ApplySkin SkinForm2
SkinButton2.ApplySkin SkinForm2
SkinScrollBar1.ApplySkin SkinForm2
SkinScrollBar2.ApplySkin SkinForm2
SkinForm2.AdjustSize = True
SkinForm1.AdjustSize = True
End Sub

Private Sub SkinButton2_Click()
UseSkin = skinstate
End Sub

