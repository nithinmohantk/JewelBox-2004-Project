VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmStock 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stock Manager"
   ClientHeight    =   6675
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7350
   Icon            =   "frmStock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6675
   ScaleWidth      =   7350
   Begin ACTIVESKINLibCtl.SkinLabel lblComment5 
      Height          =   375
      Left            =   6600
      OleObjectBlob   =   "frmStock.frx":23D2
      TabIndex        =   34
      Top             =   5520
      Width           =   495
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblComment4 
      Height          =   255
      Left            =   2760
      OleObjectBlob   =   "frmStock.frx":244C
      TabIndex        =   33
      Top             =   5400
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblComment3 
      Height          =   255
      Left            =   3000
      OleObjectBlob   =   "frmStock.frx":24C8
      TabIndex        =   32
      Top             =   4920
      Width           =   615
   End
   Begin VB.TextBox txtLossWeight 
      Height          =   285
      Left            =   1680
      TabIndex        =   7
      Top             =   4920
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblLossWeight 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":2544
      TabIndex        =   31
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox txtLabourCharge 
      Height          =   285
      Left            =   4800
      TabIndex        =   6
      Top             =   4410
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblLabourCharge 
      Height          =   255
      Left            =   3360
      OleObjectBlob   =   "frmStock.frx":25CE
      TabIndex        =   30
      Top             =   4440
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblComment2 
      Height          =   375
      Left            =   6240
      OleObjectBlob   =   "frmStock.frx":265C
      TabIndex        =   29
      Top             =   4440
      Width           =   495
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblComment1 
      Height          =   255
      Left            =   6240
      OleObjectBlob   =   "frmStock.frx":26D6
      TabIndex        =   28
      Top             =   3960
      Width           =   495
   End
   Begin VB.TextBox txtNetAmount 
      Height          =   285
      Left            =   5160
      TabIndex        =   9
      Top             =   5520
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   3960
      OleObjectBlob   =   "frmStock.frx":2750
      TabIndex        =   27
      Top             =   5520
      Width           =   1215
   End
   Begin VB.TextBox txtNetWeight 
      Height          =   285
      Left            =   1680
      TabIndex        =   8
      Top             =   5400
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblNetWeight 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":27D8
      TabIndex        =   26
      Top             =   5400
      Width           =   1335
   End
   Begin VB.TextBox txtStoneAmount 
      Height          =   285
      Left            =   4800
      TabIndex        =   5
      Top             =   3960
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblStoneAmount 
      Height          =   255
      Left            =   3360
      OleObjectBlob   =   "frmStock.frx":2864
      TabIndex        =   25
      Top             =   3960
      Width           =   1335
   End
   Begin VB.TextBox txtStoneWeight 
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Top             =   3960
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblStone 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":28F0
      TabIndex        =   24
      Top             =   3960
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblWtComment 
      Height          =   255
      Left            =   3120
      OleObjectBlob   =   "frmStock.frx":297A
      TabIndex        =   23
      Top             =   3480
      Width           =   3015
   End
   Begin VB.TextBox txtGrossWeight 
      Height          =   285
      Left            =   1680
      TabIndex        =   3
      Top             =   3480
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblGrossWeight 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":2A3A
      TabIndex        =   22
      Top             =   3480
      Width           =   1335
   End
   Begin VB.TextBox txtItemDes 
      Height          =   1215
      Left            =   2040
      TabIndex        =   2
      Top             =   2040
      Width           =   4575
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblItemDes 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":2AC6
      TabIndex        =   20
      Top             =   2040
      Width           =   1575
   End
   Begin VB.ComboBox cboItemID 
      Height          =   315
      Left            =   1560
      TabIndex        =   1
      Top             =   1560
      Width           =   1695
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblItemID 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":2B5A
      TabIndex        =   19
      Top             =   1560
      Width           =   855
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblItemComment 
      Height          =   255
      Left            =   3480
      OleObjectBlob   =   "frmStock.frx":2BDC
      TabIndex        =   18
      Top             =   1080
      Width           =   3255
   End
   Begin VB.ComboBox cboItemtype 
      Height          =   315
      Left            =   1560
      TabIndex        =   0
      Top             =   1080
      Width           =   1695
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdCancel 
      Height          =   375
      Left            =   5520
      OleObjectBlob   =   "frmStock.frx":2CA2
      TabIndex        =   11
      Top             =   6120
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdDelete 
      Height          =   375
      Left            =   4200
      OleObjectBlob   =   "frmStock.frx":2D2E
      TabIndex        =   12
      Top             =   6120
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdSave 
      Height          =   375
      Left            =   2880
      OleObjectBlob   =   "frmStock.frx":2DBA
      TabIndex        =   10
      Top             =   6120
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdEdit 
      Height          =   375
      Left            =   1560
      OleObjectBlob   =   "frmStock.frx":2E42
      TabIndex        =   14
      Top             =   6120
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdNew 
      Height          =   375
      Left            =   240
      OleObjectBlob   =   "frmStock.frx":2ECA
      TabIndex        =   13
      Top             =   6120
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   0
      OleObjectBlob   =   "frmStock.frx":2F50
      TabIndex        =   17
      Top             =   0
      Width           =   480
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblItemType 
      Height          =   255
      Left            =   360
      OleObjectBlob   =   "frmStock.frx":301D
      TabIndex        =   16
      Top             =   1080
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   615
      Left            =   1680
      OleObjectBlob   =   "frmStock.frx":30A3
      TabIndex        =   15
      Top             =   120
      Width           =   4455
   End
   Begin ACTIVESKINLibCtl.SkinPanel SkinPanel1 
      Height          =   5175
      Left            =   120
      OleObjectBlob   =   "frmStock.frx":313C
      TabIndex        =   21
      Top             =   840
      Width           =   7215
   End
   Begin VB.Line Line1 
      X1              =   5520
      X2              =   5640
      Y1              =   5520
      Y2              =   5520
   End
