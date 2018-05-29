using System.Diagnostics;
using Microsoft.VisualBasic;
using System;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using System.Collections;
using Microsoft.VisualBasic.CompilerServices;

namespace JewelBox2004
{
	public class frmMain : System.Windows.Forms.Form
	{
		
		#region " Windows Form Designer generated code "
		
		public frmMain() {
			
			//This call is required by the Windows Form Designer.
			InitializeComponent();
			
			//Add any initialization after the InitializeComponent() call
			
		}
		
		//Form overrides dispose to clean up the component list.
		protected override void Dispose (bool disposing)
		{
			if (disposing)
			{
				if (!(components == null))
				{
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		//Required by the Windows Form Designer
		private System.ComponentModel.Container components = null;
		
//NOTE: The following procedure is required by the Windows Form Designer
		//It can be modified using the Windows Form Designer.
		//Do not modify it using the code editor.
		public System.Windows.Forms.MainMenu JewelMenu;
		internal System.Windows.Forms.MenuItem cmdFile;
		internal System.Windows.Forms.MenuItem mnuFileRate;
		internal System.Windows.Forms.MenuItem mnuFileExit;
		internal System.Windows.Forms.MenuItem cmdEdit;
		internal System.Windows.Forms.MenuItem mnuEditUndo;
		internal System.Windows.Forms.MenuItem mnuEditCopy;
		internal System.Windows.Forms.MenuItem mnuEditCut;
		internal System.Windows.Forms.MenuItem mnuEditPaste;
		internal System.Windows.Forms.MenuItem mnuEditSelect;
		internal System.Windows.Forms.MenuItem mnuEditFind;
		internal System.Windows.Forms.MenuItem mnuEditClear;
		internal System.Windows.Forms.MenuItem cmdMaster;
		internal System.Windows.Forms.MenuItem mnuMasterBill;
		internal System.Windows.Forms.MenuItem mnuMasterStock;
		internal System.Windows.Forms.MenuItem mnuMasterMan;
		internal System.Windows.Forms.MenuItem mnuMasterReport;
		internal System.Windows.Forms.MenuItem cmdAdmin;
		internal System.Windows.Forms.MenuItem cmdUtilities;
		internal System.Windows.Forms.MenuItem mnuUtilitiesNotepad;
		internal System.Windows.Forms.MenuItem mnuUtilitiesWordpad;
		internal System.Windows.Forms.MenuItem mnuUtilitiesCalcu;
		internal System.Windows.Forms.MenuItem mnuUtiltiesMedia;
		internal System.Windows.Forms.MenuItem mnuUtilitiesGames;
		internal System.Windows.Forms.MenuItem cmdHelp;
		internal System.Windows.Forms.MenuItem mnuHelpHelp;
		internal System.Windows.Forms.MenuItem mnuHelpAbout;
		internal System.Windows.Forms.MenuItem mnuAdminClear;
		internal System.Windows.Forms.StatusBar StatusBar1;
		internal System.Windows.Forms.StatusBarPanel StatusBarPanel1;
		internal System.Windows.Forms.StatusBarPanel StatusBarPanel2;
		internal System.Windows.Forms.StatusBarPanel StatusBarPanel3;
		internal System.Windows.Forms.StatusBarPanel StatusBarPanel4;
		internal System.Windows.Forms.ToolBar ToolBar1;
		internal System.Windows.Forms.ToolBarButton ToolBarButton1;
		internal System.Windows.Forms.ImageList ImageList1;
		[System.Diagnostics.DebuggerStepThrough()]private void InitializeComponent ()
		{
			this.components = new System.ComponentModel.Container();
			this.Load += new EventHandler(this.frmMain_Load);
			this.Closed += new EventHandler(this.frmMain_Unload);
			System.Resources.ResourceManager resources = new System.Resources.ResourceManager(typeof(frmMain));
			this.JewelMenu = new System.Windows.Forms.MainMenu();
			this.cmdFile = new System.Windows.Forms.MenuItem();
			this.mnuFileRate = new System.Windows.Forms.MenuItem();
			this.mnuFileRate.Click += new EventHandler(this.mnuFileRate_Click);
			this.mnuFileExit = new System.Windows.Forms.MenuItem();
			this.mnuFileExit.Click += new EventHandler(this.mnuFileExit_Click);
			this.cmdEdit = new System.Windows.Forms.MenuItem();
			this.mnuEditUndo = new System.Windows.Forms.MenuItem();
			this.mnuEditCopy = new System.Windows.Forms.MenuItem();
			this.mnuEditCut = new System.Windows.Forms.MenuItem();
			this.mnuEditPaste = new System.Windows.Forms.MenuItem();
			this.mnuEditSelect = new System.Windows.Forms.MenuItem();
			this.mnuEditFind = new System.Windows.Forms.MenuItem();
			this.mnuEditClear = new System.Windows.Forms.MenuItem();
			this.cmdMaster = new System.Windows.Forms.MenuItem();
			this.mnuMasterBill = new System.Windows.Forms.MenuItem();
			this.mnuMasterBill.Click += new EventHandler(this.mnuMasterBill_Click);
			this.mnuMasterStock = new System.Windows.Forms.MenuItem();
			this.mnuMasterStock.Click += new EventHandler(this.mnuMasterStock_Click);
			this.mnuMasterMan = new System.Windows.Forms.MenuItem();
			this.mnuMasterMan.Click += new EventHandler(this.mnuMasterMan_Click);
			this.mnuMasterReport = new System.Windows.Forms.MenuItem();
			this.mnuMasterReport.Click += new EventHandler(this.mnuMasterReport_Click);
			this.cmdAdmin = new System.Windows.Forms.MenuItem();
			this.mnuAdminClear = new System.Windows.Forms.MenuItem();
			this.mnuAdminClear.Click += new EventHandler(this.mnuAdminClear_Click);
			this.cmdUtilities = new System.Windows.Forms.MenuItem();
			this.mnuUtilitiesNotepad = new System.Windows.Forms.MenuItem();
			this.mnuUtilitiesNotepad.Click += new EventHandler(this.mnuUtilitiesNotepad_Click);
			this.mnuUtilitiesWordpad = new System.Windows.Forms.MenuItem();
			this.mnuUtilitiesWordpad.Click += new EventHandler(this.mnuUtilitiesWordpad_Click);
			this.mnuUtilitiesCalcu = new System.Windows.Forms.MenuItem();
			this.mnuUtilitiesCalcu.Click += new EventHandler(this.mnuUtilitiesCalcu_Click);
			this.mnuUtiltiesMedia = new System.Windows.Forms.MenuItem();
			this.mnuUtiltiesMedia.Click += new EventHandler(this.mnuUtiltiesMedia_Click);
			this.mnuUtilitiesGames = new System.Windows.Forms.MenuItem();
			this.mnuUtilitiesGames.Click += new EventHandler(this.mnuUtilitiesGames_Click);
			this.cmdHelp = new System.Windows.Forms.MenuItem();
			this.mnuHelpHelp = new System.Windows.Forms.MenuItem();
			this.mnuHelpAbout = new System.Windows.Forms.MenuItem();
			this.mnuHelpAbout.Click += new EventHandler(this.mnuHelpAbout_Click);
			this.StatusBar1 = new System.Windows.Forms.StatusBar();
			this.StatusBarPanel3 = new System.Windows.Forms.StatusBarPanel();
			this.StatusBarPanel1 = new System.Windows.Forms.StatusBarPanel();
			this.StatusBarPanel2 = new System.Windows.Forms.StatusBarPanel();
			this.StatusBarPanel4 = new System.Windows.Forms.StatusBarPanel();
			this.ToolBar1 = new System.Windows.Forms.ToolBar();
			this.ToolBarButton1 = new System.Windows.Forms.ToolBarButton();
			this.ImageList1 = new System.Windows.Forms.ImageList(this.components);
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel3)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel1)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel2)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel4)).BeginInit();
			this.SuspendLayout();
			//
			//JewelMenu
			//
			this.JewelMenu.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.cmdFile, this.cmdEdit, this.cmdMaster, this.cmdAdmin, this.cmdUtilities, this.cmdHelp });
			this.JewelMenu.RightToLeft = System.Windows.Forms.RightToLeft.No;
			//
			//cmdFile
			//
			this.cmdFile.DefaultItem = true;
			this.cmdFile.Index = 0;
			this.cmdFile.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuFileRate, this.mnuFileExit });
			this.cmdFile.Text = "&File";
			//
			//mnuFileRate
			//
			this.mnuFileRate.DefaultItem = true;
			this.mnuFileRate.Index = 0;
			this.mnuFileRate.MdiList = true;
			this.mnuFileRate.Text = "Today's &Rate";
			//
			//mnuFileExit
			//
			this.mnuFileExit.DefaultItem = true;
			this.mnuFileExit.Index = 1;
			this.mnuFileExit.Text = "E&xit";
			//
			//cmdEdit
			//
			this.cmdEdit.DefaultItem = true;
			this.cmdEdit.Index = 1;
			this.cmdEdit.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuEditUndo, this.mnuEditCopy, this.mnuEditCut, this.mnuEditPaste, this.mnuEditSelect, this.mnuEditFind, this.mnuEditClear });
			this.cmdEdit.Text = "&Edit";
			//
			//mnuEditUndo
			//
			this.mnuEditUndo.DefaultItem = true;
			this.mnuEditUndo.Index = 0;
			this.mnuEditUndo.Shortcut = System.Windows.Forms.Shortcut.CtrlU;
			this.mnuEditUndo.Text = "Undo";
			//
			//mnuEditCopy
			//
			this.mnuEditCopy.DefaultItem = true;
			this.mnuEditCopy.Index = 1;
			this.mnuEditCopy.Shortcut = System.Windows.Forms.Shortcut.CtrlC;
			this.mnuEditCopy.Text = "Copy";
			//
			//mnuEditCut
			//
			this.mnuEditCut.DefaultItem = true;
			this.mnuEditCut.Index = 2;
			this.mnuEditCut.Shortcut = System.Windows.Forms.Shortcut.CtrlX;
			this.mnuEditCut.Text = "Cut";
			//
			//mnuEditPaste
			//
			this.mnuEditPaste.DefaultItem = true;
			this.mnuEditPaste.Index = 3;
			this.mnuEditPaste.Shortcut = System.Windows.Forms.Shortcut.CtrlV;
			this.mnuEditPaste.Text = "Paste";
			//
			//mnuEditSelect
			//
			this.mnuEditSelect.DefaultItem = true;
			this.mnuEditSelect.Index = 4;
			this.mnuEditSelect.Shortcut = System.Windows.Forms.Shortcut.CtrlA;
			this.mnuEditSelect.Text = "Select All";
			//
			//mnuEditFind
			//
			this.mnuEditFind.DefaultItem = true;
			this.mnuEditFind.Index = 5;
			this.mnuEditFind.Shortcut = System.Windows.Forms.Shortcut.CtrlF;
			this.mnuEditFind.Text = "Find";
			//
			//mnuEditClear
			//
			this.mnuEditClear.DefaultItem = true;
			this.mnuEditClear.Index = 6;
			this.mnuEditClear.Shortcut = System.Windows.Forms.Shortcut.Del;
			this.mnuEditClear.Text = "Clear";
			//
			//cmdMaster
			//
			this.cmdMaster.DefaultItem = true;
			this.cmdMaster.Index = 2;
			this.cmdMaster.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuMasterBill, this.mnuMasterStock, this.mnuMasterMan, this.mnuMasterReport });
			this.cmdMaster.Text = "&Master";
			//
			//mnuMasterBill
			//
			this.mnuMasterBill.DefaultItem = true;
			this.mnuMasterBill.Index = 0;
			this.mnuMasterBill.MdiList = true;
			this.mnuMasterBill.Shortcut = System.Windows.Forms.Shortcut.F2;
			this.mnuMasterBill.Text = "Bill Master";
			//
			//mnuMasterStock
			//
			this.mnuMasterStock.DefaultItem = true;
			this.mnuMasterStock.Index = 1;
			this.mnuMasterStock.MdiList = true;
			this.mnuMasterStock.Shortcut = System.Windows.Forms.Shortcut.F3;
			this.mnuMasterStock.Text = "Stock Master";
			//
			//mnuMasterMan
			//
			this.mnuMasterMan.DefaultItem = true;
			this.mnuMasterMan.Index = 2;
			this.mnuMasterMan.MdiList = true;
			this.mnuMasterMan.Shortcut = System.Windows.Forms.Shortcut.F4;
			this.mnuMasterMan.Text = "SalesMan Master";
			//
			//mnuMasterReport
			//
			this.mnuMasterReport.DefaultItem = true;
			this.mnuMasterReport.Index = 3;
			this.mnuMasterReport.MdiList = true;
			this.mnuMasterReport.Shortcut = System.Windows.Forms.Shortcut.F5;
			this.mnuMasterReport.Text = "Report Master";
			//
			//cmdAdmin
			//
			this.cmdAdmin.DefaultItem = true;
			this.cmdAdmin.Index = 3;
			this.cmdAdmin.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuAdminClear });
			this.cmdAdmin.Text = "&Admin";
			//
			//mnuAdminClear
			//
			this.mnuAdminClear.DefaultItem = true;
			this.mnuAdminClear.Index = 0;
			this.mnuAdminClear.Shortcut = System.Windows.Forms.Shortcut.CtrlDel;
			this.mnuAdminClear.Text = "Clear DB";
			//
			//cmdUtilities
			//
			this.cmdUtilities.DefaultItem = true;
			this.cmdUtilities.Index = 4;
			this.cmdUtilities.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuUtilitiesNotepad, this.mnuUtilitiesWordpad, this.mnuUtilitiesCalcu, this.mnuUtiltiesMedia, this.mnuUtilitiesGames });
			this.cmdUtilities.Text = "&Utilities";
			//
			//mnuUtilitiesNotepad
			//
			this.mnuUtilitiesNotepad.DefaultItem = true;
			this.mnuUtilitiesNotepad.Index = 0;
			this.mnuUtilitiesNotepad.MdiList = true;
			this.mnuUtilitiesNotepad.Text = "NotePad";
			//
			//mnuUtilitiesWordpad
			//
			this.mnuUtilitiesWordpad.DefaultItem = true;
			this.mnuUtilitiesWordpad.Index = 1;
			this.mnuUtilitiesWordpad.MdiList = true;
			this.mnuUtilitiesWordpad.Text = "WordPad";
			//
			//mnuUtilitiesCalcu
			//
			this.mnuUtilitiesCalcu.DefaultItem = true;
			this.mnuUtilitiesCalcu.Index = 2;
			this.mnuUtilitiesCalcu.MdiList = true;
			this.mnuUtilitiesCalcu.Text = "Calculator";
			//
			//mnuUtiltiesMedia
			//
			this.mnuUtiltiesMedia.DefaultItem = true;
			this.mnuUtiltiesMedia.Index = 3;
			this.mnuUtiltiesMedia.MdiList = true;
			this.mnuUtiltiesMedia.Text = "Windows Media Player";
			//
			//mnuUtilitiesGames
			//
			this.mnuUtilitiesGames.DefaultItem = true;
			this.mnuUtilitiesGames.Index = 4;
			this.mnuUtilitiesGames.MdiList = true;
			this.mnuUtilitiesGames.Text = "Games";
			//
			//cmdHelp
			//
			this.cmdHelp.DefaultItem = true;
			this.cmdHelp.Index = 5;
			this.cmdHelp.MenuItems.AddRange(new System.Windows.Forms.MenuItem[] { this.mnuHelpHelp, this.mnuHelpAbout });
			this.cmdHelp.Text = "&Help ???";
			//
			//mnuHelpHelp
			//
			this.mnuHelpHelp.DefaultItem = true;
			this.mnuHelpHelp.Index = 0;
			this.mnuHelpHelp.Shortcut = System.Windows.Forms.Shortcut.F1;
			this.mnuHelpHelp.Text = "Help";
			//
			//mnuHelpAbout
			//
			this.mnuHelpAbout.DefaultItem = true;
			this.mnuHelpAbout.Index = 1;
			this.mnuHelpAbout.MdiList = true;
			this.mnuHelpAbout.Shortcut = System.Windows.Forms.Shortcut.F12;
			this.mnuHelpAbout.Text = "About Us";
			//
			//StatusBar1
			//
			this.StatusBar1.Font = new System.Drawing.Font("Microsoft Sans Serif", System.Convert.ToSingle(8.25), System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point,((byte)(0)));
			this.StatusBar1.Location = new System.Drawing.Point(0, 241);
			this.StatusBar1.Name = "StatusBar1";
			this.StatusBar1.Panels.AddRange(new System.Windows.Forms.StatusBarPanel[] { this.StatusBarPanel3, this.StatusBarPanel1, this.StatusBarPanel2, this.StatusBarPanel4 });
			this.StatusBar1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
			this.StatusBar1.ShowPanels = true;
			this.StatusBar1.Size = new System.Drawing.Size(592, 32);
			this.StatusBar1.TabIndex = 3;
			//
			//StatusBarPanel3
			//
			this.StatusBarPanel3.Alignment = System.Windows.Forms.HorizontalAlignment.Right;
			this.StatusBarPanel3.BorderStyle = System.Windows.Forms.StatusBarPanelBorderStyle.None;
			this.StatusBarPanel3.Icon = ((System.Drawing.Icon)(resources.GetObject("StatusBarPanel3.Icon")));
			this.StatusBarPanel3.Text = "Created By ";
			this.StatusBarPanel3.Width = 140;
			//
			//StatusBarPanel1
			//
			this.StatusBarPanel1.BorderStyle = System.Windows.Forms.StatusBarPanelBorderStyle.None;
			this.StatusBarPanel1.Icon = ((System.Drawing.Icon)(resources.GetObject("StatusBarPanel1.Icon")));
			this.StatusBarPanel1.Text = "Nithin Mohan.T.K";
			this.StatusBarPanel1.Width = 140;
			//
			//StatusBarPanel2
			//
			this.StatusBarPanel2.Alignment = System.Windows.Forms.HorizontalAlignment.Right;
			this.StatusBarPanel2.BorderStyle = System.Windows.Forms.StatusBarPanelBorderStyle.None;
			this.StatusBarPanel2.Text = "for";
			this.StatusBarPanel2.Width = 50;
			//
			//StatusBarPanel4
			//
			this.StatusBarPanel4.Alignment = System.Windows.Forms.HorizontalAlignment.Right;
			this.StatusBarPanel4.BorderStyle = System.Windows.Forms.StatusBarPanelBorderStyle.None;
			this.StatusBarPanel4.Icon = ((System.Drawing.Icon)(resources.GetObject("StatusBarPanel4.Icon")));
			this.StatusBarPanel4.Text = "Dream Works Technologies India Ltd";
			this.StatusBarPanel4.Width = 250;
			//
			//ToolBar1
			//
			this.ToolBar1.Buttons.AddRange(new System.Windows.Forms.ToolBarButton[] { this.ToolBarButton1 });
			this.ToolBar1.ButtonSize = new System.Drawing.Size(70, 40);
			this.ToolBar1.DropDownArrows = true;
			this.ToolBar1.ImageList = this.ImageList1;
			this.ToolBar1.Name = "ToolBar1";
			this.ToolBar1.ShowToolTips = true;
			this.ToolBar1.Size = new System.Drawing.Size(592, 43);
			this.ToolBar1.TabIndex = 5;
			//
			//ToolBarButton1
			//
			this.ToolBarButton1.ImageIndex = 0;
			this.ToolBarButton1.Style = System.Windows.Forms.ToolBarButtonStyle.DropDownButton;
			this.ToolBarButton1.Text = "Rate";
			//
			//ImageList1
			//
			this.ImageList1.ColorDepth = System.Windows.Forms.ColorDepth.Depth8Bit;
			this.ImageList1.ImageSize = new System.Drawing.Size(16, 16);
			this.ImageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("ImageList1.ImageStream")));
			this.ImageList1.TransparentColor = System.Drawing.Color.Transparent;
			//
			//frmMain
			//
			this.AccessibleName = "frmMain";
			this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
			this.BackgroundImage = ((System.Drawing.Bitmap)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(592, 273);
			this.Controls.AddRange(new System.Windows.Forms.Control[] { this.ToolBar1, this.StatusBar1 });
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.ImeMode = System.Windows.Forms.ImeMode.On;
			this.IsMdiContainer = true;
			this.Menu = this.JewelMenu;
			this.Name = "frmMain";
			this.Text = "JewelBox 2004  - eXTreme Edition";
			this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel3)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel1)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel2)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.StatusBarPanel4)).EndInit();
			this.ResumeLayout(false);
			
		}
		
		#endregion
		
		
		
		private void mnuFileRate_Click (System.Object sender, System.EventArgs e)
		{
			frmRate frm = new frmRate();
			frm.MdiParent = this;
			frm.Show();
		}
		
		
		private void mnuFileExit_Click (System.Object sender, System.EventArgs e)
		{
			modMain.closeDB();
			MessageBox.Show("Thanks for Using JewelBox 2004");
//			Interaction.MsgBox("Thanks for Using JewelBox 2004");
			ProjectData.EndApp();
		}
		
		
		
