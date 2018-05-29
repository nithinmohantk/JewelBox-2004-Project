VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{A9A48D8D-D1E0-11D4-B90B-444553540000}#74.1#0"; "RegCtl.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#4.6#0"; "crystl32.ocx"
Begin VB.MDIForm frmMain 
   BackColor       =   &H8000000C&
   Caption         =   "JewelBox 2004 v1.1 -  Limited Edition - Dream Works India Ltd"
   ClientHeight    =   7845
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   11670
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "MDIForm1"
   Picture         =   "frmMain.frx":08CA
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR1 
      Left            =   5040
      Top             =   3600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   262150
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   7350
      Width           =   11670
      _ExtentX        =   20585
      _ExtentY        =   873
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   6
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Bevel           =   0
            Object.Width           =   1960
            MinWidth        =   1960
            Picture         =   "frmMain.frx":16011
            Text            =   "Dreams"
            TextSave        =   "Dreams"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   10584
            MinWidth        =   10584
            Text            =   "©1981 - 2005 Copyright -- Dream Works Technologies India Ltd"
            TextSave        =   "©1981 - 2005 Copyright -- Dream Works Technologies India Ltd"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Bevel           =   0
            Object.Width           =   2648
            MinWidth        =   2648
            Picture         =   "frmMain.frx":168EB
            TextSave        =   "24/03/2005"
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Bevel           =   0
            Object.Width           =   1412
            MinWidth        =   1412
            TextSave        =   "2:36 PM"
         EndProperty
         BeginProperty Panel6 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Bevel           =   0
            Object.Width           =   2470
            MinWidth        =   2470
            Picture         =   "frmMain.frx":171C5
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   240
      Top             =   3000
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483644
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   9
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":17A9F
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":17EF1
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":18343
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":18795
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":18BE7
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":19039
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1948B
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":19BDD
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":1A02F
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   780
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11670
      _ExtentX        =   20585
      _ExtentY        =   1376
      ButtonWidth     =   2064
      ButtonHeight    =   1376
      Style           =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Market &Rate"
            Key             =   "rate"
            Object.ToolTipText     =   "Add / Update Todays Market Status"
            Object.Tag             =   "1"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Sales&Man"
            Key             =   "sman"
            Object.ToolTipText     =   "Manage SalesMan Details"
            Object.Tag             =   "2"
            ImageIndex      =   2
            Style           =   5
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   2
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "sman"
                  Text            =   "Add/Update SalesMan Details"
               EndProperty
               BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "chgpass"
                  Text            =   "Change Password"
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Stock"
            Object.ToolTipText     =   "Add/Update Stock Details"
            Object.Tag             =   "3"
            ImageIndex      =   3
            Style           =   5
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   3
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "stock_det"
                  Text            =   "Manage Stock Details"
               EndProperty
               BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "received"
                  Text            =   "Received Stock Entry"
               EndProperty
               BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "stksettings"
                  Text            =   "Stock Level Settings"
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Search??"
            Key             =   "find"
            Object.Tag             =   "4"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Bill"
            Key             =   "bill"
            Object.Tag             =   "5"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Report"
            Key             =   "report"
            Object.Tag             =   "6"
            ImageIndex      =   6
            Style           =   5
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   6
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "custom_sales"
                  Text            =   "Sales Custom Report"
               EndProperty
               BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "daily_sales"
                  Text            =   "Sales Daily Report"
               EndProperty
               BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "weekly_sales"
                  Text            =   "Sales Weekly Report"
               EndProperty
               BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "monthly_sales"
                  Text            =   "Sales Monthly Report"
               EndProperty
               BeginProperty ButtonMenu5 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "yearly_sales"
                  Text            =   "Sales Yearly Report"
               EndProperty
               BeginProperty ButtonMenu6 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "sman_sales"
                  Text            =   "Sales SalesMan Wise"
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&Utilities"
            Object.ToolTipText     =   "The most wanted tools you need..."
            ImageIndex      =   9
            Style           =   5
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   5
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "wordpad"
                  Text            =   "Word Pad"
               EndProperty
               BeginProperty ButtonMenu2 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "notepad"
                  Text            =   "Note Pad"
               EndProperty
               BeginProperty ButtonMenu3 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "paint"
                  Text            =   "Paint"
               EndProperty
               BeginProperty ButtonMenu4 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "calcu"
                  Text            =   "Calculator"
               EndProperty
               BeginProperty ButtonMenu5 {66833FEE-8583-11D1-B16A-00C0F0283628} 
                  Key             =   "winexp"
                  Text            =   "Windows Explorer"
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "&I Need Help ?"
            Object.ToolTipText     =   "The Help For you"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "I'm Going Out"
            Key             =   "exit"
            Object.Tag             =   "8"
            ImageIndex      =   8
         EndProperty
      EndProperty
   End
   Begin Registry.Reg RegAccess 
      Left            =   600
      Top             =   960
      _ExtentX        =   979
      _ExtentY        =   450
      Hkey            =   1
      ErrorReturn     =   0
   End
   Begin VB.Menu cmdFile 
      Caption         =   "&File"
      Begin VB.Menu mnuNewUser 
         Caption         =   "&New User"
      End
      Begin VB.Menu muFileWizard 
         Caption         =   "Run Wizard"
         Shortcut        =   ^W
      End
      Begin VB.Menu mnuFileRate 
         Caption         =   "Current Rate"
         Shortcut        =   ^D
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
         Shortcut        =   ^E
      End
   End
   Begin VB.Menu cmdManager 
      Caption         =   "&Manager"
      Begin VB.Menu mnupurchasemngr 
         Caption         =   "Purchase Received  Manager"
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuStockManage 
         Caption         =   "Stock  Manager"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuBillReport 
         Caption         =   "Bill Manager"
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuManageSalesMan 
         Caption         =   "SalesMan Manager"
         Shortcut        =   ^M
      End
   End
   Begin VB.Menu cmdReports 
      Caption         =   "Reports"
      Begin VB.Menu mnuSales 
         Caption         =   "Sales"
         Begin VB.Menu mnuSalesAll 
            Caption         =   "All(Default)"
         End
         Begin VB.Menu lin3 
            Caption         =   "-"
         End
         Begin VB.Menu mnuSalesBetween 
            Caption         =   "Custom(Between Dates)"
         End
         Begin VB.Menu lin2 
            Caption         =   "-"
         End
         Begin VB.Menu mnuSalesDaily 
            Caption         =   "Daily Wise"
         End
         Begin VB.Menu mnuSalesWeek 
            Caption         =   "Weekly"
         End
         Begin VB.Menu mnuSalesMonthly 
            Caption         =   "Monthly "
         End
         Begin VB.Menu mnuSalesQuarterly 
            Caption         =   "Quarterly"
         End
         Begin VB.Menu mnuSalesYearly 
            Caption         =   "Yearly"
         End
         Begin VB.Menu mnuSalesSMan 
            Caption         =   "SalesMan Wise"
         End
      End
      Begin VB.Menu mnuPurchase 
         Caption         =   "Purchase"
         Begin VB.Menu mnuPurAll 
            Caption         =   "All(Default)"
         End
         Begin VB.Menu lin4 
            Caption         =   "-"
         End
         Begin VB.Menu mnuPurCustom 
            Caption         =   "Custom(Between Dates)"
         End
         Begin VB.Menu lin1 
            Caption         =   "-"
         End
         Begin VB.Menu mnuCompany 
            Caption         =   "Company Wise"
         End
         Begin VB.Menu mnuPurDaily 
            Caption         =   "Daily"
         End
         Begin VB.Menu mnuPurWeekly 
            Caption         =   "Weekly"
         End
         Begin VB.Menu mnuPurMonthly 
            Caption         =   "Monthly"
         End
         Begin VB.Menu mnuPurQuarterly 
            Caption         =   "Quarterly"
         End
         Begin VB.Menu mnuPurYearly 
            Caption         =   "Yearly"
         End
      End
      Begin VB.Menu mnuReOrder 
         Caption         =   "ReOrder List"
      End
      Begin VB.Menu mnuStock 
         Caption         =   "Stock"
         Begin VB.Menu mnuStockAll 
            Caption         =   "All(Default)"
         End
         Begin VB.Menu mnuStockCustom 
            Caption         =   "Custom"
         End
      End
   End
   Begin VB.Menu cmdMaster 
      Caption         =   "&Master"
      Begin VB.Menu cmdStockLevel 
         Caption         =   "Stock &Level Settings"
      End
      Begin VB.Menu mnuMasterAdmin 
         Caption         =   "Admin Tools"
         Begin VB.Menu mnuStockClear 
            Caption         =   "Clear Database"
            Shortcut        =   ^Z
         End
         Begin VB.Menu mnuDeleteUser 
            Caption         =   "Delete User"
         End
         Begin VB.Menu mmm 
            Caption         =   "-"
         End
         Begin VB.Menu mnuFileUserChangePass 
            Caption         =   "Change Password"
            Shortcut        =   +{F2}
         End
      End
      Begin VB.Menu mm 
         Caption         =   "-"
      End
      Begin VB.Menu mnuMasterUser 
         Caption         =   "&User Tools"
         Begin VB.Menu mnuChgPass 
            Caption         =   "Change Password"
         End
      End
   End
   Begin VB.Menu cmdUtilities 
      Caption         =   "&Utilities"
      Begin VB.Menu mnuUtilitiesNotepad 
         Caption         =   "Notepad"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuUtilitiesWordpad 
         Caption         =   "WordPad"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuUtilitiesCalculator 
         Caption         =   "Calculator"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuUtilitiesPaint 
         Caption         =   "Paint"
         Shortcut        =   {F4}
      End
      Begin VB.Menu mnuUtilitiesWindowsExplorer 
         Caption         =   "Windows Explorer"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuUtilitiesGames 
         Caption         =   "&Games"
         Begin VB.Menu mnuUtilitiesGamesFreeCell 
            Caption         =   "FreeCell"
            Shortcut        =   ^{F6}
         End
         Begin VB.Menu mnuUtilitiesGamesMineSweeper 
            Caption         =   "MineSweeper"
            Shortcut        =   {F7}
         End
         Begin VB.Menu mnuUtilitiesGamesPinBall 
            Caption         =   "PinBall"
            Shortcut        =   {F8}
         End
         Begin VB.Menu mnuUtilitiesGamesSolitaire 
            Caption         =   "Solitaire"
            Shortcut        =   {F9}
         End
      End
      Begin VB.Menu mnuUtilitiesWMP 
         Caption         =   "Windows Media Player"
      End
   End
   Begin VB.Menu cmdHelp 
      Caption         =   "&Help??"
      Begin VB.Menu cmdRegister 
         Caption         =   "Register"
         Shortcut        =   ^{INSERT}
      End
      Begin VB.Menu mnuHelpHelp 
         Caption         =   "Help?"
         Shortcut        =   ^H
      End
      Begin VB.Menu mnuHelpAbout 
         Caption         =   "About Us"
         Shortcut        =   +{F12}
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim year As Integer
Dim month As Integer
Dim day As Integer

