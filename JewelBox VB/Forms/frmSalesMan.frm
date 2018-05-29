VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.Form frmSalesMan 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "SalesMan Details"
   ClientHeight    =   6270
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6930
   ClipControls    =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6270
   ScaleWidth      =   6930
   Begin ACTIVESKINLibCtl.SkinLabel lblFemale 
      Height          =   255
      Left            =   5520
      OleObjectBlob   =   "frmSalesMan.frx":0000
      TabIndex        =   42
      Top             =   2040
      Width           =   615
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblMale 
      Height          =   255
      Left            =   5520
      OleObjectBlob   =   "frmSalesMan.frx":007C
      TabIndex        =   41
      Top             =   1680
      Width           =   735
   End
   Begin ACTIVESKINLibCtl.SkinLabel lblGender 
      Height          =   255
      Left            =   5160
      OleObjectBlob   =   "frmSalesMan.frx":00F4
      TabIndex        =   40
      Top             =   1200
      Width           =   1455
   End
   Begin VB.OptionButton optFemale 
      Height          =   255
      Left            =   5160
      TabIndex        =   13
      Top             =   2040
      Width           =   255
   End
   Begin VB.OptionButton optMale 
      Height          =   255
      Left            =   5160
      TabIndex        =   3
      Top             =   1680
      Width           =   255
   End
   Begin MSComCtl2.DTPicker dtDateOfBirth 
      Height          =   375
      Left            =   4800
      TabIndex        =   8
      Top             =   2880
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      _Version        =   393216
      Format          =   22740993
      CurrentDate     =   38165
   End
   Begin MSComCtl2.DTPicker dtDateOfLeave 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "dd/MM/yyyy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   3
      EndProperty
      Height          =   375
      Left            =   4680
      TabIndex        =   14
      Top             =   4440
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      _Version        =   393216
      Format          =   22740993
      CurrentDate     =   38165
   End
   Begin MSComCtl2.DTPicker dtDateOfJoin 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "dd/MM/yyyy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   3
      EndProperty
      Height          =   375
      Left            =   1440
      TabIndex        =   12
      Top             =   4440
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      _Version        =   393216
      Format          =   22740993
      CurrentDate     =   38165
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel20 
      Height          =   255
      Left            =   3720
      OleObjectBlob   =   "frmSalesMan.frx":0170
      TabIndex        =   39
      Top             =   2880
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel18 
      Height          =   615
      Left            =   480
      OleObjectBlob   =   "frmSalesMan.frx":01FA
      TabIndex        =   38
      Top             =   4920
      Width           =   6135
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel17 
      Height          =   615
      Left            =   840
      OleObjectBlob   =   "frmSalesMan.frx":0424
      TabIndex        =   37
      Top             =   0
      Width           =   5415
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel16 
      Height          =   255
      Left            =   3240
      OleObjectBlob   =   "frmSalesMan.frx":04D7
      TabIndex        =   36
      Top             =   4440
      Width           =   1335
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel15 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0569
      TabIndex        =   35
      Top             =   4440
      Width           =   1215
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel14 
      Height          =   255
      Left            =   3600
      OleObjectBlob   =   "frmSalesMan.frx":05FB
      TabIndex        =   34
      Top             =   720
      Width           =   2655
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel13 
      Height          =   495
      Left            =   3360
      OleObjectBlob   =   "frmSalesMan.frx":06A9
      TabIndex        =   33
      Top             =   3960
      Width           =   2895
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel12 
      Height          =   255
      Left            =   3360
      OleObjectBlob   =   "frmSalesMan.frx":0793
      TabIndex        =   32
      Top             =   3600
      Width           =   2775
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel11 
      Height          =   255
      Left            =   3360
      OleObjectBlob   =   "frmSalesMan.frx":084F
      TabIndex        =   31
      Top             =   3240
      Width           =   2535
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdCancel 
      Height          =   375
      Left            =   5400
      OleObjectBlob   =   "frmSalesMan.frx":08FB
      TabIndex        =   30
      Top             =   5640
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdDelete 
      Height          =   375
      Left            =   4080
      OleObjectBlob   =   "frmSalesMan.frx":0987
      TabIndex        =   29
      Top             =   5640
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdSave 
      Height          =   375
      Left            =   2760
      OleObjectBlob   =   "frmSalesMan.frx":0A13
      TabIndex        =   15
      Top             =   5640
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdEdit 
      Height          =   375
      Left            =   1440
      OleObjectBlob   =   "frmSalesMan.frx":0A9B
      TabIndex        =   28
      Top             =   5640
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdNew 
      Height          =   375
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0B23
      TabIndex        =   27
      Top             =   5640
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel10 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0BA9
      TabIndex        =   26
      Top             =   3960
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel9 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0C2D
      TabIndex        =   25
      Top             =   3600
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel8 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0CB1
      TabIndex        =   24
      Top             =   3240
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel7 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0D33
      TabIndex        =   23
      Top             =   2880
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel6 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0DB7
      TabIndex        =   22
      Top             =   2520
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel5 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0E35
      TabIndex        =   21
      Top             =   2160
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel4 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0EB1
      TabIndex        =   20
      Top             =   1800
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel3 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0F33
      TabIndex        =   19
      Top             =   1440
      Width           =   975
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel2 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":0FB9
      TabIndex        =   18
      Top             =   1080
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinLabel SkinLabel1 
      Height          =   255
      Left            =   120
      OleObjectBlob   =   "frmSalesMan.frx":1041
      TabIndex        =   17
      Top             =   720
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   6360
      OleObjectBlob   =   "frmSalesMan.frx":10CB
      TabIndex        =   16
      Top             =   2520
      Width           =   480
   End
   Begin VB.TextBox txtPassword 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1440
      MaxLength       =   20
      PasswordChar    =   "*"
      TabIndex        =   11
      Top             =   3960
      Width           =   1695
   End
   Begin VB.TextBox txtLogin 
      Height          =   285
      Left            =   1440
      MaxLength       =   20
      TabIndex        =   10
      Top             =   3600
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
      ItemData        =   "frmSalesMan.frx":1198
      Left            =   1440
      List            =   "frmSalesMan.frx":119A
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
   Begin VB.TextBox txtPhone 
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
      Left            =   1440
      MaxLength       =   15
      TabIndex        =   9
      Top             =   3240
      Width           =   1695
   End
   Begin VB.TextBox txtZip 
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
      Left            =   1440
      MaxLength       =   7
      TabIndex        =   7
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox txtState 
      Height          =   285
      Left            =   1440
      MaxLength       =   20
      TabIndex        =   6
      Top             =   2520
      Width           =   3255
   End
   Begin VB.TextBox txtCity 
      Height          =   285
      Left            =   1440
      MaxLength       =   20
      TabIndex        =   5
      Top             =   2160
      Width           =   3255
   End
   Begin VB.TextBox txtAddress 
      Height          =   285
      Left            =   1440
      MaxLength       =   30
      TabIndex        =   4
      Top             =   1800
      Width           =   3255
   End
   Begin VB.TextBox txtLastName 
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
      Left            =   1440
      MaxLength       =   20
      TabIndex        =   2
      Top             =   1440
      Width           =   2415
   End
   Begin VB.TextBox txtFirstName 
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
      Left            =   1440
      MaxLength       =   20
      TabIndex        =   1
      Top             =   1080
      Width           =   2415
   End
