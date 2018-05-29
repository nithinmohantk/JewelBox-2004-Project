VERSION 5.00
Begin VB.Form frmRate 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Today's Rate -- "
   ClientHeight    =   3555
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4650
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3555
   ScaleWidth      =   4650
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   3000
      TabIndex        =   8
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   1440
      TabIndex        =   7
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox txtSilver 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   6
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox txtGold24 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Top             =   1680
      Width           =   975
   End
   Begin VB.TextBox txtGold22 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1680
      TabIndex        =   4
      Top             =   1080
      Width           =   975
   End
   Begin VB.Timer Timer1 
      Interval        =   60
      Left            =   4320
      Top             =   480
   End
   Begin VB.Label Label7 
      Caption         =   "in Rupees/Gram"
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
      Left            =   2760
      TabIndex        =   11
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "in Rupees/Gram"
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
      Left            =   2760
      TabIndex        =   10
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Label Label5 
      Caption         =   "in Rupees/Gram"
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
      Left            =   2760
      TabIndex        =   9
      Top             =   1080
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "SILVER      :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Gold 24 CT :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Gold 22 CT :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Quote Today's Market Rate "
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   3615
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
Dim rs As New ADODB.Recordset
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdOK_Click()
If dtexists = True Then
   sql = "update rate set GOLD22CT = '" & CCur(Val(txtGold22.Text)) & "'," & _
          "GOLD24CT = '" & CCur(Val(txtGold24.Text)) & "'," & _
          "SILVER = '" & CCur(Val(txtSilver.Text)) & "'" & _
          "where DATE = '" & Format(DateTime.Date, "yyyy/mm/dd") & "'"
     conn.Execute (sql)
     MsgBox "update success"
ElseIf dtexists = False Then
   sql = "insert into rate (DATE,GOLD22CT,GOLD24CT,SILVER)" & _
         " values ('" & Format(DateTime.Date, "yyyy/mm/dd") & "'," & _
         "'" & CCur(Val(txtGold22.Text)) & "'," & _
         "'" & CCur(Val(txtGold24.Text)) & "','" & CCur(Val(txtSilver.Text)) & "')"
    conn.Execute (sql)
    MsgBox "Rates Added successfully"
End If
End Sub

Private Sub Form_Load()
dtexists = False
myname = Me.Caption
sql = "select * from rate where DATE = '" & Format(DateTime.Date, "yyyy-mm-dd") & "' "
If rs.State = 1 Then rs.Close
Set rs = conn.Execute(sql)
'Set rsRate = conn.Execute(sql)
If Not rs.EOF Then
   dtexists = True
   rs.MoveFirst
   txtGold22.Text = rs!GOLD22CT
   txtGold24.Text = rs!GOLD24CT
   txtSilver.Text = rs!SILVER
End If
End Sub

Private Sub Timer1_Timer()
Me.Caption = myname + "    " & DateTime.Now
End Sub


