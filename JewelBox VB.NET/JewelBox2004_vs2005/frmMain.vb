Public Class frmMain
    Inherits System.Windows.Forms.Form

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Public WithEvents JewelMenu As System.Windows.Forms.MainMenu
    Friend WithEvents cmdFile As System.Windows.Forms.MenuItem
    Friend WithEvents mnuFileRate As System.Windows.Forms.MenuItem
    Friend WithEvents mnuFileExit As System.Windows.Forms.MenuItem
    Friend WithEvents cmdEdit As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditUndo As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditCopy As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditCut As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditPaste As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditSelect As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditFind As System.Windows.Forms.MenuItem
    Friend WithEvents mnuEditClear As System.Windows.Forms.MenuItem
    Friend WithEvents cmdMaster As System.Windows.Forms.MenuItem
    Friend WithEvents mnuMasterBill As System.Windows.Forms.MenuItem
    Friend WithEvents mnuMasterStock As System.Windows.Forms.MenuItem
    Friend WithEvents mnuMasterMan As System.Windows.Forms.MenuItem
    Friend WithEvents mnuMasterReport As System.Windows.Forms.MenuItem
    Friend WithEvents cmdAdmin As System.Windows.Forms.MenuItem
    Friend WithEvents cmdUtilities As System.Windows.Forms.MenuItem
    Friend WithEvents mnuUtilitiesNotepad As System.Windows.Forms.MenuItem
    Friend WithEvents mnuUtilitiesWordpad As System.Windows.Forms.MenuItem
    Friend WithEvents mnuUtilitiesCalcu As System.Windows.Forms.MenuItem
    Friend WithEvents mnuUtiltiesMedia As System.Windows.Forms.MenuItem
    Friend WithEvents mnuUtilitiesGames As System.Windows.Forms.MenuItem
    Friend WithEvents cmdHelp As System.Windows.Forms.MenuItem
    Friend WithEvents mnuHelpHelp As System.Windows.Forms.MenuItem
    Friend WithEvents mnuHelpAbout As System.Windows.Forms.MenuItem
    Friend WithEvents mnuAdminClear As System.Windows.Forms.MenuItem
    Friend WithEvents ToolBar1 As System.Windows.Forms.ToolBar
    Friend WithEvents cmdRate As System.Windows.Forms.ToolBarButton
    Friend WithEvents ToolBarButton1 As System.Windows.Forms.ToolBarButton
    Friend WithEvents cmdSalesMan As System.Windows.Forms.ToolBarButton
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmMain))
        Me.JewelMenu = New System.Windows.Forms.MainMenu()
        Me.cmdFile = New System.Windows.Forms.MenuItem()
        Me.mnuFileRate = New System.Windows.Forms.MenuItem()
        Me.mnuFileExit = New System.Windows.Forms.MenuItem()
        Me.cmdEdit = New System.Windows.Forms.MenuItem()
        Me.mnuEditUndo = New System.Windows.Forms.MenuItem()
        Me.mnuEditCopy = New System.Windows.Forms.MenuItem()
        Me.mnuEditCut = New System.Windows.Forms.MenuItem()
        Me.mnuEditPaste = New System.Windows.Forms.MenuItem()
        Me.mnuEditSelect = New System.Windows.Forms.MenuItem()
        Me.mnuEditFind = New System.Windows.Forms.MenuItem()
        Me.mnuEditClear = New System.Windows.Forms.MenuItem()
        Me.cmdMaster = New System.Windows.Forms.MenuItem()
        Me.mnuMasterBill = New System.Windows.Forms.MenuItem()
        Me.mnuMasterStock = New System.Windows.Forms.MenuItem()
        Me.mnuMasterMan = New System.Windows.Forms.MenuItem()
        Me.mnuMasterReport = New System.Windows.Forms.MenuItem()
        Me.cmdAdmin = New System.Windows.Forms.MenuItem()
        Me.mnuAdminClear = New System.Windows.Forms.MenuItem()
        Me.cmdUtilities = New System.Windows.Forms.MenuItem()
        Me.mnuUtilitiesNotepad = New System.Windows.Forms.MenuItem()
        Me.mnuUtilitiesWordpad = New System.Windows.Forms.MenuItem()
        Me.mnuUtilitiesCalcu = New System.Windows.Forms.MenuItem()
        Me.mnuUtiltiesMedia = New System.Windows.Forms.MenuItem()
        Me.mnuUtilitiesGames = New System.Windows.Forms.MenuItem()
        Me.cmdHelp = New System.Windows.Forms.MenuItem()
        Me.mnuHelpHelp = New System.Windows.Forms.MenuItem()
        Me.mnuHelpAbout = New System.Windows.Forms.MenuItem()
        Me.ToolBar1 = New System.Windows.Forms.ToolBar()
        Me.cmdRate = New System.Windows.Forms.ToolBarButton()
        Me.ToolBarButton1 = New System.Windows.Forms.ToolBarButton()
        Me.cmdSalesMan = New System.Windows.Forms.ToolBarButton()
        Me.SuspendLayout()
        '
        'JewelMenu
        '
        Me.JewelMenu.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.cmdFile, Me.cmdEdit, Me.cmdMaster, Me.cmdAdmin, Me.cmdUtilities, Me.cmdHelp})
        Me.JewelMenu.RightToLeft = System.Windows.Forms.RightToLeft.No
        '
        'cmdFile
        '
        Me.cmdFile.DefaultItem = True
        Me.cmdFile.Index = 0
        Me.cmdFile.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuFileRate, Me.mnuFileExit})
        Me.cmdFile.Text = "&File"
        '
        'mnuFileRate
        '
        Me.mnuFileRate.DefaultItem = True
        Me.mnuFileRate.Index = 0
        Me.mnuFileRate.MdiList = True
        Me.mnuFileRate.Text = "Today's &Rate"
        '
        'mnuFileExit
        '
        Me.mnuFileExit.DefaultItem = True
        Me.mnuFileExit.Index = 1
        Me.mnuFileExit.Text = "E&xit"
        '
        'cmdEdit
        '
        Me.cmdEdit.DefaultItem = True
        Me.cmdEdit.Index = 1
        Me.cmdEdit.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuEditUndo, Me.mnuEditCopy, Me.mnuEditCut, Me.mnuEditPaste, Me.mnuEditSelect, Me.mnuEditFind, Me.mnuEditClear})
        Me.cmdEdit.Text = "&Edit"
        '
        'mnuEditUndo
        '
        Me.mnuEditUndo.DefaultItem = True
        Me.mnuEditUndo.Index = 0
        Me.mnuEditUndo.Shortcut = System.Windows.Forms.Shortcut.CtrlU
        Me.mnuEditUndo.Text = "Undo"
        '
        'mnuEditCopy
        '
        Me.mnuEditCopy.DefaultItem = True
        Me.mnuEditCopy.Index = 1
        Me.mnuEditCopy.Shortcut = System.Windows.Forms.Shortcut.CtrlC
        Me.mnuEditCopy.Text = "Copy"
        '
        'mnuEditCut
        '
        Me.mnuEditCut.DefaultItem = True
        Me.mnuEditCut.Index = 2
        Me.mnuEditCut.Shortcut = System.Windows.Forms.Shortcut.CtrlX
        Me.mnuEditCut.Text = "Cut"
        '
        'mnuEditPaste
        '
        Me.mnuEditPaste.DefaultItem = True
        Me.mnuEditPaste.Index = 3
        Me.mnuEditPaste.Shortcut = System.Windows.Forms.Shortcut.CtrlV
        Me.mnuEditPaste.Text = "Paste"
        '
        'mnuEditSelect
        '
        Me.mnuEditSelect.DefaultItem = True
        Me.mnuEditSelect.Index = 4
        Me.mnuEditSelect.Shortcut = System.Windows.Forms.Shortcut.CtrlA
        Me.mnuEditSelect.Text = "Select All"
        '
        'mnuEditFind
        '
        Me.mnuEditFind.DefaultItem = True
        Me.mnuEditFind.Index = 5
        Me.mnuEditFind.Shortcut = System.Windows.Forms.Shortcut.CtrlF
        Me.mnuEditFind.Text = "Find"
        '
        'mnuEditClear
        '
        Me.mnuEditClear.DefaultItem = True
        Me.mnuEditClear.Index = 6
        Me.mnuEditClear.Shortcut = System.Windows.Forms.Shortcut.Del
        Me.mnuEditClear.Text = "Clear"
        '
        'cmdMaster
        '
        Me.cmdMaster.DefaultItem = True
        Me.cmdMaster.Index = 2
        Me.cmdMaster.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuMasterBill, Me.mnuMasterStock, Me.mnuMasterMan, Me.mnuMasterReport})
        Me.cmdMaster.Text = "&Master"
        '
        'mnuMasterBill
        '
        Me.mnuMasterBill.DefaultItem = True
        Me.mnuMasterBill.Index = 0
        Me.mnuMasterBill.MdiList = True
        Me.mnuMasterBill.Shortcut = System.Windows.Forms.Shortcut.F2
        Me.mnuMasterBill.Text = "Bill Master"
        '
        'mnuMasterStock
        '
        Me.mnuMasterStock.DefaultItem = True
        Me.mnuMasterStock.Index = 1
        Me.mnuMasterStock.MdiList = True
        Me.mnuMasterStock.Shortcut = System.Windows.Forms.Shortcut.F3
        Me.mnuMasterStock.Text = "Stock Master"
        '
        'mnuMasterMan
        '
        Me.mnuMasterMan.DefaultItem = True
        Me.mnuMasterMan.Index = 2
        Me.mnuMasterMan.MdiList = True
        Me.mnuMasterMan.Shortcut = System.Windows.Forms.Shortcut.F4
        Me.mnuMasterMan.Text = "SalesMan Master"
        '
        'mnuMasterReport
        '
        Me.mnuMasterReport.DefaultItem = True
        Me.mnuMasterReport.Index = 3
        Me.mnuMasterReport.MdiList = True
        Me.mnuMasterReport.Shortcut = System.Windows.Forms.Shortcut.F5
        Me.mnuMasterReport.Text = "Report Master"
        '
        'cmdAdmin
        '
        Me.cmdAdmin.DefaultItem = True
        Me.cmdAdmin.Index = 3
        Me.cmdAdmin.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuAdminClear})
        Me.cmdAdmin.Text = "&Admin"
        '
        'mnuAdminClear
        '
        Me.mnuAdminClear.DefaultItem = True
        Me.mnuAdminClear.Index = 0
        Me.mnuAdminClear.Shortcut = System.Windows.Forms.Shortcut.CtrlDel
        Me.mnuAdminClear.Text = "Clear DB"
        '
        'cmdUtilities
        '
        Me.cmdUtilities.DefaultItem = True
        Me.cmdUtilities.Index = 4
        Me.cmdUtilities.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuUtilitiesNotepad, Me.mnuUtilitiesWordpad, Me.mnuUtilitiesCalcu, Me.mnuUtiltiesMedia, Me.mnuUtilitiesGames})
        Me.cmdUtilities.Text = "&Utilities"
        '
        'mnuUtilitiesNotepad
        '
        Me.mnuUtilitiesNotepad.DefaultItem = True
        Me.mnuUtilitiesNotepad.Index = 0
        Me.mnuUtilitiesNotepad.MdiList = True
        Me.mnuUtilitiesNotepad.Text = "NotePad"
        '
        'mnuUtilitiesWordpad
        '
        Me.mnuUtilitiesWordpad.DefaultItem = True
        Me.mnuUtilitiesWordpad.Index = 1
        Me.mnuUtilitiesWordpad.MdiList = True
        Me.mnuUtilitiesWordpad.Text = "WordPad"
        '
        'mnuUtilitiesCalcu
        '
        Me.mnuUtilitiesCalcu.DefaultItem = True
        Me.mnuUtilitiesCalcu.Index = 2
        Me.mnuUtilitiesCalcu.MdiList = True
        Me.mnuUtilitiesCalcu.Text = "Calculator"
        '
        'mnuUtiltiesMedia
        '
        Me.mnuUtiltiesMedia.DefaultItem = True
        Me.mnuUtiltiesMedia.Index = 3
        Me.mnuUtiltiesMedia.MdiList = True
        Me.mnuUtiltiesMedia.Text = "Windows Media Player"
        '
        'mnuUtilitiesGames
        '
        Me.mnuUtilitiesGames.DefaultItem = True
        Me.mnuUtilitiesGames.Index = 4
        Me.mnuUtilitiesGames.MdiList = True
        Me.mnuUtilitiesGames.Text = "Games"
        '
        'cmdHelp
        '
        Me.cmdHelp.DefaultItem = True
        Me.cmdHelp.Index = 5
        Me.cmdHelp.MenuItems.AddRange(New System.Windows.Forms.MenuItem() {Me.mnuHelpHelp, Me.mnuHelpAbout})
        Me.cmdHelp.Text = "&Help ???"
        '
        'mnuHelpHelp
        '
        Me.mnuHelpHelp.DefaultItem = True
        Me.mnuHelpHelp.Index = 0
        Me.mnuHelpHelp.Shortcut = System.Windows.Forms.Shortcut.F1
        Me.mnuHelpHelp.Text = "Help"
        '
        'mnuHelpAbout
        '
        Me.mnuHelpAbout.DefaultItem = True
        Me.mnuHelpAbout.Index = 1
        Me.mnuHelpAbout.MdiList = True
        Me.mnuHelpAbout.Shortcut = System.Windows.Forms.Shortcut.F12
        Me.mnuHelpAbout.Text = "About Us"
        '
        'ToolBar1
        '
        Me.ToolBar1.AllowDrop = True
        Me.ToolBar1.Appearance = System.Windows.Forms.ToolBarAppearance.Flat
        Me.ToolBar1.Buttons.AddRange(New System.Windows.Forms.ToolBarButton() {Me.cmdRate, Me.ToolBarButton1, Me.cmdSalesMan})
        Me.ToolBar1.DropDownArrows = True
        Me.ToolBar1.Name = "ToolBar1"
        Me.ToolBar1.ShowToolTips = True
        Me.ToolBar1.Size = New System.Drawing.Size(592, 39)
        Me.ToolBar1.TabIndex = 1
        '
        'cmdRate
        '
        Me.cmdRate.Pushed = True
        Me.cmdRate.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton
        Me.cmdRate.Text = "&Rate"
        '
        'ToolBarButton1
        '
        Me.ToolBarButton1.Style = System.Windows.Forms.ToolBarButtonStyle.Separator
        '
        'cmdSalesMan
        '
        Me.cmdSalesMan.Style = System.Windows.Forms.ToolBarButtonStyle.ToggleButton
        Me.cmdSalesMan.Text = "&SalesMan"
        '
        'frmMain
        '
        Me.AccessibleName = "frmMain"
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Bitmap)
        Me.ClientSize = New System.Drawing.Size(592, 273)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.ToolBar1})
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.IsMdiContainer = True
        Me.Menu = Me.JewelMenu
        Me.Name = "frmMain"
        Me.Text = "JewelBox 2004  - eXTreme Edition"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.ResumeLayout(False)

    End Sub