//		~frmMain()
//		{
//			base.Finalize();
//		}
		
		private void frmMain_Load (object sender, System.EventArgs e)
		{
			//If dbstatus = False Then
			//    Dim frm1 As New frmStatus()
			//    frm1.Show("Connecting To The Database .......")
			//    'ElseIf dbstatus = True Then
			//    'MsgBox("Database is Open For Transaction")
			//End If
			//If logsuccess = True Then
			//    Dim ainfo As New AssemblyInfo()
			//    MsgBox("Login Success " & vbCrLf & "Welcome " & loguser & " To " & ainfo.AsmName & vbCrLf & "Have A Nice Day !!!", MsgBoxStyle.Information = MsgBoxStyle.OKOnly = True, "Login Success")
			//End If
		}
		private void frmMain_Unload (object sender, System.EventArgs e)
		{
			ProjectData.EndApp();
		}
		private void mnuHelpAbout_Click (System.Object sender, System.EventArgs e)
		{
			frmAbout frm = new frmAbout();
			frm.ShowDialog(this);
			frm.Dispose();
		}
		
		private void mnuMasterBill_Click (System.Object sender, System.EventArgs e)
		{
			frmBill frm = new frmBill();
			frm.MdiParent = this;
			frm.Show();
		}
		
		private void mnuMasterStock_Click (System.Object sender, System.EventArgs e)
		{
			frmStock frm = new frmStock();
			frm.MdiParent = this;
			frm.Show();
		}
		
		private void mnuMasterMan_Click (System.Object sender, System.EventArgs e)
		{
			frmSalesMan frm = new frmSalesMan();
			frm.MdiParent = this;
			frm.Show();
		}
		
		private void mnuMasterReport_Click (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void mnuUtilitiesNotepad_Click (System.Object sender, System.EventArgs e)
		{
			double res;
			res = Interaction.Shell("notepad.exe", AppWinStyle.NormalFocus, false, -1);
		}
		
		
		private void mnuAdminClear_Click (System.Object sender, System.EventArgs e)
		{
			frmStatus frm = new frmStatus();
			frm.MdiParent = this;
			frm.Show("Check");
		}
		
		private void mnuUtilitiesWordpad_Click (System.Object sender, System.EventArgs e)
		{
			double res;
			res = Interaction.Shell("C:\\Program Files\\Windows NT\\Accessories\\wordpad.exe", AppWinStyle.NormalFocus, false, -1);
		}
		
		private void mnuUtilitiesCalcu_Click (System.Object sender, System.EventArgs e)
		{
			double res;
			res = Interaction.Shell("calc.exe", AppWinStyle.NormalFocus, false, -1);
		}
		
		private void mnuUtiltiesMedia_Click (System.Object sender, System.EventArgs e)
		{
			double res;
			res = Interaction.Shell("C:\\Program Files\\Windows Media Player\\wmplayer.exe", AppWinStyle.NormalFocus, true, -1);
		}
		
		private void mnuUtilitiesGames_Click (System.Object sender, System.EventArgs e)
		{
			
		}
		
		private void SqlDataAdapter1_RowUpdated (System.Object sender, System.Data.SqlClient.SqlRowUpdatedEventArgs e)
		{
			
		}
	}
	
}
