VERSION 5.00
Begin VB.Form frmRate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Today's Rate -- "
   ClientHeight    =   3135
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3135
   ScaleWidth      =   4725
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "&Update"
      Height          =   375
      Left            =   1080
      TabIndex        =   16
      Top             =   2640
      Width           =   975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Enter Today's Market Rate"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   120
      TabIndex        =   3
      Top             =   600
      Width           =   4455
      Begin VB.TextBox txtPlatinum 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00;(0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   1320
         MaxLength       =   10
         TabIndex        =   7
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox txtSilver 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00;(0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   1320
         MaxLength       =   10
         TabIndex        =   6
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox txtGold24 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00;(0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   1320
         MaxLength       =   10
         TabIndex        =   5
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox txtGold22 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00;(0.00)"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   1320
         MaxLength       =   10
         TabIndex        =   4
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label8 
         Caption         =   "Rupees/Gram"
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
         Left            =   2400
         TabIndex        =   15
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label7 
         Caption         =   "Rupees/Gram"
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
         Left            =   2400
         TabIndex        =   14
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label Label6 
         Caption         =   "Rupees/Gram"
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
         Left            =   2400
         TabIndex        =   13
         Top             =   1560
         Width           =   1935
      End
      Begin VB.Label Label5 
         Caption         =   "Rupees/Gram"
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
         Left            =   2400
         TabIndex        =   12
         Top             =   480
         Width           =   1695
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "GOLD 24CT"
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
         TabIndex        =   11
         Top             =   840
         Width           =   1095
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "SILVER"
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
         TabIndex        =   10
         Top             =   1200
         Width           =   1095
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "PLATINUM"
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
         TabIndex        =   9
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "GOLD 22CT"
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
         TabIndex        =   8
         Top             =   480
         Width           =   1095
      End
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&CANCEL"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   2280
      TabIndex        =   0
      Top             =   2640
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Interval        =   60
      Left            =   4320
      Top             =   1320
   End
   Begin VB.Label txtDate 
      Caption         =   "Today : "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4455
   End
End
Attribute VB_Name = "frmRate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim myname As String
Dim dtexists As Boolean
Dim affected As Integer
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdOk_Click()
If dtexists = True Then
   If rsRate.State = 1 Then rsRate.Close
    rsRate.Open "rate", conn, adOpenDynamic, adLockOptimistic
    rsRate.Find "DATE = '" & Format(DateTime.Date, "dd/mm/yyyy") & "'"
    rsRate!GOLD22CT = Val(txtGold22.Text)
    rsRate!GOLD24CT = Val(txtGold24.Text)
    rsRate!SILVER = Val(txtSilver.Text)
    rsRate!Platinum = Val(txtPlatinum.Text)
    rsRate.Update
    Call CommitDB
    MsgBox "Rates Updated successfully"
    cmdUpdate.Enabled = True
    cmdCancel.Enabled = True
    cmdOk.Enabled = False
ElseIf dtexists = False Then
    rsRate.AddNew
    rsRate!Date = Format(DateTime.Date, "dd/mm/yyyy")
    rsRate!GOLD22CT = Val(txtGold22.Text)
    rsRate!GOLD24CT = Val(txtGold24.Text)
    rsRate!SILVER = Val(txtSilver.Text)
    rsRate!Platinum = Val(txtPlatinum.Text)
    rsRate.Update
    Call CommitDB
    MsgBox "Rates Added successfully"
End If
End Sub

Private Sub cmdUpdate_Click()
txtGold22.Enabled = True
   txtGold24.Enabled = True
   txtSilver.Enabled = True
   txtPlatinum.Enabled = True
cmdOk.Enabled = True
cmdUpdate.Enabled = False
End Sub

Private Sub Form_Load()
Me.Top = 200
Me.Left = 500
dtexists = False
myname = txtDate.Caption
sql = "select * from rate where DATE = '" & Format(DateTime.Date, "mm/dd/yyyy") & "' "
If rs.State = 1 Then rs.Close
Set rs = conn.Execute(sql)
If Not rs.EOF Then
   dtexists = True
   rs.MoveFirst
   txtGold22.Text = rs!GOLD22CT
   txtGold24.Text = rs!GOLD24CT
   txtSilver.Text = rs!SILVER
   txtPlatinum.Text = rs!Platinum
   txtGold22.Enabled = False
   txtGold24.Enabled = False
   txtSilver.Enabled = False
   txtPlatinum.Enabled = False
End If
txtDate.Caption = DateTime.Date
If dtexists = True Then
   cmdOk.Enabled = False
Else
   cmdUpdate.Enabled = False
End If
End Sub


Private Sub Timer1_Timer()
txtDate.Caption = myname + "    " & DateTime.Now
End Sub

Private Sub txtGold22_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If txtGold22.Text = "" Then
      MsgBox " You left GOLD 22 Rate Field Empty !", vbCritical + vbOKOnly, "Missing Info"
      txtGold22.SetFocus
   Else
      If IsNumeric(txtGold22.Text) Then
         txtGold24.SetFocus
      Else
         MsgBox "Please enter a numeric value"
         txtGold22.SetFocus
      End If
   End If
End If
End Sub

Private Sub txtGold24_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If txtGold24.Text = "" Then
      MsgBox " You left GOLD 24 Rate Field Empty !", vbCritical + vbOKOnly, "Missing Info"
      txtGold24.SetFocus
   Else
      If IsNumeric(txtGold24.Text) Then
         txtSilver.SetFocus
      Else
         MsgBox "Please enter a numeric value"
         txtGold24.SetFocus
      End If
   End If
End If
End Sub

Private Sub txtSilver_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If txtSilver.Text = "" Then
      MsgBox " You left SILVER Rate Field Empty !", vbCritical + vbOKOnly, "Missing Info"
      txtSilver.SetFocus
   Else
      If Not IsNumeric(txtSilver.Text) Then
        MsgBox "Please enter a numeric value"
         txtSilver.SetFocus
      End If
   End If
End If
End Sub


