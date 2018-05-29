VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "msdatgrd.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form frmBill 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Bill Man"
   ClientHeight    =   6270
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9270
   Icon            =   "frmBill.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   9270
   Begin VB.TextBox txtRate 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5400
      TabIndex        =   37
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox txtOldWt 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   35
      Top             =   2760
      Width           =   1455
   End
   Begin MSMask.MaskEdBox txtBillDate 
      Height          =   255
      Left            =   5400
      TabIndex        =   32
      Top             =   1200
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
      MaxLength       =   10
      Format          =   "dd/mm/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.CommandButton cmdExit 
      Appearance      =   0  'Flat
      Caption         =   "E&xit"
      Height          =   375
      Left            =   8160
      TabIndex        =   31
      Top             =   3960
      Width           =   975
   End
   Begin Crystal.CrystalReport CR1 
      Left            =   120
      Top             =   1800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   262150
   End
   Begin VB.CommandButton cmdCancel 
      Appearance      =   0  'Flat
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   8160
      TabIndex        =   9
      Top             =   3480
      Width           =   975
   End
   Begin VB.CommandButton cmdGenerate 
      Appearance      =   0  'Flat
      Caption         =   "&Generate"
      Height          =   375
      Left            =   8160
      TabIndex        =   8
      Top             =   3000
      Width           =   975
   End
   Begin VB.CommandButton cmdAdd 
      Appearance      =   0  'Flat
      Caption         =   "&ADD"
      Height          =   375
      Left            =   8160
      TabIndex        =   7
      Top             =   2520
      Width           =   975
   End
   Begin VB.CommandButton cmdNew 
      Appearance      =   0  'Flat
      Caption         =   "&NEW"
      Height          =   375
      Left            =   8160
      TabIndex        =   10
      Top             =   2040
      Width           =   975
   End
   Begin VB.ComboBox lstItemCode 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   5400
      TabIndex        =   3
      Top             =   2280
      Width           =   1455
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   240
      Picture         =   "frmBill.frx":23D2
      ScaleHeight     =   495
      ScaleWidth      =   615
      TabIndex        =   15
      Top             =   120
      Width           =   615
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   8160
      Top             =   120
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
      Connect         =   $"frmBill.frx":2814
      OLEDBString     =   $"frmBill.frx":28A3
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   "admin"
      Password        =   ""
      RecordSource    =   "Bill"
      Caption         =   "Adodc1"
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
   Begin VB.TextBox txtAddress 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5400
      TabIndex        =   6
      Top             =   4200
      Width           =   2295
   End
   Begin VB.TextBox txtName 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Top             =   4200
      Width           =   2175
   End
   Begin VB.TextBox txtItemQTY 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Top             =   3240
      Width           =   1695
   End
   Begin VB.TextBox txtNetAmt 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5400
      TabIndex        =   13
      Top             =   3240
      Width           =   1455
   End
   Begin VB.TextBox txtCounter 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5400
      TabIndex        =   12
      Top             =   3720
      Width           =   1455
   End
   Begin VB.ListBox lstBillType 
      Appearance      =   0  'Flat
      Height          =   615
      ItemData        =   "frmBill.frx":2932
      Left            =   1680
      List            =   "frmBill.frx":293F
      TabIndex        =   0
      Top             =   840
      Width           =   1455
   End
   Begin VB.ListBox lstJewelType 
      Appearance      =   0  'Flat
      Height          =   615
      ItemData        =   "frmBill.frx":295E
      Left            =   5400
      List            =   "frmBill.frx":296B
      TabIndex        =   2
      Top             =   1560
      Width           =   1455
   End
   Begin VB.ListBox lstItemType 
      Appearance      =   0  'Flat
      Height          =   615
      ItemData        =   "frmBill.frx":2987
      Left            =   1680
      List            =   "frmBill.frx":29A0
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox txtSalesMan 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   11
      Top             =   3720
      Width           =   1695
   End
   Begin VB.TextBox txtBillNO 
      Appearance      =   0  'Flat
      DataField       =   "BILLNO"
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0;(0)"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   1
      EndProperty
      DataSource      =   "Adodc1"
      Height          =   285
      Left            =   5400
      TabIndex        =   16
      Top             =   840
      Width           =   1455
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "frmBill.frx":29E0
      Height          =   1575
      Left            =   120
      TabIndex        =   14
      Top             =   4680
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   2778
      _Version        =   393216
      AllowUpdate     =   -1  'True
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Caption         =   "PURCHASED ITEMS"
      ColumnCount     =   6
      BeginProperty Column00 
         DataField       =   "BILLTYPE"
         Caption         =   "BILLTYPE"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "ITEMTYPE"
         Caption         =   "ITEMTYPE"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column02 
         DataField       =   "ITEMNO"
         Caption         =   "ITEMNO"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column03 
         DataField       =   "JEWELTYPE"
         Caption         =   "JEWELTYPE"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column04 
         DataField       =   "ITEMQTY"
         Caption         =   "ITEMQTY"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column05 
         DataField       =   "AMOUNT"
         Caption         =   "AMOUNT"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
         BeginProperty Column02 
            ColumnWidth     =   900.284
         EndProperty
         BeginProperty Column03 
            ColumnWidth     =   1140.095
         EndProperty
         BeginProperty Column04 
            ColumnWidth     =   840.189
         EndProperty
         BeginProperty Column05 
            ColumnWidth     =   1005.165
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   735
      Left            =   120
      TabIndex        =   29
      Top             =   0
      Width           =   7815
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Sales/Purchase/Exchange Bill Manager"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   615
         Left            =   720
         TabIndex        =   30
         Top             =   120
         Width           =   6855
      End
   End
   Begin VB.Label lblRate 
      BackStyle       =   0  'Transparent
      Caption         =   "RATE :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   4320
      TabIndex        =   38
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label lblItemwt 
      BackStyle       =   0  'Transparent
      Caption         =   "ITEM WT:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   600
      TabIndex        =   36
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label lblstkqty 
      Caption         =   "AVAIL QTY:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   255
      Left            =   480
      TabIndex        =   34
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Label lblStock 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Left            =   1680
      TabIndex        =   33
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "ADDRESS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   5
      Left            =   4080
      TabIndex        =   28
      Top             =   4200
      Width           =   975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "COUNTER #"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   4
      Left            =   4080
      TabIndex        =   27
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "NET AMT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   3
      Left            =   4080
      TabIndex        =   26
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "ITEM CODE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   2
      Left            =   4080
      TabIndex        =   25
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL DATE "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   1
      Left            =   4080
      TabIndex        =   24
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL TYPE "
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
      Height          =   255
      Left            =   480
      TabIndex        =   23
      Top             =   960
      Width           =   975
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "TO WHOM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   480
      TabIndex        =   22
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "SALESMAN #"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   480
      TabIndex        =   21
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "ITEM QTY"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   480
      TabIndex        =   20
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label label3 
      BackStyle       =   0  'Transparent
      Caption         =   "ITEM TYPE "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   480
      TabIndex        =   19
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "BILL NUMBER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   4080
      TabIndex        =   18
      Top             =   840
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "JEWEL TYPE "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000040C0&
      Height          =   255
      Index           =   0
      Left            =   4080
      TabIndex        =   17
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Line Line5 
      X1              =   120
      X2              =   120
      Y1              =   960
      Y2              =   4680
   End
   Begin VB.Line Line4 
      X1              =   7920
      X2              =   7920
      Y1              =   720
      Y2              =   4800
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   7920
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Line Line2 
      X1              =   3960
      X2              =   3960
      Y1              =   600
      Y2              =   4560
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   7680
      Y1              =   720
      Y2              =   720
   End
