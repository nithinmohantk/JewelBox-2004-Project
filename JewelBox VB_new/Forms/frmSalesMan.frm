VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form frmSalesMan 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "SalesMan Details"
   ClientHeight    =   6270
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6495
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   6495
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   240
      TabIndex        =   39
      Top             =   0
      Width           =   6015
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   240
         Picture         =   "frmSalesMan.frx":0000
         ScaleHeight     =   495
         ScaleWidth      =   495
         TabIndex        =   40
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label18 
         BackStyle       =   0  'Transparent
         Caption         =   "SalesMan Details Manager"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   735
         Left            =   840
         TabIndex        =   41
         Top             =   240
         Width           =   4935
      End
   End
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H00808080&
      Caption         =   "E&xit"
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
      Left            =   5400
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   18
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdDelete 
      BackColor       =   &H00808080&
      Caption         =   "&Delete"
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
      Left            =   3480
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H00808080&
      Caption         =   "&Save"
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
      Left            =   2520
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5760
      Width           =   855
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
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   17
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdEdit 
      BackColor       =   &H00808080&
      Caption         =   "&Edit"
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
      Left            =   1560
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   5760
      Width           =   855
   End
   Begin VB.CommandButton cmdNew 
      BackColor       =   &H00808080&
      Caption         =   "&New"
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
      Left            =   600
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5760
      Width           =   855
   End
   Begin MSMask.MaskEdBox txtBirth 
      Height          =   285
      Left            =   1560
      TabIndex        =   3
      Top             =   1920
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   0
      MaxLength       =   10
      Format          =   "dd/MM/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin VB.TextBox txtPassword 
      Appearance      =   0  'Flat
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1560
      MaxLength       =   20
      PasswordChar    =   "*"
      TabIndex        =   11
      Top             =   4560
      Width           =   1695
   End
   Begin VB.TextBox txtLogin 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1560
      MaxLength       =   20
      TabIndex        =   10
      Top             =   4200
      Width           =   1695
   End
   Begin VB.ComboBox cboSalesID 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "SM000"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   315
      ItemData        =   "frmSalesMan.frx":0442
      Left            =   1560
      List            =   "frmSalesMan.frx":0444
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   1200
      Width           =   1575
   End
   Begin VB.TextBox txtPhone 
      Appearance      =   0  'Flat
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "04962-264869"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   285
      Left            =   1560
      MaxLength       =   15
      TabIndex        =   9
      Top             =   3840
      Width           =   1695
   End
   Begin VB.TextBox txtZip 
      Appearance      =   0  'Flat
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   1
      EndProperty
      Height          =   285
      Left            =   1560
      MaxLength       =   7
      TabIndex        =   8
      Top             =   3480
      Width           =   975
   End
   Begin VB.TextBox txtState 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1560
      MaxLength       =   20
      TabIndex        =   7
      Top             =   3120
      Width           =   2415
   End
   Begin VB.TextBox txtCity 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1560
      MaxLength       =   20
      TabIndex        =   6
      Top             =   2760
      Width           =   2415
   End
   Begin VB.TextBox txtAddress 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   1560
      MaxLength       =   30
      TabIndex        =   5
      Top             =   2400
      Width           =   4815
   End
   Begin VB.TextBox txtLastName 
      Appearance      =   0  'Flat
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "Nithin Mohan"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   285
      Left            =   4560
      MaxLength       =   20
      TabIndex        =   2
      Top             =   1560
      Width           =   1695
   End
   Begin VB.TextBox txtFirstName 
      Appearance      =   0  'Flat
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "Nithin Mohan"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   0
      EndProperty
      Height          =   285
      HideSelection   =   0   'False
      Left            =   1560
      MaxLength       =   20
      TabIndex        =   1
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      Caption         =   "Sales Man Details "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   4815
      Left            =   120
      TabIndex        =   19
      Top             =   840
      Width           =   6495
      Begin VB.CheckBox optEnable 
         Appearance      =   0  'Flat
         Caption         =   "Enable"
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   5280
         TabIndex        =   47
         Top             =   3840
         Width           =   975
      End
      Begin VB.ListBox txtGender 
         Appearance      =   0  'Flat
         Height          =   420
         ItemData        =   "frmSalesMan.frx":0446
         Left            =   5280
         List            =   "frmSalesMan.frx":0450
         TabIndex        =   4
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox txtAge 
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "Nithin Mohan"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Height          =   285
         Left            =   3480
         MaxLength       =   20
         TabIndex        =   21
         Top             =   1080
         Width           =   495
      End
      Begin MSMask.MaskEdBox txtJoin 
         Height          =   285
         Left            =   1440
         TabIndex        =   12
         Top             =   4080
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   503
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         Format          =   "dd/MM/yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox txtLeave 
         Height          =   285
         Left            =   4920
         TabIndex        =   35
         Top             =   4080
         Width           =   1215
         _ExtentX        =   2143
         _ExtentY        =   503
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         Format          =   "dd/MM/yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin VB.Label Label21 
         BackStyle       =   0  'Transparent
         Caption         =   "==> please select the salesman-id from the combo box"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   3240
         TabIndex        =   46
         Top             =   240
         Width           =   3135
      End
      Begin VB.Label Label22 
         BackStyle       =   0  'Transparent
         Caption         =   "==> Should n't be more than 6"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3360
         TabIndex        =   45
         Top             =   2640
         Width           =   2655
      End
      Begin VB.Label Label21 
         BackStyle       =   0  'Transparent
         Caption         =   "==> Should n't be more than 14"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   3360
         TabIndex        =   44
         Top             =   3000
         Width           =   2655
      End
      Begin VB.Label Label20 
         BackStyle       =   0  'Transparent
         Caption         =   "==> Should n't be blank."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3360
         TabIndex        =   43
         Top             =   3360
         Width           =   2175
      End
      Begin VB.Label Label19 
         BackStyle       =   0  'Transparent
         Caption         =   "==> Should n't be blank."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3360
         TabIndex        =   42
         Top             =   3720
         Width           =   2175
      End
      Begin VB.Label Label17 
         BackStyle       =   0  'Transparent
         Caption         =   "Current Status"
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
         Left            =   120
         TabIndex        =   38
         Top             =   4440
         Width           =   1335
      End
      Begin VB.Label txtStatus 
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
         ForeColor       =   &H00008000&
         Height          =   255
         Left            =   1440
         TabIndex        =   37
         Top             =   4440
         Width           =   1215
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "Date-Of-Leaving"
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
         Left            =   3360
         TabIndex        =   36
         Top             =   4080
         Width           =   1455
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Date-Of-Join"
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
         Left            =   120
         TabIndex        =   34
         Top             =   4080
         Width           =   1335
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Password"
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
         Left            =   120
         TabIndex        =   33
         Top             =   3720
         Width           =   1335
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "User Name "
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
         Left            =   120
         TabIndex        =   32
         Top             =   3360
         Width           =   1335
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Phone No."
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
         Left            =   120
         TabIndex        =   31
         Top             =   3000
         Width           =   1335
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "State "
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
         Left            =   120
         TabIndex        =   30
         Top             =   2280
         Width           =   1335
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "City/Place   "
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
         Left            =   120
         TabIndex        =   29
         Top             =   1920
         Width           =   1335
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Address   "
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
         Left            =   120
         TabIndex        =   28
         Top             =   1560
         Width           =   1335
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Date of Birth "
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
         Left            =   120
         TabIndex        =   27
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "First Name "
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
         Left            =   120
         TabIndex        =   26
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "SalesMan-ID"
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
         Left            =   120
         TabIndex        =   25
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Zip/Post Code     :"
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
         Left            =   120
         TabIndex        =   24
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "GENDER"
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
         Left            =   4320
         TabIndex        =   23
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Age"
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
         Left            =   3000
         TabIndex        =   22
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Last Name"
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
         Left            =   3480
         TabIndex        =   20
         Top             =   720
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmSalesMan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim isNew As Boolean
Private Sub PopulateSalesManID()
cboSalesID.Clear
If Not rsSalesMan.EOF Then
    rsSalesMan.MoveFirst
    While Not rsSalesMan.EOF
        cboSalesID.AddItem rsSalesMan!SALESMANID
        rsSalesMan.MoveNext
    Wend
