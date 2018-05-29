VERSION 5.00
Object = "{A9A48D8D-D1E0-11D4-B90B-444553540000}#74.1#0"; "RegCtl.ocx"
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Begin VB.MDIForm frmMain 
   BackColor       =   &H8000000C&
   Caption         =   "JewelBox 2004 v0.99 Beta1 Limited Edition - JadooSoft Technologies Ltd"
   ClientHeight    =   7845
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   11670
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "MDIForm1"
   Picture         =   "frmMain.frx":08CA
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin Registry.Reg RegAccess 
      Left            =   600
      Top             =   960
      _ExtentX        =   979
      _ExtentY        =   450
      Hkey            =   1
      ErrorReturn     =   0
   End
   Begin ACTIVESKINLibCtl.SkinForm frmMainSkin 
      Align           =   1  'Align Top
      Height          =   480
      Left            =   0
      OleObjectBlob   =   "frmMain.frx":1ED0BE
      TabIndex        =   0
      Top             =   0
      Width           =   480
   End
   Begin VB.Menu cmdFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFileRate 
         Caption         =   "Current Rate"
         Shortcut        =   ^D
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "E&xit"
         Shortcut        =   ^E
      End
   End
   Begin VB.Menu cmdEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuEditCopy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuEditCut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuEditPaste 
         Caption         =   "Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuEditSelect 
         Caption         =   "Select All"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuEditFind 
         Caption         =   "Find"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnuEditDelete 
         Caption         =   "Delete"
         Shortcut        =   {DEL}
      End
   End
   Begin VB.Menu cmdManager 
      Caption         =   "&Manager"
      Begin VB.Menu mnuReportManager 
         Caption         =   "Report Manager"
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuStockManage 
         Caption         =   "Stock  Manager"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuBillReport 
         Caption         =   "Bill Manager"
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuMasterAdminSalesMan 
         Caption         =   "SalesMan Manager"
         Shortcut        =   ^M
      End
   End
   Begin VB.Menu cmdMaster 
      Caption         =   "&Master"
      Begin VB.Menu mnuMasterAdmin 
         Caption         =   "Admin Tools"
         Begin VB.Menu mnuMasterAdminLogin 
            Caption         =   "Admin Login"
         End
         Begin VB.Menu mnuStockClear 
            Caption         =   "Clear Database"
            Shortcut        =   ^Z
         End
         Begin VB.Menu mnuMasterAdminLogout 
            Caption         =   "Admin LogOut"
         End
      End
      Begin VB.Menu mnuMasterSkinBuilder 
         Caption         =   "SkinBuilder"
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnuMasterSettings 
         Caption         =   "Settings"
      End
      Begin VB.Menu mnuMasterUser 
         Caption         =   "&User Tools"
         Begin VB.Menu mnuFileUserLogin 
            Caption         =   "User Log&in"
            Shortcut        =   +{F1}
         End
         Begin VB.Menu mnuFileUserReport 
            Caption         =   "User Report"
         End
         Begin VB.Menu mnuFileUserLogout 
            Caption         =   "User Log&out"
            Begin VB.Menu mnuFileUserReportView 
               Caption         =   "View Report"
               Shortcut        =   +{F3}
            End
            Begin VB.Menu mnuFileUserReportSave 
               Caption         =   "Save Report"
               Shortcut        =   +{F4}
            End
            Begin VB.Menu mnuFileUserReportPrint 
               Caption         =   "Print Report"
               Shortcut        =   +{F5}
            End
         End
         Begin VB.Menu mnu 
            Caption         =   "-"
         End
         Begin VB.Menu mnuFileUserChangePass 
            Caption         =   "Change Password"
            Shortcut        =   +{F2}
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


Private Sub MDIForm_Load()
LoadSettings
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub MDIForm_Activate()
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
SaveSettings
End
End Sub

Private Sub mnuBillReport_Click()
Load frmBill
frmBill.Show
End Sub

Private Sub mnuFileExit_Click()
End
End Sub

Private Sub mnuFileRate_Click()
Load frmRate
frmRate.Show
End Sub

Private Sub mnuHelpAbout_Click()
frmAbout.Show
End Sub

Private Sub mnuMasterSalesMan_Click()
Load frmSalesMan
frmSalesMan.Show
End Sub

Private Sub mnuMasterAdminSalesMan_Click()
Load frmSalesMan
frmSalesMan.Show
End Sub
Private Sub mnuStockManipulation_Click()
Load frmStock
frmStock.Show
End Sub

Private Sub mnuMasterSkinBuilder_Click()
Dim res As Double
res = Shell(App.Path + "\Skins\SkinBuilder.exe", vbNormalFocus)
End Sub

Private Sub mnuReportManager_Click()
Load frmReport
frmReport.Show
End Sub

Private Sub mnuStockManage_Click()
Load frmStock
frmStock.Show
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
res = Shell("D:\Program Files\Windows Media Player\wmplayer.exe", vbNormalFocus)
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
res = Shell("D:\Program Files\Windows NT\Pinball\PINBALL.EXE", vbNormalFocus)
End Sub
Private Sub mnuUtilitiesGamesSolitaire_Click()
Dim res As Double
res = Shell("sol.EXE", vbNormalFocus)
End Sub


Private Sub mnuMasterSettings_Click()
Load frmOptions
frmOptions.Show
End Sub

Private Sub ApplySkinForm()
frmMainSkin.SkinPath = skinname
frmMainSkin.AdjustSize = False
End Sub

