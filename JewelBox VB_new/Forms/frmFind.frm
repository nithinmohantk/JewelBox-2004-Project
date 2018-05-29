VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "Msflxgrd.ocx"
Begin VB.Form frmFind 
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "SEarch for Items"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10350
   Icon            =   "frmFind.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   10350
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   3255
      Left            =   0
      TabIndex        =   5
      Top             =   1200
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   5741
      _Version        =   393216
      Cols            =   9
      FixedCols       =   0
      SelectionMode   =   1
      Appearance      =   0
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H00808080&
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
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
   Begin VB.CommandButton cmdSearch 
      BackColor       =   &H00808080&
      Caption         =   "&Search"
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
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   720
      Width           =   1215
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   6480
      Top             =   720
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   "admin"
      Password        =   ""
      RecordSource    =   "CDCol"
      Caption         =   "Adodc2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox txtSearch 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   0
      Top             =   240
      Width           =   2415
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "** Enter the Search String"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   375
      Left            =   4200
      TabIndex        =   4
      Top             =   240
      Width           =   3255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Find What?"
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
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
End
Attribute VB_Name = "frmFind"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ss As String
Dim str As String
Private Sub cmdCancel_Click()
Unload Me
End Sub
Private Sub cmdSearch_Click()
str = UCase(Trim(txtSearch.Text))
MSFlexGrid1.Clear
Call loadheader
Call CommitDB
If txtSearch.Text = "" Then
sql = "select * from stock  order by jeweltype asc,itemtype asc,itemno asc "
ElseIf txtSearch.Text = "*" Then
sql = "select * from stock  order by jeweltype asc,itemtype asc,itemno asc "
ElseIf txtSearch.Text = "**" Then
sql = "select * from stock  order by jeweltype asc,itemtype asc,itemno asc "
ElseIf txtSearch.Text = "*.*" Then
sql = "select * from stock  order by jeweltype asc,itemtype asc,itemno asc "
Else
sql = "select * from stock where itemno like '%" & str & "%' or " & _
      "jeweltype like '%" & str & "%' or itemtype like '%" & str & "%' " & _
      "order by jeweltype asc,itemtype asc,itemno asc "
End If
If rsStock.State = 1 Then rsStock.Close
Set rsStock = conn.Execute(sql)
If Not rsStock.EOF Then
     rsStock.MoveFirst
     Dim i As Integer
     i = 1
     While Not rsStock.EOF
      MSFlexGrid1.Rows = MSFlexGrid1.Rows + 1
      MSFlexGrid1.TextMatrix(i, 0) = Trim(rsStock!JEWELTYPE)
      MSFlexGrid1.TextMatrix(i, 1) = Trim(rsStock!ITEMTYPE)
      MSFlexGrid1.TextMatrix(i, 2) = Trim(rsStock!ITEMNO)
      MSFlexGrid1.TextMatrix(i, 3) = Trim(rsStock!ITEMQTY)
      MSFlexGrid1.TextMatrix(i, 4) = Trim(rsStock!GROSSWEIGHT)
      MSFlexGrid1.TextMatrix(i, 5) = Trim(rsStock!STONEWEIGHT)
      MSFlexGrid1.TextMatrix(i, 6) = Trim(rsStock!STONEAMT)
      MSFlexGrid1.TextMatrix(i, 7) = Trim(rsStock!LABOURCHARGE)
      If rsStock!JEWELTYPE = "GOLD" Then
        MSFlexGrid1.TextMatrix(i, 8) = FormatNumber((rsStock!GROSSWEIGHT * rsRate!GOLD22CT) + rsStock!STONEAMT + rsStock!LABOURCHARGE, 2, vbFalse, , vbFalse)
      ElseIf rsStock!JEWELTYPE = "SILVER" Then
        MSFlexGrid1.TextMatrix(i, 8) = FormatNumber((rsStock!GROSSWEIGHT * rsRate!SILVER) + rsStock!STONEAMT + rsStock!LABOURCHARGE, 2, vbFalse, , vbFalse)
      ElseIf rsStock!JEWELTYPE = "PLATINUM" Then
        MSFlexGrid1.TextMatrix(i, 8) = FormatNumber((rsStock!GROSSWEIGHT * rsRate!GOLD22CT) + rsStock!STONEAMT + rsStock!LABOURCHARGE, 2, vbFalse, , vbFalse)
      End If
      i = i + 1
      rsStock.MoveNext
     Wend
Else
   MsgBox "SORRY !" & vbCrLf & "Item Not Found"
End If
End Sub
Private Sub Form_Load()
MSFlexGrid1.Clear
MSFlexGrid1.Rows = 2
Me.Top = 50
Me.Left = 500
Call loadheader
Call loadRate

End Sub


Private Sub txtSearch_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
     cmdSearch.SetFocus
End If
End Sub

Public Sub loadheader()
MSFlexGrid1.Clear
MSFlexGrid1.Rows = 2
MSFlexGrid1.TextMatrix(0, 0) = "JEWEL TYPE"
MSFlexGrid1.TextMatrix(0, 1) = "CATEGORY"
MSFlexGrid1.TextMatrix(0, 2) = "ITEM CODE"
MSFlexGrid1.TextMatrix(0, 3) = "STOCK QTY"
MSFlexGrid1.TextMatrix(0, 4) = "GROSS WT"
MSFlexGrid1.TextMatrix(0, 5) = "STONE WT"
MSFlexGrid1.TextMatrix(0, 6) = "STONE AMT"
MSFlexGrid1.TextMatrix(0, 7) = "LABOUR AMT"
MSFlexGrid1.TextMatrix(0, 8) = "NET AMT"
MSFlexGrid1.ColWidth(0) = 1200
MSFlexGrid1.ColWidth(1) = 1200
MSFlexGrid1.ColWidth(2) = 1200
MSFlexGrid1.ColWidth(3) = 1200
MSFlexGrid1.ColWidth(4) = 1000
MSFlexGrid1.ColWidth(5) = 1000
MSFlexGrid1.ColWidth(6) = 1000
MSFlexGrid1.ColWidth(7) = 1200
MSFlexGrid1.ColWidth(8) = 1000
End Sub



Public Sub loadRate()
If rsRate.State = 1 Then rsRate.Close
rsRate.Open "rate", conn, adOpenDynamic, adLockOptimistic
rsRate.Find "DATE = '" & Format(DateTime.Date, "dd/mm/yyyy") & "'"
If rsRate.EOF Then
   MsgBox "rate is empty"
End If
End Sub
