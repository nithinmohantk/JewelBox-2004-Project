VERSION 5.00
Begin VB.Form frmStockLevel 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Stock Level Entry Manager"
   ClientHeight    =   3165
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   3885
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3165
   ScaleWidth      =   3885
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&CANCEL"
      Height          =   375
      Left            =   2760
      TabIndex        =   5
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   2640
      Width           =   975
   End
   Begin VB.Frame frmReorder 
      Caption         =   "Stock Level Managing Details"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   2295
      Left            =   120
      TabIndex        =   7
      Top             =   240
      Width           =   3495
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   615
         Left            =   120
         Picture         =   "frmStockLevel.frx":0000
         ScaleHeight     =   615
         ScaleWidth      =   615
         TabIndex        =   12
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox txtSafe 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0;(0)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   2640
         MaxLength       =   3
         TabIndex        =   1
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox txtSurplus 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0;(0)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   2640
         MaxLength       =   3
         TabIndex        =   0
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox txtDanger 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0;(0)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   2640
         MaxLength       =   3
         TabIndex        =   3
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox txtReorder 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0;(0)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   2640
         MaxLength       =   3
         TabIndex        =   2
         Top             =   1320
         Width           =   495
      End
      Begin VB.Label txtSafe1 
         Caption         =   "SAFE LEVEL"
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
         Height          =   255
         Left            =   960
         TabIndex        =   11
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label3 
         Caption         =   "SURPLUS LEVEL"
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
         Height          =   255
         Left            =   960
         TabIndex        =   10
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label2 
         Caption         =   "DANGER LEVEL"
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
         Height          =   255
         Left            =   960
         TabIndex        =   9
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "REORDER LEVEL"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0;(0)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
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
         Height          =   255
         Left            =   960
         TabIndex        =   8
         Top             =   1320
         Width           =   1695
      End
   End
End
Attribute VB_Name = "frmStockLevel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lexists As Boolean
Private Sub cmdCancel_Click()
Unload Me
End Sub
Private Sub cmdOk_Click()
If lexists = True Then
    rsLevel.Find "id = 1"
    rsLevel!DANGER = txtDanger.Text
    rsLevel!REORDER = txtReorder.Text
    rsLevel!SAFE = txtSafe.Text
    rsLevel!SURPLUS = txtSurplus.Text
    rsLevel.Update
    Call CommitDB
    MsgBox "Stock Level Data Updated Successfully", vbInformation + vbOKOnly, "UPDATION SUCCESS"
ElseIf lexists = False Then
    rsLevel.AddNew
    rsLevel!id = 1
    rsLevel!DANGER = txtDanger.Text
    rsLevel!REORDER = txtReorder.Text
    rsLevel!SAFE = txtSafe.Text
    rsLevel!SURPLUS = txtSurplus.Text
    rsLevel.Update
    Call CommitDB
    MsgBox "Stock Level Data Entered Successfully", vbInformation + vbOKOnly, "NEW ADDITION SUCCESS"
End If
cmdOk.Enabled = False
cmdUpdate.Enabled = True
txtDanger.Enabled = False
txtReorder.Enabled = False
txtSafe.Enabled = False
txtSurplus.Enabled = False
End Sub
Private Sub cmdUpdate_Click()
cmdOk.Enabled = True
cmdUpdate.Enabled = False
txtDanger.Enabled = True
txtReorder.Enabled = True
txtSafe.Enabled = True
txtSurplus.Enabled = True
End Sub

Private Sub Form_Load()
Me.Left = 3000
Me.Top = 50
lexists = False
If rsLevel.State = 1 Then rsLevel.Close
rsLevel.Open "StockLevel", conn, adOpenDynamic, adLockOptimistic
If rsLevel.EOF Then
   lexists = False
   cmdUpdate.Enabled = False
   cmdOk.Enabled = True
Else
   lexists = True
   cmdOk.Enabled = False
   cmdUpdate.Enabled = True
   rsLevel.MoveFirst
   txtDanger.Text = rsLevel!DANGER
   txtReorder.Text = rsLevel!REORDER
   txtSafe.Text = rsLevel!SAFE
   txtSurplus.Text = rsLevel!SURPLUS
   txtDanger.Enabled = False
   txtReorder.Enabled = False
   txtSafe.Enabled = False
   txtSurplus.Enabled = False
End If
End Sub
Private Sub txtSurplus_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtSurplus.Text = "" Then
   txtSafe.SetFocus
  Else
     txtSurplus.SetFocus
  End If
End If
End Sub
Private Sub txtSafe_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtSafe.Text = "" Then
   txtReorder.SetFocus
  Else
     txtSafe.SetFocus
  End If
End If
End Sub

Private Sub txtReorder_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtReorder.Text = "" Then
   txtDanger.SetFocus
  Else
     txtReorder.SetFocus
  End If
End If
End Sub
Private Sub txtDanger_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
  If Not txtDanger.Text = "" Then
     cmdOk.SetFocus
  Else
     txtDanger.SetFocus
  End If
End If
End Sub