Private Sub cmdRegister_Click()
called_by = True
Load frmRegister
frmRegister.Show
End Sub

Private Sub cmdStockLevel_Click()
If LCase(loguser) = "admin" Then
    Load frmStockLevel
    frmStockLevel.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can Specify Stock Levels", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub

Private Sub MDIForm_Load()
Me.Arrange vbCascade
LoadSettings
Me.Caption = "JewelBox 2004 " & App.Major & "." & App.Minor & "." & App.Revision & " - Limited Edition - Dream Works Technologies India Ltd"
End Sub


Private Sub MDIForm_Unload(Cancel As Integer)
SaveSettings
End
End Sub

Private Sub mnuBillReport_Click()
Load frmBill
frmBill.Show
End Sub

Private Sub mnuChgPass_Click()
Call mnuFileUserChangePass_Click
End Sub

Private Sub mnuCompany_Click()
ispur = True
Load frmSName
frmSName.Show
End Sub

Private Sub mnuDeleteUser_Click()
If LCase(loguser) = "admin" Then
    Load frmDelUser
    frmDelUser.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can Delete User", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub

Private Sub mnuEditCopy_Click()

End Sub

Private Sub mnuEditPaste_Click()

End Sub

Private Sub mnuFileExit_Click()
ans = MsgBox("Are you going to exit from JewelBox ?", vbQuestion + vbYesNo, "Exit JewelBox 2004 ?")
If ans = vbYes Then
   Call SaveSettings
   MsgBox ("Thank You for Using " & App.ProductName & " - " & App.Major & "." & App.Minor & "." & App.Revision & " - " & App.Comments)
   End
