VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form frmStkUpdate 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Received Purchase Entry"
   ClientHeight    =   4200
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5400
   Icon            =   "frmStkUpdate.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4200
   ScaleWidth      =   5400
   ShowInTaskbar   =   0   'False
   Begin VB.ComboBox cboOrderNo 
      Height          =   315
      Left            =   1440
      TabIndex        =   19
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton cmdNew 
      Caption         =   "&New"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   18
      Top             =   3480
      Width           =   1215
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4080
      TabIndex        =   17
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update Stock Inventory"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      TabIndex        =   16
      Top             =   3480
      Width           =   2175
   End
   Begin VB.TextBox txtBackOrder 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1800
      TabIndex        =   14
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox txtReceived 
      Height          =   285
      Left            =   1800
      TabIndex        =   9
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox txtSupplier 
      Height          =   285
      Left            =   1800
      TabIndex        =   8
      Top             =   1560
      Width           =   3375
   End
   Begin MSMask.MaskEdBox txtDateOrder 
      Height          =   300
      Left            =   1440
      TabIndex        =   4
      Top             =   585
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   529
      _Version        =   393216
      MaxLength       =   10
      Format          =   "dd/MM/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.ComboBox cboItemNo 
      Height          =   315
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   1335
   End
   Begin MSMask.MaskEdBox txtReceivedDate 
      Height          =   300
      Left            =   1800
      TabIndex        =   6
      Top             =   2040
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   529
      _Version        =   393216
      MaxLength       =   10
      Format          =   "dd/MM/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.Label Label9 
      Caption         =   "BACK-ORDER QTY"
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label Label8 
      Caption         =   "==> Please select the Order No"
      Height          =   375
      Left            =   2760
      TabIndex        =   13
      Top             =   120
      Width           =   2535
   End
   Begin VB.Label txtOrderQTy 
      BackStyle       =   0  'Transparent
      Caption         =   "cc"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   4320
      TabIndex        =   12
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "ORDERED QTY"
      Height          =   255
      Left            =   3000
      TabIndex        =   11
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "RECEIVED QTY :"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "SUPPLIER NAME :"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label4 
      Caption         =   "RECEIVED DATE :"
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   2040
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "ORDER DATE"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "ITEM NO"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "ORDER NO"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "frmStkUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ss As String

Private Sub cboOrderNo_Click()
ss = "select * from purchase where orderno = '" & UCase(Trim(cboOrderNo.Text)) & "'"
Set rs1 = conn.Execute(ss)
If Not rs1.EOF Then
  rs1.MoveFirst
  txtDateOrder.Text = rs1!Date
  txtOrderQTy.Caption = rs1!ITEMQTY
  If rs1!backorder > 0 Then
     txtBackOrder.Text = rs1!backorder
  End If
  txtSupplier.Text = rs1!TOWHOM
  cboItemNo.Clear
  While Not rs1.EOF
     cboItemNo.AddItem rs1!ITEMNO
     rs1.MoveNext
  Wend
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdNew_Click()
txtBackOrder.Text = ""
txtReceived.Text = ""
txtReceivedDate.Text = "__/__/____"

End Sub

Private Sub cmdUpdate_Click()
If rsStock.State = 1 Then rsStock.Close
rsStock.Open "stock", conn, adOpenKeyset, adLockOptimistic
rsStock.Find "itemno = '" & Trim(cboItemNo.Text) & "'"
rsStock.Fields("itemqty").Value = rsStock.Fields("itemqty").Value + Val(Trim(txtReceived.Text))
rsStock.Update
rsStock.Close
If rsPurchase.State = 1 Then rsPurchase.Close
rsPurchase.Open "purchase", conn, adOpenKeyset, adLockOptimistic
''rsPurchase.Find "itemno = '" & Trim(cboItemNo.Text) & "' and orderno = '" & Trim(cboOrderNo.Text) & "'"
'rsPurchase.Find "itemno = '" & Trim(cboItemNo.Text) & "' and orderno = '" & Val(Trim(cboOrderNo.Text)) & "'"
If Trim(txtBackOrder.Text) = 0 Then
        sql = "update purchase set updated = '1',backorder = '0' where itemno = '" & Trim(cboItemNo.Text) & "' and orderno = '" & Val(Trim(cboOrderNo.Text)) & "'"
        conn.Execute sql
        rsPurchase.Close
Else
        sql = "update purchase set backorder = '" & Trim(txtBackOrder.Text) & "'" & _
              "where itemno = '" & Trim(cboItemNo.Text) & "' and orderno = '" & Val(Trim(cboOrderNo.Text)) & "'"
        conn.Execute sql
        rsPurchase.Close
End If
If rsReceived.State = 1 Then rsReceived.Close
rsReceived.Open "Received", conn, adOpenKeyset, adLockOptimistic
rsReceived.AddNew
rsReceived.Fields("orderno").Value = Trim(cboOrderNo.Text)
rsReceived.Fields("itemqty").Value = Trim(txtReceived.Text)
rsReceived.Fields("itemno").Value = UCase(Trim(cboItemNo.Text))
rsReceived.Fields("date").Value = Trim(txtReceivedDate.Text)
rsReceived.Update
rsReceived.Close
Call CommitDB
Call pop_orderno
MsgBox "update success"
End Sub

Private Sub Form_Load()
Call pop_orderno
End Sub
Public Sub pop_orderno()
cboOrderNo.Clear
sql = "select * from purchase where updated = 0 or backorder > 0"
Set rs = conn.Execute(sql)
If Not rs.EOF Then
  rs.MoveFirst
  While Not rs.EOF
     cboOrderNo.AddItem rs!ORDERNO
     rs.MoveNext
  Wend
End If
End Sub

Private Sub txtReceived_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If Not Val(Trim(txtOrderQTy.Caption)) = Val(Trim(txtReceived.Text)) Then
        If Trim(txtBackOrder.Text) = 0 Or txtBackOrder.Text = "" Then
            If (Val(Trim(txtOrderQTy.Caption)) - Val(Trim(txtReceived.Text))) > 0 Then
                txtBackOrder.Text = Val(Trim(txtOrderQTy.Caption)) - Val(Trim(txtReceived.Text))
            ElseIf (Val(Trim(txtOrderQTy.Caption)) - Val(Trim(txtReceived.Text))) <= 0 Then
                txtBackOrder.Text = 0
            End If
        ElseIf Trim(txtBackOrder.Text) > 0 Then
          If (Val(Trim(txtBackOrder.Text)) - Val(Trim(txtReceived.Text))) > 0 Then
                txtBackOrder.Text = Val(Trim(txtBackOrder.Text)) - Val(Trim(txtReceived.Text))
          ElseIf (Val(Trim(txtBackOrder.Text)) - Val(Trim(txtReceived.Text))) <= 0 Then
                txtBackOrder.Text = 0
          End If
        End If
     Else
       txtBackOrder.Text = 0
   End If
   cmdUpdate.SetFocus
End If
End Sub
