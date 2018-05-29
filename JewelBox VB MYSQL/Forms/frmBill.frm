VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmBill 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sales and  Purchase Bill"
   ClientHeight    =   4650
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5160
   Icon            =   "frmBill.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4650
   ScaleWidth      =   5160
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "frmBill.frx":23D2
      TabIndex        =   6
      Top             =   3000
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "frmBill.frx":245E
      TabIndex        =   7
      Top             =   2640
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "frmBill.frx":24FE
      TabIndex        =   8
      Top             =   2280
      Width           =   2175
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "frmBill.frx":2592
      TabIndex        =   9
      Top             =   1920
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
      Height          =   255
      Left            =   840
      OleObjectBlob   =   "frmBill.frx":261C
      TabIndex        =   10
      Top             =   1560
      Width           =   1215
   End
   Begin VB.OptionButton Option1 
      Height          =   255
      Left            =   600
      TabIndex        =   15
      Top             =   1560
      Width           =   255
   End
   Begin VB.OptionButton Option2 
      Height          =   255
      Left            =   600
      TabIndex        =   14
      Top             =   1920
      Width           =   255
   End
   Begin VB.OptionButton Option3 
      Height          =   255
      Left            =   600
      TabIndex        =   13
      Top             =   2280
      Width           =   255
   End
   Begin VB.OptionButton Option4 
      Height          =   255
      Left            =   600
      TabIndex        =   12
      Top             =   2640
      Width           =   255
   End
   Begin VB.OptionButton Option5 
      Height          =   255
      Left            =   600
      TabIndex        =   11
      Top             =   3000
      Width           =   255
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmBill.frx":26A0
      TabIndex        =   5
      Top             =   1200
      Width           =   1935
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   375
      Left            =   960
      OleObjectBlob   =   "frmBill.frx":272E
      TabIndex        =   0
      Top             =   120
      Width           =   3375
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdNew 
      Height          =   375
      Left            =   3600
      OleObjectBlob   =   "frmBill.frx":27C5
      TabIndex        =   3
      Top             =   1920
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdCancel 
      Height          =   375
      Left            =   3600
      OleObjectBlob   =   "frmBill.frx":284B
      TabIndex        =   2
      Top             =   3120
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdGenerate 
      Height          =   375
      Left            =   3600
      OleObjectBlob   =   "frmBill.frx":28D7
      TabIndex        =   1
      Top             =   2520
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   120
      OleObjectBlob   =   "frmBill.frx":2967
      TabIndex        =   4
      Top             =   120
      Width           =   480
   End
End
Attribute VB_Name = "frmBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Load()
ApplySkinForm
End Sub
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdNew_Click()
cmdNew.Visible = False
End Sub


Public Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
cmdCancel.ApplySkin SkinForm1
cmdGenerate.ApplySkin SkinForm1
cmdNew.ApplySkin SkinForm1
SkinLabel1.ApplySkin SkinForm1
SkinLabel2.ApplySkin SkinForm1
SkinLabel5.ApplySkin SkinForm1
SkinLabel6.ApplySkin SkinForm1
SkinLabel7.ApplySkin SkinForm1
SkinLabel8.ApplySkin SkinForm1
SkinLabel9.ApplySkin SkinForm1
End Sub