End
Attribute VB_Name = "frmBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
     Dim isNew As Boolean
     Dim bno As Integer
     Dim qty1 As Integer
     Dim item1 As String
     Dim lvl As String
     
Private Sub cmdAdd_Click()
rsBill.AddNew
rsBill!SALESMANID = Trim(txtSalesMan.Text)
rsBill!billno = Trim(bno)
rsBill!JEWELTYPE = Trim(lstJewelType.Text)
rsBill!Billtype = UCase(Trim(lstBillType.Text))
rsBill!Date = txtBillDate.Text
rsBill!ITEMTYPE = Trim(UCase(lstItemType.Text))
rsBill!ITEMNO = Trim(UCase(lstItemCode.Text))
rsBill!ITEMQTY = Val(Trim(txtItemQTY.Text))
rsBill!Amount = FormatNumber(Trim(txtNetAmt.Text), 2, , , vbFalse)
rsBill!Name = Trim(txtName.Text)
rsBill!Address = Trim(txtAddress.Text)
rsBill!counter = Trim(txtCounter.Text)
If lstBillType.Selected(1) = True Then
   rsBill!gweight = Trim(txtOldWt.Text)
   rsBill!erate = Trim(txtRate.Text)
   rsBill!ITEMTYPE = UCase(Trim(lstItemType.Text))