End
Attribute VB_Name = "frmStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sql As String
Dim isNew As Boolean
Private Sub cboItemID_Change()
Call DoCalcu
End Sub

Private Sub cboItemID_Click()
Call DoCalcu
End Sub

Private Sub cboItemtype_Change()
sql = "select * from stock where itemtype= '" & UCase(Trim(cboItemtype.Text)) & "'"
Set rs = conn.Execute(sql)
rs.MoveFirst
While Not rs.EOF
  cboItemID.AddItem rs!ITEMCODE
  rs.MoveNext
Wend
End Sub

Private Sub cboItemtype_Click()
sql = "select * from stock where itemtype= '" & UCase(Trim(cboItemtype.Text)) & "'"
Set rs = conn.Execute(sql)
rs.MoveFirst
While Not rs.EOF
  cboItemID.AddItem rs!ITEMCODE
  rs.MoveNext
Wend
End Sub

Private Sub Form_Load()
If UseSkin = True Then
    ApplySkinForm
End If
Call LoadItemType
End Sub

Public Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
cmdNew.ApplySkin SkinForm1
cmdDelete.ApplySkin SkinForm1
cmdEdit.ApplySkin SkinForm1
cmdSave.ApplySkin SkinForm1
cmdCancel.ApplySkin SkinForm1
SkinLabel1.ApplySkin SkinForm1
SkinLabel2.ApplySkin SkinForm1
SkinPanel1.ApplySkin SkinForm1
lblGrossWeight.ApplySkin SkinForm1
lblItemComment.ApplySkin SkinForm1
lblItemDes.ApplySkin SkinForm1
lblItemID.ApplySkin SkinForm1
lblItemType.ApplySkin SkinForm1
lblNetWeight.ApplySkin SkinForm1
lblStone.ApplySkin SkinForm1
lblStoneAmount.ApplySkin SkinForm1
lblWtComment.ApplySkin SkinForm1
lblComment1.ApplySkin SkinForm1
lblComment2.ApplySkin SkinForm1
lblComment3.ApplySkin SkinForm1
lblComment4.ApplySkin SkinForm1
lblComment5.ApplySkin SkinForm1
lblLossWeight.ApplySkin SkinForm1
lblLabourCharge.ApplySkin SkinForm1
End Sub

Private Sub cmdNew_Click()
isNew = True
SkinButton1.Visible = False
SkinButton2.Visible = False
SkinButton4.Visible = False
End Sub

Private Sub cmdEdit_Click()
isNew = False
SkinButton1.Visible = False
SkinButton2.Visible = False
SkinButton4.Visible = False
End Sub

Private Sub cmdSave_Click()
SkinButton1.Visible = False
SkinButton2.Visible = False
SkinButton3.Visible = False
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Public Sub LoadItemType()
sql = "select * from stock"
Set rs = conn.Execute(sql)
If rs.RecordCount = 0 Then
    MsgBox "Table is Empty", vbCritical + vbOKOnly, Error
     Unload Me
End If
rs.MoveFirst
While Not rs.EOF
cboItemtype.AddItem rs!ITEMTYPE
rs.MoveNext
Wend
End Sub

Public Sub DoCalcu()
If isNew = False Then
sql = "select * from stock where itemtype= '" & UCase(Trim(cboItemtype.Text)) & "'" & _
       "and itemcode ='" & UCase(Trim(cboItemID.Text)) & "'"
Set rs = conn.Execute(sql)
rs.MoveFirst
txtItemDes.Text = rs!ITEMDES
txtLossWeight.Text = rs!LOSSWT
txtNetWeight.Text = rs!NETWT
txtStoneAmount.Text = rs!STONEAMT
txtStoneWeight.Text = rs!STONEWT
txtGrossWeight.Text = rs!GROSSWT
txtStoneAmount.Text = rs!STONEAMT
txtLabourCharge.Text = rs!LABOURAMT
txtNetAmount.Text = rs!NETWT * rs!Rate
End If
End Sub