End If
End Sub
Public Sub ClearControls()
cboSalesID.Text = ""
txtFirstName.Text = ""
txtLastName.Text = ""
txtAddress.Text = ""
txtCity.Text = ""
txtState.Text = ""
txtZip.Text = ""
txtPhone.Text = ""
txtLogin.Text = ""
txtPassword.Text = ""
txtAge.Text = ""
txtBirth.Text = "__/__/____"
txtJoin.Text = "__/__/____"
txtLeave.Text = "__/__/____"
End Sub
Private Sub Display()
 ss1 = "select * from salesman where salesmanid = '" & UCase(Trim(cboSalesID.Text)) & "'"
 ss2 = "select loginid,password from login where  salesmanid = '" & UCase(Trim(cboSalesID.Text)) & "'  "
 Set rs = conn.Execute(ss1)
 Set rs1 = conn.Execute(ss2)
    If Not rs.EOF And Not rs1.EOF Then
        cboSalesID.Text = rs!SALESMANID
        txtFirstName.Text = rs!FIRSTNAME
        txtLastName.Text = rs!LASTNAME
        If rs!GENDER = "M" Then
            txtGender.Selected(0) = True
        ElseIf rs!GENDER = "F" Then
             txtGender.Selected(1) = True
         End If
         txtAddress.Text = rs!Address
         txtCity.Text = rs!CITY
         txtState.Text = rs!State
         txtZip.Text = rs!ZIPCODE
         txtPhone.Text = rs!PHONENO
         txtLogin.Text = rs1!LOGINID
         txtPassword.Text = decrypt_pass(rs1!Password)
         txtBirth.Text = rs!DATEOFBIRTH
         txtJoin.Text = rs!DATEOFJOIN
         txtAge.Text = rs!AGE
         If Trim(rs!Status) = "RETIRED" Then
            optEnable = vbChecked
            optEnable.Enabled = False
            txtLeave.Enabled = False
            txtLeave.Text = rs!DATEOFLEAVE
         End If
         txtStatus.Caption = UCase(rs!Status)
      End If
