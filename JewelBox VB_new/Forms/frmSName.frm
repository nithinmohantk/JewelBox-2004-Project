VERSION 5.00
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Begin VB.Form frmSName 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Enter SalesMan/Company Name"
   ClientHeight    =   1605
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4800
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   1605
   ScaleWidth      =   4800
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdCancel 
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
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
      Left            =   3360
      MaskColor       =   &H000000C0&
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   600
      Width           =   1095
   End
   Begin Crystal.CrystalReport CR1 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   262150
   End
   Begin VB.CommandButton cmdOk 
      Appearance      =   0  'Flat
      BackColor       =   &H000080FF&
      Caption         =   "&OK"
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
      Left            =   1920
      MaskColor       =   &H000000C0&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   600
      Width           =   1095
   End
   Begin VB.ComboBox cboSManID 
      Height          =   315
      Left            =   1440
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Use  * for generate report for all SalesMan."
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
      TabIndex        =   3
      Top             =   1200
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "SalesMan :"
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
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label3 
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
      TabIndex        =   4
      Top             =   1200
      Width           =   1095
   End
End
Attribute VB_Name = "frmSName"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub PopulateSalesManID()
cboSManID.Clear
If rsLogin.State = 0 Then rsLogin.Open "login", conn, adOpenKeyset, adLockOptimistic
If Not rsLogin.EOF Then
    rsLogin.MoveFirst
    While Not rsLogin.EOF
        cboSManID.AddItem rsLogin!SALESMANID
        rsLogin.MoveNext
    Wend
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdOk_Click()
If ispur = False Then
CR1.ReportFileName = App.Path + "\Reports\sman_wise.rpt"
CR1.SelectionFormula = "{SALES.SALESMANID} like '" & UCase(Trim(cboSManID.Text)) & "'"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
ElseIf ispur = True Then
CR1.ReportFileName = App.Path + "\Reports\comp_report.rpt"
CR1.SelectionFormula = "{Purchase.TOWHOM} like '" & UCase(Trim(cboSManID.Text)) & "'"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End If
End Sub

Private Sub Form_Load()
Me.Left = 3000
Me.Top = 50
If ispur = False Then
    Label1.Caption = "SALESMAN"
    Call PopulateSalesManID
ElseIf ispur = True Then
    Label1.Caption = "COMPANY"
    cboSManID.Clear
End If
End Sub
