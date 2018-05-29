VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "msmask32.ocx"
Begin VB.Form frmReport 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "View Report"
   ClientHeight    =   5010
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6180
   Icon            =   "frmReport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5010
   ScaleWidth      =   6180
   Begin VB.TextBox txtCompany 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   360
      TabIndex        =   21
      Top             =   4080
      Width           =   2295
   End
   Begin Crystal.CrystalReport CR1 
      Left            =   5280
      Top             =   240
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
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   19
      Top             =   2760
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
      TabIndex        =   18
      Top             =   2760
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   120
      TabIndex        =   8
      Top             =   0
      Width           =   6015
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   240
         Picture         =   "frmReport.frx":23D2
         ScaleHeight     =   495
         ScaleWidth      =   495
         TabIndex        =   9
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Report Generator"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   735
         Left            =   1440
         TabIndex        =   10
         Top             =   120
         Width           =   4815
      End
   End
   Begin VB.ListBox txtCriterian 
      Appearance      =   0  'Flat
      Height          =   1590
      ItemData        =   "frmReport.frx":2814
      Left            =   4680
      List            =   "frmReport.frx":2830
      TabIndex        =   1
      Top             =   1080
      Width           =   1335
   End
   Begin VB.ListBox txtRepType 
      Appearance      =   0  'Flat
      Height          =   615
      ItemData        =   "frmReport.frx":287A
      Left            =   1800
      List            =   "frmReport.frx":2887
      TabIndex        =   0
      Top             =   1200
      Width           =   1335
   End
   Begin MSMask.MaskEdBox dtFrom 
      Height          =   255
      Left            =   4440
      TabIndex        =   3
      Top             =   3720
      Width           =   1100
      _ExtentX        =   1931
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   0
      MaxLength       =   10
      Format          =   "dd/mm/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
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
      TabIndex        =   2
      Top             =   3360
      Width           =   5895
      Begin MSMask.MaskEdBox dtTo 
         Height          =   255
         Left            =   4320
         TabIndex        =   6
         Top             =   720
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         Format          =   "dd/mm/yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
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
         TabIndex        =   20
         Top             =   360
         Width           =   2535
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
         Left            =   2760
         TabIndex        =   7
         Top             =   360
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
         Left            =   3720
         TabIndex        =   5
         Top             =   720
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
         Left            =   3600
         TabIndex        =   4
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.Frame Frame3 
      Appearance      =   0  'Flat
      Caption         =   "Please Specify Report Selection Details"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   2415
      Left            =   120
      TabIndex        =   12
      Top             =   840
      Width           =   6015
      Begin MSMask.MaskEdBox dtDaily 
         Height          =   255
         Left            =   2880
         TabIndex        =   16
         Top             =   1320
         Width           =   1095
         _ExtentX        =   1931
         _ExtentY        =   450
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         Format          =   "dd/MM/yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin VB.Label lbldaily 
         BackStyle       =   0  'Transparent
         Caption         =   "Date of Report To be Generated"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   1320
         Width           =   3495
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "REPORT CRITERION"
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
         Height          =   495
         Left            =   3360
         TabIndex        =   14
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Type Of REPORT"
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
         Height          =   495
         Left            =   120
         TabIndex        =   13
         Top             =   360
         Width           =   1575
      End
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
      Left            =   600
      TabIndex        =   17
      Top             =   4560
      Width           =   6015
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
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
      Left            =   0
      TabIndex        =   11
      Top             =   1800
      Width           =   1455
   End
End
Attribute VB_Name = "frmReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cap As String
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdGenerate_Click()
If txtRepType.Selected(0) = True Then
    Call gen_sales
ElseIf txtRepType.Selected(1) = True Then
    Call gen_purchase
ElseIf txtRepType.Selected(2) = True Then
    CR1.ReportFileName = App.Path + "\Reports\stock_rep.rpt"
    CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
    CR1.RetrieveDataFiles
    CR1.WindowState = crptMaximized
    CR1.Action = 1
End If
End Sub

Private Sub Form_Load()
Me.Top = 20
Me.Left = 500
Me.Height = 3780
End Sub
Private Sub txtCriterian_Click()
If txtCriterian.Selected(0) = True Then
   Me.Height = 5400
   dtDaily.Enabled = False
   txtCompany.Enabled = False
ElseIf txtCriterian.Selected(7) = True Then
     Me.Height = 5400
     dtDaily.Enabled = False
     txtCompany.Enabled = True
ElseIf txtCriterian.Selected(6) = True Then
     Me.Height = 5400
     dtDaily.Enabled = True
     txtCompany.Enabled = True
Else
    Me.Height = 3780
    dtDaily.Enabled = True
    txtCompany.Enabled = False
End If
End Sub

Public Sub gen_purchase()
If txtCompany.Text = "" Then
        CR1.ReportFileName = App.Path + "\Reports\purreport.rpt"
        CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
        CR1.RetrieveDataFiles
        CR1.WindowState = crptMaximized
        CR1.Action = 1
Else
        CR1.ReportFileName = App.Path + "\Reports\comp_report.rpt"
        CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
        CR1.SelectionFormula = "{Purchase.TOWHOM} like '" & Trim(txtCompany.Text) & "'"
        CR1.RetrieveDataFiles
        CR1.WindowState = crptMaximized
        CR1.Action = 1
End If
End Sub
Public Sub gen_sales()
    If txtCriterian.Selected(6) = True Then
        CR1.ReportFileName = App.Path + "\Reports\sman_wise.rpt"
        If Not txtCompany.Text = "" Then
           CR1.SelectionFormula = "{SALES.SALESMANID} like '" & UCase(Trim(txtCompany.Text)) & "'"
        End If
    Else
       CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
    End If
    CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
    CR1.RetrieveDataFiles
    CR1.WindowState = crptMaximized
    CR1.Action = 1
End Sub