End If
End Sub

Private Sub mnuFileRate_Click()
If LCase(loguser) = "admin" Then
        Load frmRate
        frmRate.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can access Rate Entry Form", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub
Private Sub mnuFileUserChangePass_Click()
Load frmChgPass
frmChgPass.Show
End Sub

Private Sub mnuHelpAbout_Click()
frmAbout.Show
End Sub
Private Sub mnuManageSalesMan_Click()
If LCase(loguser) = "admin" Then
    Load frmSalesMan
    frmSalesMan.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can access SalesMan Details Entry Form", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub
Private Sub mnuNewUser_Click()
called = True
Load frmNewUser
frmNewUser.Show
End Sub

Private Sub mnuPurAll_Click()
CR1.ReportFileName = App.Path + "\Reports\purrep.rpt"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnupurchasemngr_Click()
If LCase(loguser) = "admin" Then
    Load frmStkUpdate
    frmStkUpdate.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can access Stock Entry Form", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub

Private Sub mnuReportManager_Click()
Load frmReport
frmReport.Show
End Sub

Private Sub mnuPurCustom_Click()
ispur = True
Load frmCustomReport
frmCustomReport.Show
End Sub

Private Sub mnuPurDaily_Click()
CR1.ReportFileName = App.Path + "\Reports\purreport.rpt"
CR1.SelectionFormula = "{Purchase.Date} = Today"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuPurMonthly_Click()
month = Format(DateTime.Date, "mm")
CR1.ReportFileName = App.Path + "\Reports\purreport.rpt"
CR1.SelectionFormula = "Month({Purchase.Date})=" & month
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuPurQuarterly_Click()
MsgBox "sorry currently in beta stage.this function will be added later"
End Sub