End If
rsBill!Time = DateTime.Time
rsBill.Update
CommitDB
Adodc1.Refresh
DataGrid1.ReBind
DataGrid1.Refresh
txtBillNO.Text = bno
End Sub

Private Sub cmdCancel_Click()
Dim ans
ans = MsgBox("Are you want to cancel the current Job ?", vbQuestion + vbYesNo, "CANCEL JOB ????")
If ans = vbYes Then
    cmdNew.Enabled = True
    cmdExit.Enabled = True
    cmdAdd.Enabled = False
    cmdCancel.Enabled = False
    cmdGenerate.Enabled = False
    txtAddress.Text = ""
    lstBillType.Enabled = True
    txtBillNO.Text = ""
    txtName.Text = ""
    txtItemQTY.Text = ""
    txtNetAmt.Text = ""
    lstItemCode.Text = ""
    isNew = False
End If
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdGenerate_Click()
If lstBillType.Selected(0) = True Or lstBillType.Selected(2) = True Then
    CR1.ReportFileName = App.Path + "\Reports\bill1.rpt"
ElseIf lstBillType.Selected(1) = True Then
    CR1.ReportFileName = App.Path + "\Reports\excg.rpt"
End If
'CR1.ReportFileName = App.Path + "\Reports\bill1.rpt"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
cmdNew.Enabled = True
cmdAdd.Enabled = False
cmdCancel.Enabled = False
cmdExit.Enabled = True
cmdGenerate.Enabled = False
End Sub

Private Sub cmdNew_Click()
Call add_to_tables
Call CommitDB
txtBillDate.Text = DateTime.Date
cmdNew.Enabled = False
cmdExit.Enabled = False
cmdAdd.Enabled = True
cmdGenerate.Enabled = True
cmdCancel.Enabled = True
isNew = True
lstBillType.Enabled = False
txtBillNO.Enabled = False
txtCounter.Enabled = False
sql = "delete from bill"
conn.Execute sql
Call CommitDB
Adodc1.Refresh
DataGrid1.ReBind
DataGrid1.Refresh
txtBillNO.Text = bno
End Sub

Private Sub Form_Load()
Call CommitDB
txtBillDate.Text = DateTime.Date
Me.Top = 20
Me.Left = 250
txtCounter.Text = counter
txtSalesMan.Text = smanid
cmdAdd.Enabled = False
cmdGenerate.Enabled = True
cmdCancel.Enabled = False
isNew = False
End Sub
Private Sub lstBillType_Click()
If lstBillType.Selected(2) = True Then
  lstItemCode.Enabled = True
  txtRate.Enabled = False
  txtOldWt.Visible = False
  lblItemwt.Visible = False
  lblRate.Caption = "RATE"
   If rsPurchase.State = 0 Then rsPurchase.Open "purchase", conn, adOpenDynamic, adLockOptimistic
      If rsPurchase.RecordCount < 1 Then
             txtBillNO.Text = "1"
             bno = 1
      Else
        rsPurchase.MoveLast
        txtBillNO.Text = rsPurchase.Fields("orderno").Value + 1
        bno = rsPurchase.Fields("orderno").Value + 1
      End If
ElseIf lstBillType.Selected(0) = True Then
  lstItemCode.Enabled = True
  txtRate.Enabled = False
  txtOldWt.Visible = False
  lblItemwt.Visible = False
  lblRate.Caption = "RATE"
   If rsSales.State = 0 Then rsSales.Open "sales", conn, adOpenDynamic, adLockOptimistic
      If rsSales.RecordCount < 1 Then
             txtBillNO.Text = "1"
             bno = 1
      Else
         rsSales.MoveLast
         txtBillNO.Text = rsSales.Fields("billno").Value + 1
         bno = rsSales.Fields("billno").Value + 1
      End If
