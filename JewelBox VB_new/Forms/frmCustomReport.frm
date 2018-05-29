VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Begin VB.Form frmCustomReport 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Custom Report Selection"
   ClientHeight    =   2820
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6855
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2820
   ScaleWidth      =   6855
   ShowInTaskbar   =   0   'False
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
      Left            =   5520
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   1800
      Width           =   975
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
      Left            =   4200
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1800
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      Caption         =   "Custom Report Selection"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6735
      Begin VB.ComboBox txtYear2 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":0000
         Left            =   5640
         List            =   "frmCustomReport.frx":005E
         TabIndex        =   19
         Top             =   840
         Width           =   855
      End
      Begin VB.ComboBox txtYear1 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":0116
         Left            =   5640
         List            =   "frmCustomReport.frx":0174
         TabIndex        =   18
         Top             =   480
         Width           =   855
      End
      Begin VB.ComboBox txtMonth2 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":022C
         Left            =   4800
         List            =   "frmCustomReport.frx":0254
         TabIndex        =   15
         Top             =   840
         Width           =   735
      End
      Begin VB.ComboBox txtMonth1 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":027F
         Left            =   4800
         List            =   "frmCustomReport.frx":02A7
         TabIndex        =   14
         Top             =   480
         Width           =   735
      End
      Begin VB.ComboBox txtDay2 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":02D2
         Left            =   4080
         List            =   "frmCustomReport.frx":0333
         TabIndex        =   13
         Top             =   840
         Width           =   615
      End
      Begin VB.ComboBox txtDay1 
         Height          =   315
         ItemData        =   "frmCustomReport.frx":03AA
         Left            =   4080
         List            =   "frmCustomReport.frx":040B
         TabIndex        =   12
         Top             =   480
         Width           =   615
      End
      Begin VB.TextBox txtCompany 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   240
         TabIndex        =   5
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label Label10 
         Caption         =   "YEAR"
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
         Left            =   5760
         TabIndex        =   17
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label7 
         Caption         =   "MONTH"
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
         Left            =   4800
         TabIndex        =   16
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label6 
         Caption         =   "DATE"
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
         Left            =   4080
         TabIndex        =   11
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "From :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   3360
         TabIndex        =   4
         Top             =   480
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "To :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   3480
         TabIndex        =   3
         Top             =   840
         Width           =   375
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Report"
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
         Left            =   2640
         TabIndex        =   2
         Top             =   360
         Width           =   615
      End
      Begin VB.Label Label9 
         Caption         =   "Company/SalesMan Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000080FF&
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   2535
      End
   End
   Begin Crystal.CrystalReport CR1 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   262150
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
      Left            =   360
      TabIndex        =   10
      Top             =   2400
      Width           =   1095
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
      Left            =   1560
      TabIndex        =   9
      Top             =   2400
      Width           =   3735
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Select Custom Dates to generate custom Report"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   1440
      Width           =   5415
   End
End
Attribute VB_Name = "frmCustomReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdGenerate_Click()
If ispur = True Then
CR1.ReportFileName = App.Path + "\Reports\comp_report.rpt"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.SelectionFormula = "{Purchase.TOWHOM} like '" & Trim(txtCompany.Text) & "' "
'and " & _
'                       "{Purchase.Date} = '" & Format(Trim(dtFrom.Text), "mm/dd/yyyy") & "' "
''                       and {Purchase.Date} < '" & dtTo.Text & "'"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
ElseIf ispur = False Then
CR1.ReportFileName = App.Path + "\Reports\sman_wise.rpt"
CR1.SelectionFormula = "{SALES.SALESMANID} like '" & UCase(Trim(txtCompany.Text)) & "'"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End If
End Sub

Private Sub Form_Load()
Me.Left = 3000
Me.Top = 50
End Sub
