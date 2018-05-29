VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Begin VB.Form frmStkItem 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Custom Stock Report Generation"
   ClientHeight    =   2145
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6180
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2145
   ScaleWidth      =   6180
   ShowInTaskbar   =   0   'False
   Begin Crystal.CrystalReport CR1 
      Left            =   120
      Top             =   1320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   262150
   End
   Begin VB.CommandButton cmdGenerate 
      BackColor       =   &H0080C0FF&
      Caption         =   "&Generate"
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
      Left            =   3720
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   1320
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H0080C0FF&
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
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1320
      Width           =   975
   End
   Begin VB.ComboBox cboItemtype 
      Height          =   315
      ItemData        =   "frmStkItem.frx":0000
      Left            =   1440
      List            =   "frmStkItem.frx":0019
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.ListBox txtJewelType 
      Appearance      =   0  'Flat
      Height          =   810
      ItemData        =   "frmStkItem.frx":0059
      Left            =   4560
      List            =   "frmStkItem.frx":0069
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Select Custom Stock Report Criterion"
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
      Height          =   1095
      Left            =   240
      TabIndex        =   2
      Top             =   120
      Width           =   5895
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM TYPE      :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "JEWEL TYPE :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3000
         TabIndex        =   3
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Label Label4 
      Caption         =   "Use  * for generate report for all ."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   375
      Left            =   1080
      TabIndex        =   8
      Top             =   1800
      Width           =   3735
   End
   Begin VB.Label Label5 
      Caption         =   "HOT TIP :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   1800
      Width           =   1095
   End
End
Attribute VB_Name = "frmStkItem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sf As String
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdGenerate_Click()
sf = "{Stock.jeweltype} like '" & UCase(Trim(txtJewelType.Text)) & "' " & _
                       "and {stock.itemtype} like '" & UCase(Trim(cboItemtype.Text)) & "'"
CR1.ReportFileName = App.Path + "\Reports\stock_rep.rpt"
CR1.SelectionFormula = sf
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub Form_Load()
Me.Left = 3000
Me.Top = 50
End Sub