Private Sub mnuPurWeekly_Click()
MsgBox "sorry currently in beta stage.this function will be added later"
End Sub

Private Sub mnuPurYearly_Click()
year = Format(DateTime.Date, "yyyy")
CR1.ReportFileName = App.Path + "\Reports\purreport.rpt"
CR1.SelectionFormula = "Year({Purchase.Date})=" & year
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuReOrder_Click()
CR1.ReportFileName = App.Path + "\Reports\ReOrder.rpt"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuSalesAll_Click()
CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
CR1.SelectionFormula = ""
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuSalesBetween_Click()
ispur = False
Load frmCustomReport
frmCustomReport.Show
End Sub

Private Sub mnuSalesDaily_Click()
CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
CR1.SelectionFormula = "{Sales.Date} = Today"
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuSalesMonthly_Click()
month = Format(DateTime.Date, "mm")
CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
CR1.SelectionFormula = "Month({Sales.Date})=" & month
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuSalesQuarterly_Click()
MsgBox "sorry currently in beta stage.this function will be added later"
End Sub

Private Sub mnuSalesSMan_Click()
ispur = False
Load frmSName
frmSName.Show
End Sub

Private Sub mnuSalesWeek_Click()
MsgBox "sorry currently in beta stage.this function will be added later"
'day = Format(DateTime.Date, "dd")
'CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
'CR1.SelectionFormula = "Day({Sales.Date}) " & day
'CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
'CR1.RetrieveDataFiles
'CR1.WindowState = crptMaximized
'CR1.Action = 1
End Sub