End Sub
Private Sub enablecontrols()
txtFirstName.Enabled = True
txtLastName.Enabled = True
txtAddress.Enabled = True
txtCity.Enabled = True
txtState.Enabled = True
txtZip.Enabled = True
txtPhone.Enabled = True
txtLogin.Enabled = True
txtPassword.Enabled = True
txtBirth.Enabled = True
txtJoin.Enabled = True
txtLeave.Enabled = False
txtAge.Enabled = True
txtGender.Enabled = True
optEnable.Enabled = True
End Sub

Public Sub DisableControls()
txtFirstName.Enabled = False
txtLastName.Enabled = False
txtAddress.Enabled = False
txtCity.Enabled = False
txtState.Enabled = False
txtZip.Enabled = False
txtPhone.Enabled = False
txtLogin.Enabled = False
txtPassword.Enabled = False
txtBirth.Enabled = False
txtJoin.Enabled = False
txtLeave.Enabled = False
txtAge.Enabled = False
txtGender.Enabled = False
End Sub
Private Sub cboSalesID_Change()
If Not isNew = True Then
Call Display
End If
End Sub

Private Sub cboSalesID_Click()
Call Display
End Sub

Private Sub cboSalesID_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtFirstName.SetFocus
End If
End Sub


Private Sub cmdCancel_Click()
ans = MsgBox("Are you want to cancel the current Job ?", vbQuestion + vbYesNo, "CANCEL JOB ????")
If ans = vbYes Then
    Call PopulateSalesManID
    cmdNew.Enabled = True
    cmdEdit.Enabled = True
    cmdCancel.Enabled = False
    cmdExit.Enabled = True
    cmdDelete.Enabled = True
    cmdSave.Enabled = False
    Call DisableControls
End If
End Sub
Private Sub cmdDelete_Click()
ans = MsgBox("Are you really want to delete this details", vbQuestion + vbYesNo, "DELETE")
If ans = vbYes Then
   If rsLogin.State = 1 Then rsLogin.Close
   rsLogin.Open "login", conn, adOpenDynamic, adLockOptimistic
   rsLogin.Find "SALESMANID = '" & UCase(Trim(cboSalesID.Text)) & "'"
   If rsSalesMan.State = 1 Then rsSalesMan.Close
   rsSalesMan.Open "salesman", conn, adOpenDynamic, adLockOptimistic
   rsSalesMan.Find "salesmanid = '" & UCase(Trim(cboSalesID.Text)) & "'"
   rsLogin.Delete
   rsSalesMan.Delete
   Call CommitDB
   MsgBox "User " & UCase(Trim(cboSalesID.Text)) & " 's Details Deleted Successfully"
   Call PopulateSalesManID
   Call ClearControls