End
Attribute VB_Name = "frmSalesMan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim isNew As Boolean
Private Sub PopulateSalesManID()
'cboSalesID.Clear
If Not rsSalesMan.EOF Then
    rsSalesMan.MoveFirst
    While Not rsSalesMan.EOF
        cboSalesID.AddItem rsSalesMan!SALESMANID
        rsSalesMan.MoveNext
    Wend
End If
End Sub
Private Sub Display()
txtFirstName.Enabled = False
txtLastName.Enabled = False
txtAddress.Enabled = False
txtCity.Enabled = False
txtState.Enabled = False
txtZip.Enabled = False
txtPhone.Enabled = False
txtLogin.Enabled = False
txtPassword.Enabled = False
dtDateOfBirth.Enabled = False
dtDateOfJoin.Enabled = False
dtDateOfLeave.Enabled = False
If rsSalesMan.RecordCount > 0 Then
    rsSalesMan.MoveFirst
    While Not rsSalesMan.EOF
      If Trim(UCase(cboSalesID.Text)) = Trim(UCase(rsSalesMan!SALESMANID)) Then
         cboSalesID.Text = rsSalesMan!SALESMANID
         txtFirstName.Text = rsSalesMan!FIRSTNAME
         txtLastName.Text = rsSalesMan!LASTNAME
         If rsSalesMan!SEX = "M" Then
             optMale.Value = True
         ElseIf rsSalesMan!SEX = "F" Then
             optFemale.Value = True
         End If
         txtAddress.Text = rsSalesMan!ADDRESS
         txtCity.Text = rsSalesMan!CITY
         txtState.Text = rsSalesMan!State
         txtZip.Text = rsSalesMan!ZIP
         txtPhone.Text = rsSalesMan!PHONE
         txtLogin.Text = rsLogin!LOGINID
         txtPassword.Text = rsLogin!Password
         dtDateOfBirth.Value = rsSalesMan!DATEOFBIRTH
         dtDateOfJoin.Value = rsSalesMan!DATEOFJOIN
         dtDateOfLeave.Value = rsSalesMan!DATEOFLEAVE
       End If
       rsSalesMan.MoveNext
       rsLogin.MoveNext
    Wend
