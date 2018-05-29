VERSION 5.00
Begin VB.Form frmWizard 
   BackColor       =   &H000000C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Welcome to JewelBox 2004"
   ClientHeight    =   6105
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6225
   FillColor       =   &H00800080&
   ForeColor       =   &H00000080&
   Icon            =   "frmWizard.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6105
   ScaleWidth      =   6225
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   735
      Left            =   5280
      Picture         =   "frmWizard.frx":08CA
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   5280
      Width           =   735
   End
   Begin VB.CommandButton optSalesMan 
      DisabledPicture =   "frmWizard.frx":1194
      DownPicture     =   "frmWizard.frx":1A5E
      DragIcon        =   "frmWizard.frx":2328
      Height          =   615
      Left            =   480
      Picture         =   "frmWizard.frx":2BF2
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   2280
      Width           =   615
   End
   Begin VB.CommandButton optStock 
      DisabledPicture =   "frmWizard.frx":34BC
      DownPicture     =   "frmWizard.frx":3D86
      DragIcon        =   "frmWizard.frx":4650
      Height          =   615
      Left            =   480
      Picture         =   "frmWizard.frx":4F1A
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   3120
      Width           =   615
   End
   Begin VB.CommandButton optBill 
      DisabledPicture =   "frmWizard.frx":57E4
      DownPicture     =   "frmWizard.frx":60AE
      DragIcon        =   "frmWizard.frx":6978
      Height          =   615
      Left            =   480
      Picture         =   "frmWizard.frx":7242
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   3960
      Width           =   615
   End
   Begin VB.CommandButton optReports 
      DisabledPicture =   "frmWizard.frx":7B0C
      DownPicture     =   "frmWizard.frx":83D6
      DragIcon        =   "frmWizard.frx":8CA0
      Height          =   615
      Left            =   480
      Picture         =   "frmWizard.frx":956A
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   4800
      Width           =   615
   End
   Begin VB.CommandButton optRate 
      DisabledPicture =   "frmWizard.frx":9E34
      DownPicture     =   "frmWizard.frx":A6FE
      DragIcon        =   "frmWizard.frx":AFC8
      Height          =   615
      Left            =   480
      Picture         =   "frmWizard.frx":B892
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   1440
      Width           =   615
   End
   Begin VB.CheckBox chkWizard 
      BackColor       =   &H000000C0&
      Caption         =   "Check1"
      Height          =   195
      Left            =   360
      TabIndex        =   10
      Top             =   5640
      Width           =   255
   End
   Begin VB.Timer Timer1 
      Interval        =   60
      Left            =   5760
      Top             =   2880
   End
   Begin VB.Label lblDate 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   2640
      TabIndex        =   19
      Top             =   720
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Manage Ornament Rate"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1560
      TabIndex        =   17
      Top             =   1440
      Width           =   4215
   End
   Begin VB.Label Label12 
      Appearance      =   0  'Flat
      BackColor       =   &H000000C0&
      Caption         =   "Load This on StartUp"
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
      Height          =   255
      Left            =   720
      TabIndex        =   11
      Top             =   5640
      Width           =   2895
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "Hi Welcome to JewelBox 2004.Please select as per ur desire to make better use of this software.  "
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   975
      Left            =   120
      TabIndex        =   9
      Top             =   0
      Width           =   6015
   End
   Begin VB.Label Label10 
      BackStyle       =   0  'Transparent
      Caption         =   "Set and watch market rate of Ornaments"
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
      Height          =   255
      Left            =   2400
      TabIndex        =   8
      Top             =   1920
      Width           =   3615
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Add and watch SalesMan  details"
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
      Height          =   255
      Left            =   2400
      TabIndex        =   7
      Top             =   2880
      Width           =   3375
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "Add and watch stock details"
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
      Height          =   255
      Left            =   2400
      TabIndex        =   6
      Top             =   3600
      Width           =   3375
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "Sales Bill,Purchase Bill,Exchange"
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
      Height          =   255
      Left            =   2400
      TabIndex        =   5
      Top             =   4440
      Width           =   3375
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Sales,Purchase,Stock"
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
      Height          =   255
      Left            =   2400
      TabIndex        =   4
      Top             =   5280
      Width           =   2535
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Manage SalesMan Details"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   2400
      Width           =   4215
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Manage Stock Details"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   3240
      Width           =   3015
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Manage Bills and Purchase"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Top             =   4080
      Width           =   3735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Manage Reports"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   4920
      Width           =   3015
   End
End
Attribute VB_Name = "frmWizard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkWizard_Click()
If chkWizard = vbChecked Then
  UseWizard = True
ElseIf chkWizard = vbUnchecked Then
   UseWizard = False
End If
Call SaveSettings
Call LoadSettings
End Sub

Private Sub cmdCancel_Click()
Me.Hide
Call SaveSettings
Call LoadSettings
End Sub

Private Sub Form_Load()
Call LoadSettings
chkWizard.Enabled = True
If UseWizard = True Then
chkWizard = vbChecked
ElseIf UseWizard = False Then
chkWizard = vbUnchecked
End If
End Sub

Private Sub optBill_Click()
Load frmBill
frmBill.Show
End Sub

Private Sub optRate_Click()
Load frmRate
frmRate.Show
End Sub

Private Sub optReports_Click()
Load frmReport
frmReport.Show
End Sub

Private Sub optSalesMan_Click()
Load frmSalesMan
frmSalesMan.Show
End Sub

Private Sub optStock_Click()
Load frmStock
frmStock.Show
End Sub

Private Sub Timer1_Timer()
lblDate.Caption = DateTime.Now
End Sub