End If
End Sub

Private Sub cmdEdit_Click()
isNew = False
cmdNew.Enabled = False
cmdEdit.Enabled = False
cmdExit.Enabled = False
cmdSave.Enabled = True
cmdDelete.Enabled = False
cmdCancel.Enabled = True
Call enablecontrols
txtPassword.Enabled = False
cboSalesID.Enabled = False
txtLogin.Enabled = False
End Sub

Private Sub cmdExit_Click()
Unload Me
End Sub

Private Sub cmdNew_Click()
cboSalesID.Clear
Call PopulateSalesManID
cmdNew.Enabled = False
cmdEdit.Enabled = False
cmdExit.Enabled = False
cmdSave.Enabled = True
cmdDelete.Enabled = False
cmdCancel.Enabled = True
isNew = True
Call enablecontrols
Call ClearControls
cboSalesID.SetFocus
txtJoin.Text = DateTime.Date
End Sub

Private Sub cmdSave_Click()
If isNew = True Then
   If validate() = True Then
    rsLogin.AddNew
    rsLogin!SALESMANID = UCase(Trim(cboSalesID.Text))
    rsLogin!LOGINID = Trim(txtLogin.Text)
    rsLogin!Password = encrypt_pass(Trim(txtPassword.Text))
    rsLogin!expired = "0"
    rsLogin.Update
    rsLogin.Close
     rsSalesMan.AddNew
     rsSalesMan!SALESMANID = Trim(cboSalesID.Text)
     rsSalesMan!FIRSTNAME = Trim(txtFirstName.Text)
     rsSalesMan!LASTNAME = Trim(txtLastName.Text)
     If LCase(txtGender.Text) = "male" Then
        rsSalesMan!GENDER = Trim("M")
     ElseIf LCase(txtGender.Text) = "female" Then
        rsSalesMan!GENDER = Trim("F")
     End If
     rsSalesMan!AGE = Val(Trim(txtAge.Text))
     rsSalesMan!Address = Trim(txtAddress.Text)
     rsSalesMan!CITY = Trim(txtCity.Text)
     rsSalesMan!State = Trim(txtState.Text)
     rsSalesMan!ZIPCODE = Trim(txtZip.Text)
     rsSalesMan!PHONENO = Trim(txtPhone.Text)
     rsSalesMan!DATEOFBIRTH = txtBirth.Text
     rsSalesMan!DATEOFJOIN = txtJoin.Text
     rsSalesMan!Status = "ACTIVE"
     rsSalesMan.Update
     Call CommitDB
     MsgBox "New Details Added Successfully", vbOKOnly + vbInformation, "NEW SALESMAN ADDED SUCCESSFULLY"
     Call PopulateSalesManID
    cmdNew.Enabled = True
    cmdEdit.Enabled = True
    cmdCancel.Enabled = False
    cmdExit.Enabled = True
    cmdDelete.Enabled = True
    cmdSave.Enabled = False
    cboSalesID.Enabled = True
    Call ClearControls
    Call DisableControls
   End If