End If
End Sub
Private Sub EnableControls()
txtFirstName.Enabled = True
txtLastName.Enabled = True
txtAddress.Enabled = True
txtCity.Enabled = True
txtState.Enabled = True
txtZip.Enabled = True
txtPhone.Enabled = True
txtLogin.Enabled = True
txtPassword.Enabled = True
dtDateOfBirth.Enabled = True
dtDateOfJoin.Enabled = True
dtDateOfLeave.Enabled = False
cmdSave.Enabled = True
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
Unload Me
End Sub
Private Sub cmdDelete_Click()
cboSalesID.Clear
If Not rsSalesMan.EOF Then
    rsSalesMan.MoveFirst
    While Not rsSalesMan.EOF
        cboSalesID.AddItem rsSalesMan!SALESMANID
        rsSalesMan.MoveNext
    Wend
End If
End Sub

Private Sub cmdEdit_Click()
Call PopulateSalesManID
isNew = False
Call EnableControls
End Sub

Private Sub cmdNew_Click()
cboSalesID.Clear
Call PopulateSalesManID

cmdNew.Enabled = False
isNew = True
cboSalesID.Text = ""
txtFirstName.Text = ""
txtLastName.Text = ""
optMale.Value = True
optFemale.Value = False
txtAddress.Text = ""
txtCity.Text = ""
txtState.Text = ""
txtZip.Text = ""
txtPhone.Text = ""
txtLogin.Text = ""
txtPassword.Text = ""
Call EnableControls
cboSalesID.SetFocus
End Sub

Private Sub cmdSave_Click()
If isNew = True Then
   If validate() = True Then
    rsLogin.AddNew
    rsLogin!SALESMANID = Trim(cboSalesID.Text)
    rsLogin!LOGINID = Trim(txtLogin.Text)
    rsLogin!Password = Trim(txtPassword.Text)
    rsLogin.Save
    Call CommitDB
     rsSalesMan.AddNew
     rsSalesMan!SALESMANID = Trim(cboSalesID.Text)
     rsSalesMan!FIRSTNAME = Trim(txtFirstName.Text)
     rsSalesMan!LASTNAME = Trim(txtLastName.Text)
     If optMale.Value = True Then
        rsSalesMan!SEX = Trim("M")
     ElseIf optFemale.Value Then
        rsSalesMan!SEX = Trim("F")
     End If
   rsSalesMan!ADDRESS = Trim(txtAddress.Text)
   rsSalesMan!CITY = Trim(txtCity.Text)
   rsSalesMan!State = Trim(txtState.Text)
   rsSalesMan!ZIP = Trim(txtZip.Text)
   rsSalesMan!PHONE = Trim(txtPhone.Text)
   rsSalesMan!DATEOFBIRTH = dtDateOfBirth.Value
   rsSalesMan!DATEOFJOIN = dtDateOfJoin.Value
   rsSalesMan!DATEOFLEAVE = dtDateOfLeave.Value
   rsSalesMan.Save
   Call CommitDB

   MsgBox "New Details Added Successfully", vbOKOnly + vbInformation, "NEW SALESMAN ADDED SUCCESSFULLY"
   cmdNew.Enabled = True
  End If