Private Sub mnuSalesYearly_Click()
year = Format(DateTime.Date, "yyyy")
CR1.ReportFileName = App.Path + "\Reports\salesreport.rpt"
CR1.SelectionFormula = "Year({Sales.Date})=" & year
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuStockAll_Click()
CR1.ReportFileName = App.Path + "\Reports\stock_rep.rpt"
CR1.SelectionFormula = ""
CR1.Connect = "DSN = JewelBox;uid = admin;pwd= velocity"
CR1.RetrieveDataFiles
CR1.WindowState = crptMaximized
CR1.Action = 1
End Sub

Private Sub mnuStockClear_Click()
If LCase(loguser) = "admin" Then
    sql = "delete from login where salesmanid <> 'admin'"
    conn.Execute sql
    Call CommitDB
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can Clear DataBase", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub

Private Sub mnuStockCustom_Click()
Load frmStkItem
frmStkItem.Show
End Sub

Private Sub mnuStockManage_Click()
If LCase(loguser) = "admin" Then
    Load frmStock
    frmStock.Show
Else
    MsgBox "ACCESS DENIED " & vbCrLf & "Only ADMINISTRATIVE USER can access Stock Entry Form", vbCritical + vbOKOnly, "ACCESS DENIED"
End If
End Sub
Private Sub mnuUtilitiesWordpad_Click()
Dim res As Double
res = Shell("C:\Program Files\Windows NT\Accessories\wordpad.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesNotepad_Click()
Dim res As Double
res = Shell("notepad.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesCalculator_Click()
Dim res As Double
res = Shell("calc.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesWindowsExplorer_Click()
Dim res As Double
res = Shell("explorer.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesWMP_Click()
Dim res As Double
res = Shell("C:\Program Files\Windows Media Player\wmplayer.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesPaint_Click()
Dim res As Double
res = Shell("mspaint.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesGamesFreeCell_Click()
Dim res As Double
res = Shell("freecell.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesGamesMineSweeper_Click()
Dim res As Double
res = Shell("winmine.exe", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesGamesPinBall_Click()
Dim res As Double
res = Shell("C:\Program Files\Windows NT\Pinball\PINBALL.EXE", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesGamesSolitaire_Click()
Dim res As Double
res = Shell("sol.EXE", vbNormalFocus)
End Sub
Private Sub ApplySkinForm()
frmMainSkin.SkinPath = skinname
frmMainSkin.AdjustSize = False
End Sub
Private Sub muFileWizard_Click()
Load frmWizard
frmWizard.Show
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
Select Case Button.Index
    Case 1
         Call mnuFileRate_Click
    Case 2
         Call mnuManageSalesMan_Click
    Case 3
          Call mnuStockManage_Click
    Case 4
         Load frmFind
         frmFind.Show
    Case 5
         Load frmBill
         frmBill.Show
    Case 6
         Load frmReport
         frmReport.Show
    Case 9
         Call mnuFileExit_Click
End Select

End Sub

Private Sub Toolbar1_ButtonMenuClick(ByVal ButtonMenu As MSComctlLib.ButtonMenu)
Select Case ButtonMenu.key
 Case "stock_det"
       Call mnuStockManage_Click
 Case "received"
       Call mnupurchasemngr_Click
 Case "stksettings"
       Call cmdStockLevel_Click
 Case "sman"
       Call mnuManageSalesMan_Click
 Case "chgpass"
       Call mnuFileUserChangePass_Click
 Case "wordpad"
       Call mnuUtilitiesWordpad_Click
 Case "notepad"
       Call mnuUtilitiesNotepad_Click
 Case "calcu"
       Call mnuUtilitiesCalculator_Click
 Case "winexp"
       Call mnuUtilitiesWindowsExplorer_Click
 Case "paint"
       Call mnuUtilitiesPaint_Click
End Select
End Sub
