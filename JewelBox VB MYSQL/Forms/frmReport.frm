VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmReport 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "View Report"
   ClientHeight    =   4935
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4920
   Icon            =   "frmReport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4935
   ScaleWidth      =   4920
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmReport.frx":23D2
      TabIndex        =   21
      Top             =   4080
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
      Height          =   255
      Left            =   240
      OleObjectBlob   =   "frmReport.frx":244C
      TabIndex        =   20
      Top             =   720
      Width           =   1695
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
      Height          =   375
      Left            =   240
      OleObjectBlob   =   "frmReport.frx":24C6
      TabIndex        =   19
      Top             =   3120
      Width           =   1815
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":2540
      TabIndex        =   18
      Top             =   3600
      Width           =   1215
   End
   Begin VB.OptionButton Option6 
      Caption         =   "Option6"
      Height          =   255
      Left            =   360
      TabIndex        =   17
      Top             =   3600
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinPanel SkinPanel2 
      Height          =   975
      Left            =   120
      OleObjectBlob   =   "frmReport.frx":25C8
      TabIndex        =   16
      Top             =   3000
      Width           =   2775
   End
   Begin ACTIVESKINLibCtl.SkinButton SkinButton2 
      Height          =   375
      Left            =   3240
      OleObjectBlob   =   "frmReport.frx":264C
      TabIndex        =   14
      Top             =   1920
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinButton SkinButton1 
      Height          =   375
      Left            =   3240
      OleObjectBlob   =   "frmReport.frx":26D8
      TabIndex        =   13
      Top             =   1440
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
      Height          =   495
      Left            =   1080
      OleObjectBlob   =   "frmReport.frx":275C
      TabIndex        =   15
      Top             =   4080
      Width           =   3855
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":289C
      TabIndex        =   12
      Top             =   2520
      Width           =   1095
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Option5"
      Height          =   255
      Left            =   360
      TabIndex        =   11
      Top             =   2520
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":2918
      TabIndex        =   10
      Top             =   2160
      Width           =   1215
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Option4"
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   2160
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":2996
      TabIndex        =   8
      Top             =   1800
      Width           =   1215
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Option3"
      Height          =   255
      Left            =   360
      TabIndex        =   7
      Top             =   1800
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":2A12
      TabIndex        =   6
      Top             =   1440
      Width           =   1215
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Option2"
      Height          =   255
      Left            =   360
      TabIndex        =   5
      Top             =   1440
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   600
      OleObjectBlob   =   "frmReport.frx":2A8E
      TabIndex        =   4
      Top             =   1080
      Width           =   1575
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   1080
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   375
      Left            =   240
      OleObjectBlob   =   "frmReport.frx":2B18
      TabIndex        =   2
      Top             =   120
      Width           =   2415
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   3120
      OleObjectBlob   =   "frmReport.frx":2BAF
      TabIndex        =   0
      Top             =   120
      Width           =   480
   End
   Begin ACTIVESKINLibCtl.SkinPanel SkinPanel1 
      Height          =   2295
      Left            =   120
      OleObjectBlob   =   "frmReport.frx":2C70
      TabIndex        =   1
      Top             =   600
      Width           =   2775
   End
End
Attribute VB_Name = "frmReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
ApplySkinForm
End Sub

Public Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
SkinButton1.ApplySkin SkinForm1
SkinButton2.ApplySkin SkinForm1
SkinPanel1.ApplySkin SkinForm1
SkinPanel2.ApplySkin SkinForm1
SkinLabel1.ApplySkin SkinForm1
SkinLabel2.ApplySkin SkinForm1
SkinLabel3.ApplySkin SkinForm1
SkinLabel4.ApplySkin SkinForm1
SkinLabel5.ApplySkin SkinForm1
SkinLabel6.ApplySkin SkinForm1
SkinLabel7.ApplySkin SkinForm1
SkinLabel8.ApplySkin SkinForm1
SkinLabel9.ApplySkin SkinForm1
SkinLabel10.ApplySkin SkinForm1
SkinLabel11.ApplySkin SkinForm1
End Sub

Private Sub SkinButton2_Click()
Unload Me
End Sub