ElseIf lstBillType.Selected(1) = True Then
    lstItemCode.Enabled = False
    txtRate.Enabled = True
    txtOldWt.Visible = True
    lblItemwt.Visible = True
    lblRate.Caption = "EXG Rate"
   If rsExchange.State = 0 Then rsExchange.Open "Exchange", conn, adOpenDynamic, adLockOptimistic
      If rsExchange.RecordCount < 1 Then
             txtBillNO.Text = "1"
             bno = 1
      Else
        rsExchange.MoveLast
        txtBillNO.Text = rsExchange.Fields("billno").Value + 1
        bno = rsExchange.Fields("billno").Value + 1
      End If
End If
End Sub
Private Sub lstItemCode_Click()
Call pop_stock
End Sub

Private Sub lstItemType_Click()
lstJewelType.SetFocus
End Sub

Private Sub lstItemType_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   lstJewelType.SetFocus
End If
End Sub
Public Sub pop_itemcode()
    lstItemCode.Clear
    sql = "select * from stock where itemtype= '" & UCase(Trim(lstItemType.Text)) & "' and " & _
       " JEWELTYPE = '" & UCase(Trim(lstJewelType.Text)) & "' order by itemno asc"
    Set rs = conn.Execute(sql)
If Not rs.EOF Then
    rs.MoveFirst
        While Not rs.EOF
            lstItemCode.AddItem rs!ITEMNO
            rs.MoveNext
        Wend
Else
  MsgBox "any Item of this type doesn't exists"
End If
If rsRate.State = 0 Then rsRate.Open "rate", conn, adOpenDynamic, adLockOptimistic
rsRate.Find "DATE = '" & Format(DateTime.Date, "dd/mm/yyyy") & "'"
End Sub

Public Sub enable_controls()
txtAddress.Enabled = True
txtBillDate.Enabled = True
txtBillNO.Enabled = True
txtCounter.Enabled = True
txtItemQTY.Enabled = True
txtName.Enabled = True
txtNetAmt.Enabled = True
txtSalesMan.Enabled = True
lstBillType.Enabled = True
lstItemCode.Enabled = True
lstItemType.Enabled = True
lstJewelType.Enabled = True
End Sub

Private Sub lstJewelType_Click()
If rs.State = 1 Then rs.Close
sql = ""
If lstBillType.Selected(0) = True Or lstBillType.Selected(2) = True Then
      Call pop_itemcode
      lstItemCode.SetFocus
ElseIf lstBillType.Selected(1) = True Then
   lstItemCode.Text = "Old Jewel"
End If
Call loadRate
End Sub

Private Sub lstJewelType_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
If rs.State = 1 Then rs.Close
sql = ""
Call pop_itemcode
lstItemCode.SetFocus
End If
End Sub

Public Sub pop_stock()
sql = "select * from stock where itemno = '" & UCase(Trim(lstItemCode.Text)) & "'"
Set rs1 = conn.Execute(sql)
lblStock = rs1.Fields("itemqty").Value
Call stocklvl(rs1!ITEMQTY, rs1!ITEMNO, rs1!ITEMTYPE)
calcu_net
End Sub
Private Sub txtItemQTY_GotFocus()
If lstBillType.Text = "" Then
   MsgBox "please specify BILL TYPE"
   lstBillType.SetFocus
End If
If lstItemType.Text = "" Then
     MsgBox "please specify ITEM TYPE"
    lstItemType.SetFocus
End If
If lstJewelType.Text = "" Then
     MsgBox "please specify Jewel TYPE"
    lstJewelType.SetFocus
End If
End Sub

Private Sub txtItemQTY_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If lstBillType.Selected(0) = True Or lstBillType.Selected(2) = True Then
      Call calcu_net
   End If
   txtSalesMan.SetFocus
End If
End Sub

Public Sub calcu_net()
   If lstJewelType.Selected(0) = True Then
        txtNetAmt.Text = FormatNumber(((rs1!GROSSWEIGHT * rsRate!GOLD22CT) + rs1!STONEAMT + rs1!LABOURCHARGE) * Val(txtItemQTY.Text), 2)
   ElseIf lstJewelType.Selected(1) = True Then
        txtNetAmt.Text = FormatNumber(((rs1!GROSSWEIGHT * rsRate!SILVER) + rs1!STONEAMT + rs1!LABOURCHARGE) * Val(txtItemQTY.Text), 2)
   ElseIf lstJewelType.Selected(2) = True Then
        txtNetAmt.Text = FormatNumber(((rs1!GROSSWEIGHT * rsRate!Platinum) + rs1!STONEAMT + rs1!LABOURCHARGE) * Val(txtItemQTY.Text), 2)
   End If