ElseIf isNew = False Then
   MsgBox "Details Saved Successfully", vbOKOnly + vbInformation, "SAVED SUCCESSFULLY"
End If
End Sub

Private Sub Form_Load()
If UseSkin = True Then
    ApplySkinForm
End If
isNew = False
cmdSave.Enabled = False
Call PopulateSalesManID
End Sub





Public Sub ApplySkinForm()
SkinForm1.SkinPath = skinname
SkinForm1.AdjustSize = True
SkinLabel1.ApplySkin SkinForm1
SkinLabel2.ApplySkin SkinForm1
SkinLabel3.ApplySkin SkinForm1
SkinLabel4.ApplySkin SkinForm1
SkinLabel5.ApplySkin SkinForm1
SkinLabel6.ApplySkin SkinForm1
SkinLabel7.ApplySkin SkinForm1
SkinLabel8.ApplySkin SkinForm1
SkinLabel9.ApplySkin SkinForm1
SkinLabel10.ApplySkin SkinForm1
SkinLabel11.ApplySkin SkinForm1
SkinLabel12.ApplySkin SkinForm1
SkinLabel13.ApplySkin SkinForm1
SkinLabel14.ApplySkin SkinForm1
SkinLabel15.ApplySkin SkinForm1
SkinLabel16.ApplySkin SkinForm1
SkinLabel17.ApplySkin SkinForm1
SkinLabel18.ApplySkin SkinForm1
SkinLabel20.ApplySkin SkinForm1
lblFemale.ApplySkin SkinForm1
lblGender.ApplySkin SkinForm1
lblMale.ApplySkin SkinForm1
cmdCancel.ApplySkin SkinForm1
cmdDelete.ApplySkin SkinForm1
cmdNew.ApplySkin SkinForm1
cmdEdit.ApplySkin SkinForm1
cmdSave.ApplySkin SkinForm1
End Sub

Private Sub optMale_Click()
If optMale.Value = True Then
optFemale.Value = False
ElseIf optMale.Value = False Then
optFemale.Value = True
End If

    
End Sub

Private Sub optFemale_Click()
If optFemale.Value = True Then
optMale.Value = False
ElseIf optFemale.Value = False Then
optMale.Value = True
End If
End Sub

Public Function validate() As Boolean
If isNew = True Then
  Dim exists As Boolean
  Dim uexists As Boolean
  uexists = False
  exists = False
  If rsLogin.RecordCount > 0 Then
    rsLogin.MoveFirst
    While Not rsLogin.EOF
        If Trim(UCase(rsLogin!SALESMANID)) = Trim(UCase(cboSalesID.Text)) Then
           exists = True
        End If
        If Trim(UCase(rsLogin!LOGINID)) = Trim(UCase(txtLogin.Text)) Then
            uexists = True
        End If
        rsLogin.MoveNext
    Wend
    End If
    If exists = True Then
      MsgBox "SalesManID already exists ", vbOKOnly + vbCritical, "ERROR"
      validate = False
      Exit Function
    ElseIf uexists = True Then
     MsgBox "UserID already exists ", vbOKOnly + vbCritical, "ERROR"
      validate = False
      Exit Function
    End If
    If Trim(txtLogin.Text) = "" Then
            MsgBox "You haven't entered the loginid ", vbOKOnly + vbCritical, "ERROR"
            validate = False
            Exit Function
     Else
        validate = True
     End If
Else
End If
End Function
Private Sub optMale_KeyPress(KeyAscii As Integer)
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
   optMale.SetFocus
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
   dtDateOfBirth.SetFocus
End If
End Sub
Private Sub dtDateOfBirth_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   dtDateOfJoin.SetFocus
End If
End Sub
Private Sub dtDateOfJoin_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   dtDateOfLeave.SetFocus
End If
End Sub
Private Sub txtState_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtZip.SetFocus
End If
End Sub