ElseIf isNew = False Then
    cboSalesID.Enabled = False
     If rsSalesMan.State = 1 Then rsSalesMan.Close
     rsSalesMan.Open "salesman", conn, adOpenDynamic, adLockOptimistic
     rsSalesMan.Find "SALESMANID = '" & UCase(Trim(cboSalesID.Text)) & "'"
     rsSalesMan!SALESMANID = Trim(cboSalesID.Text)
     rsSalesMan!FIRSTNAME = Trim(txtFirstName.Text)
     rsSalesMan!LASTNAME = Trim(txtLastName.Text)
     If LCase(txtGender.Text) = "male" Then
        rsSalesMan!GENDER = Trim("M")
     ElseIf LCase(txtGender.Text) = "female" Then
        rsSalesMan!GENDER = Trim("F")
     End If
     rsSalesMan!AGE = Val(Trim(txtAge.Text))
     rsSalesMan!Address = Trim(txtAddress.Text)
     rsSalesMan!CITY = Trim(txtCity.Text)
     rsSalesMan!State = Trim(txtState.Text)
     rsSalesMan!ZIPCODE = Trim(txtZip.Text)
     rsSalesMan!PHONENO = Trim(txtPhone.Text)
     rsSalesMan!DATEOFBIRTH = txtBirth.Text
     rsSalesMan!DATEOFJOIN = txtJoin.Text
     If optEnable = vbChecked Then
     rsSalesMan!DATEOFLEAVE = txtLeave.Text
     
     rsSalesMan!Status = "RETIRED"
     rsLogin.Find "SALESMANID = '" & UCase(Trim(cboSalesID.Text)) & "'"
     rsLogin!expired = "1"
     rsLogin.Update
     rsLogin.Close
     End If
     rsSalesMan.Update
     On Error Resume Next
     Call CommitDB
     MsgBox "Details Saved Successfully", vbOKOnly + vbInformation, "SAVED SUCCESSFULLY"
     Call PopulateSalesManID
    cmdNew.Enabled = True
    cmdEdit.Enabled = True
    cmdCancel.Enabled = False
    cmdExit.Enabled = True
    cmdDelete.Enabled = True
    cmdSave.Enabled = False
    cboSalesID.Enabled = True
    Call ClearControls
    Call DisableControls
End If

End Sub

Private Sub Form_Load()
isNew = False
Me.Top = 20
Me.Left = 500
cmdSave.Enabled = False
cmdCancel.Enabled = False
Call DisableControls
Call PopulateSalesManID
End Sub
Public Function validate() As Boolean
Dim uexists As Boolean
Dim sexists As Boolean
If isNew = True Then
    If rsSalesMan.State = 1 Then rsSalesMan.Close
    rsSalesMan.Open "salesman", conn, adOpenDynamic, adLockOptimistic
    rsSalesMan.Find "salesmanid = '" & UCase(Trim(cboSalesID.Text)) & "'"
    If rsLogin.State = 1 Then rsLogin.Close
    rsLogin.Open "login", conn, adOpenDynamic, adLockOptimistic
    rsLogin.Find "salesmanid = '" & UCase(Trim(cboSalesID.Text)) & "'"
    If rsSalesMan.EOF And rsLogin.EOF Then
       sexists = False
    Else
       sexists = True
    End If
    rsLogin.Find "loginid = '" & LCase(Trim(txtLogin.Text)) & "'"
    If rsLogin.EOF Then
       uexists = False
    Else
       uexists = True
    End If
    If sexists = True Then
      MsgBox "SalesMan-id already exists"
      validate = False
    ElseIf uexists = True Then
        MsgBox "login-id already exists"
        validate = False
    ElseIf sexists = False And uexists = False Then
        validate = True
    End If
End If
Call CommitDB
End Function

Private Sub optEnable_Click()
If optEnable = vbChecked Then
    txtLeave.Enabled = True
    txtLeave.Text = DateTime.Date
Else
    txtLeave.Enabled = False
    txtLeave.Text = "__/__/____"
End If
End Sub

Private Sub txtGender_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtAddress.SetFocus
End If
End Sub

Private Sub txtAddress_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtCity.SetFocus
End If
End Sub

Private Sub txtCity_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtState.SetFocus
End If
End Sub

Private Sub txtFirstName_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtLastName.SetFocus
End If
End Sub
Private Sub txtLastName_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtBirth.SetFocus
End If
End Sub

Private Sub txtZip_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtPhone.SetFocus
End If
End Sub
Private Sub txtPhone_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtLogin.SetFocus
End If
End Sub
Private Sub txtLogin_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtPassword.SetFocus
End If
End Sub
Private Sub txtPassword_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtJoin.SetFocus
End If
End Sub
Private Sub txtBirth_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
 If Len(txtBirth.Text) = 10 Then
   Dim i, j As Integer
   i = Format(DateTime.Date, "yyyy")
   j = Format(txtBirth.Text, "yyyy")
   txtAge.Text = i - j
   txtGender.SetFocus
 Else
  MsgBox "please enter Birth Date Correctly"
  txtBirth.SetFocus
 End If
End If
End Sub
Private Sub txtJoin_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   cmdSave.SetFocus
End If
End Sub
Private Sub txtState_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtZip.SetFocus
End If
End Sub