End Sub

Public Sub add_to_tables()
If rsBill.State = 0 Then rsBill.Open "bill", conn, adOpenKeyset, adLockOptimistic
If Not rsBill.EOF Then
rsBill.MoveFirst
While Not rsBill.EOF
    If rsBill!Billtype = "SALES" Then
       rsSales.AddNew
       rsSales!SALESMANID = rsBill!SALESMANID
       rsSales!Date = rsBill!Date
       rsSales!Time = rsBill!Time
       rsSales!Name = rsBill!Name
       rsSales!billno = rsBill!billno
       rsSales!ITEMNO = rsBill!ITEMNO
       rsSales!NetAmount = rsBill!Amount
       rsSales!counter = rsBill!counter
       rsSales!Address = rsBill!Address
       rsSales!ITEMQTY = rsBill!ITEMQTY
       rsSales.Update
       rsSales.Close
       rsSales.Open "sales", conn, adOpenKeyset, adLockOptimistic
    ElseIf rsBill!Billtype = "PURCHASE" Then
       rsPurchase.AddNew
       rsPurchase!ORDERNO = rsBill!billno
       rsPurchase!Date = rsBill!Date
       rsPurchase!Time = rsBill!Time
       rsPurchase!ITEMNO = rsBill!ITEMNO
       rsPurchase!ITEMQTY = rsBill!ITEMQTY
       rsPurchase!TOWHOM = rsBill!Name
       rsPurchase!Amount = rsBill!Amount
       rsPurchase.Update
       rsPurchase.Close
       rsPurchase.Open "purchase", conn, adOpenKeyset, adLockOptimistic
   ElseIf rsBill!Billtype = "EXCHANGE" Then
       rsExchange.AddNew
       rsExchange!billno = rsBill!billno
       rsExchange!Date = rsBill!Date
       rsExchange!Time = rsBill!Time
       rsExchange!ITEMTYPE = rsBill!ITEMTYPE
       rsExchange!ITEMNO = rsBill!ITEMNO
       rsExchange!JEWELTYPE = rsBill!JEWELTYPE
       rsExchange!ITEMQTY = rsBill!ITEMQTY
       rsExchange!Rate = rsBill!erate
       rsExchange!Amount = rsBill!Amount
       rsExchange!gweight = rsBill!gweight
       rsExchange.Update
       rsExchange.Close
       rsExchange.Open "Exchange", conn, adOpenKeyset, adLockOptimistic
   End If
   rsBill.MoveNext
Wend
End If
Call update_stock
End Sub

Public Sub update_stock()
If rsSales.State = 0 Then rsSales.Open "sales", conn, adOpenKeyset, adLockOptimistic
If Not rsSales.EOF Then
    rsSales.MoveFirst
    While Not rsSales.EOF
       If rsSales!Updated = 0 Then
             If rsStock.State = 0 Then rsStock.Open "stock", conn, adOpenKeyset, adLockOptimistic
             item1 = rsSales!ITEMNO
             rsStock.Find "itemno = '" & item1 & "'"
             qty1 = rsStock!ITEMQTY - rsSales!ITEMQTY
             rsStock!ITEMQTY = qty1
             rsStock!Status = stocklvl(qty1, item1, rsStock!ITEMTYPE)
             rsStock.Update
             rsStock.Close
             rsSales!Updated = 1
             rsSales.Update
       End If
     rsSales.MoveNext
    Wend
End If
End Sub

Public Sub loadRate()
If rsRate.State = 1 Then rsRate.Close
rsRate.Open "rate", conn, adOpenDynamic, adLockOptimistic
rsRate.Find "DATE = '" & Format(DateTime.Date, "dd/mm/yyyy") & "'"
If rsRate.EOF Then
   MsgBox "rate is empty"
Else
   If lstJewelType.Selected(0) = True Then
        txtRate.Text = rsRate!GOLD22CT
   ElseIf lstJewelType.Selected(1) = True Then
        txtRate.Text = rsRate!SILVER
   ElseIf lstJewelType.Selected(2) = True Then
        txtRate.Text = rsRate!Platinum
   End If
End If
End Sub

