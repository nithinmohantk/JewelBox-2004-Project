VERSION 5.00
Object = "{972DE6B5-8B09-11D2-B652-A1FD6CC34260}#1.0#0"; "ActiveSkin.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmOptions 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Customize Settings"
   ClientHeight    =   4920
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   6150
   Icon            =   "frmOptions.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   6150
   ShowInTaskbar   =   0   'False
   Begin ACTIVESKINLibCtl.SkinForm SkinForm1 
      Height          =   480
      Left            =   240
      OleObjectBlob   =   "frmOptions.frx":000C
      TabIndex        =   12
      Top             =   4320
      Width           =   480
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdApply 
      Height          =   375
      Left            =   4800
      OleObjectBlob   =   "frmOptions.frx":00D9
      TabIndex        =   10
      Top             =   4440
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdCancel 
      Height          =   375
      Left            =   3480
      OleObjectBlob   =   "frmOptions.frx":0161
      TabIndex        =   9
      Top             =   4440
      Width           =   1095
   End
   Begin ACTIVESKINLibCtl.SkinButton cmdOK 
      Height          =   375
      Left            =   2160
      OleObjectBlob   =   "frmOptions.frx":01EB
      TabIndex        =   8
      Top             =   4440
      Width           =   1095
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   3
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample4 
         Caption         =   "Sample 4"
         Height          =   1785
         Left            =   2100
         TabIndex        =   7
         Top             =   840
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   2
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample3 
         Caption         =   "Sample 3"
         Height          =   1785
         Left            =   1545
         TabIndex        =   6
         Top             =   675
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   1
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample2 
         Caption         =   "Sample 2"
         Height          =   1785
         Left            =   645
         TabIndex        =   5
         Top             =   300
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      Height          =   3780
      Index           =   0
      Left            =   240
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.FileListBox fraSkin 
         Height          =   2235
         Left            =   120
         Pattern         =   "*.skn"
         TabIndex        =   16
         Top             =   840
         Width           =   1935
      End
      Begin ACTIVESKINLibCtl.SkinLabel lblSkin 
         Height          =   255
         Left            =   720
         OleObjectBlob   =   "frmOptions.frx":026D
         TabIndex        =   15
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox txtSkin 
         Height          =   285
         Left            =   2040
         TabIndex        =   14
         Top             =   240
         Width           =   2895
      End
      Begin VB.CheckBox chkUseSkin 
         Height          =   195
         Left            =   2400
         TabIndex        =   11
         Top             =   3240
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "Use Skin"
         Height          =   255
         Left            =   2760
         TabIndex        =   13
         Top             =   3240
         Width           =   1095
      End
   End
   Begin MSComctlLib.TabStrip tbsOptions 
      Height          =   4245
      Left            =   105
      TabIndex        =   0
      Top             =   120
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   7488
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   4
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Skin Settings"
            Key             =   "SkinSettings"
            Object.ToolTipText     =   "Set Skin Settings"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "User Settings"
            Key             =   "UserSettings"
            Object.ToolTipText     =   "Set User Settings"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Program Settings"
            Key             =   "ProgramSettings"
            Object.ToolTipText     =   "Set Program Settings"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Misc Settings"
            Key             =   "MiscSettings"
            Object.ToolTipText     =   "Set Misc Settings"
            ImageVarType    =   2
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim skinstate As Boolean
Option Explicit


Private Sub chkUseSkin_Click()
If chkUseSkin.Value = 1 Then
    txtSkin.Text = fraSkin.Path & "\" & fraSkin.FileName
     fraSkin.Enabled = True
    UseSkin = True
ElseIf chkUseSkin.Value = vbUnchecked Then
    UseSkin = False
    fraSkin.Enabled = False
End If
End Sub

Private Sub Form_Activate()
If UseSkin = True Then
    ApplySkinForm
End If
End Sub

Private Sub Form_Load()
skinstate = UseSkin
fraSkin.Path = App.Path & "\Skins\"
fraSkin.Pattern = "*.skn"
If UseSkin = True Then
    fraSkin.Enabled = True
    chkUseSkin.Value = vbChecked
    ApplySkinForm
Else
    fraSkin.Enabled = False
    chkUseSkin.Value = vbUnchecked
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
If UseSkin = True Then
    skinname = SkinForm1.SkinPath
    frmMain.frmMainSkin.SkinPath = skinname
    frmMain.frmMainSkin.AdjustSize = True
End If
Call SaveSettings
End Sub
Private Sub cmdOK_Click()
Call cmdApply_Click
Unload Me
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdApply_Click()
   If UseSkin = True Then
      skinname = fraSkin.Path & "\" & fraSkin.FileName
      frmMain.frmMainSkin.SkinPath = skinname
      frmMain.frmMainSkin.AdjustSize = True
   Else
      frmMain.frmMainSkin.SkinPath = ""
   End If
End Sub

Private Sub fraSkin_Click()
If UseSkin = True Then
    skinname = App.Path & "\Skins\" & fraSkin.FileName
End If
Call Form_Activate
End Sub

Private Sub tbsOptions_Click()
    
    Dim i As Integer
    'show and enable the selected tab's controls
    'and hide and disable all others
    For i = 0 To tbsOptions.Tabs.Count - 1
        If i = tbsOptions.SelectedItem.Index - 1 Then
            picOptions(i).Left = 210
            picOptions(i).Enabled = True
        Else
            picOptions(i).Left = -20000
            picOptions(i).Enabled = False
        End If
    Next
    
End Sub

Public Sub ApplySkinForm()
  SkinForm1.SkinPath = skinname
  cmdOK.ApplySkin SkinForm1
  cmdCancel.ApplySkin SkinForm1
  cmdApply.ApplySkin SkinForm1
  SkinForm1.AdjustSize = True
End Sub