#End Region

    

    Private Sub mnuFileRate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuFileRate.Click
        Dim frm As New frmRate()
        frm.MdiParent = Me
        frm.Show()
    End Sub


    Private Sub mnuFileExit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuFileExit.Click
        closeDB()
        MsgBox("Thanks for Using JewelBox 2004", MsgBoxStyle.Exclamation = MsgBoxStyle.OKOnly, "THANKSSSSSS")
        End
    End Sub



    Protected Overrides Sub Finalize()
        MyBase.Finalize()
    End Sub

    Private Sub frmMain_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'If dbstatus = False Then
        '    Dim frm1 As New frmStatus()
        '    frm1.Show("Connecting To The Database .......")
        '    'ElseIf dbstatus = True Then
        '    'MsgBox("Database is Open For Transaction")
        'End If
        If logsuccess = True Then
            Dim ainfo As New AssemblyInfo()
            MsgBox("Login Success " & vbCrLf & "Welcome " & loguser & " To " & ainfo.AsmName & vbCrLf & "Have A Nice Day !!!", MsgBoxStyle.Information = MsgBoxStyle.OKOnly = True, "Login Success")
        End If
    End Sub
    Private Sub frmMain_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles MyBase.Closed
        End
    End Sub
    Private Sub mnuHelpAbout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuHelpAbout.Click
        Dim frm As New frmAbout()
        frm.ShowDialog(Me)
        frm.Dispose()
    End Sub

    Private Sub mnuMasterBill_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuMasterBill.Click
        Dim frm As New frmBill()
        frm.MdiParent = Me
        frm.Show()
    End Sub

    Private Sub mnuMasterStock_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuMasterStock.Click
        Dim frm As New frmStock()
        frm.MdiParent = Me
        frm.Show()
    End Sub

    Private Sub mnuMasterMan_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuMasterMan.Click
        Dim frm As New frmSalesMan()
        frm.MdiParent = Me
        frm.Show()
    End Sub

    Private Sub mnuMasterReport_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuMasterReport.Click

    End Sub

    Private Sub mnuUtilitiesNotepad_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuUtilitiesNotepad.Click
        Dim res As Double
        res = Shell("notepad.exe", AppWinStyle.NormalFocus, False, -1)
    End Sub


    Private Sub mnuAdminClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuAdminClear.Click
        Dim frm As New frmStatus()
        frm.MdiParent = Me
        frm.Show("Check")
    End Sub

    Private Sub mnuUtilitiesWordpad_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuUtilitiesWordpad.Click
        Dim res As Double
        res = Shell("C:\Program Files\Windows NT\Accessories\wordpad.exe", AppWinStyle.NormalFocus, False, -1)
    End Sub

    Private Sub mnuUtilitiesCalcu_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuUtilitiesCalcu.Click
        Dim res As Double
        res = Shell("calc.exe", AppWinStyle.NormalFocus, False, -1)
    End Sub

    Private Sub mnuUtiltiesMedia_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuUtiltiesMedia.Click
        Dim res As Double
        res = Shell("C:\Program Files\Windows Media Player\wmplayer.exe", AppWinStyle.NormalFocus, True, -1)
    End Sub

    Private Sub mnuUtilitiesGames_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mnuUtilitiesGames.Click

    End Sub

    Private Sub SqlDataAdapter1_RowUpdated(ByVal sender As System.Object, ByVal e As System.Data.SqlClient.SqlRowUpdatedEventArgs)

    End Sub
End Class
