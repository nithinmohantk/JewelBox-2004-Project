VERSION 5.00
Begin VB.Form frmStock 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Stock Manager"
   ClientHeight    =   5550
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7845
   Icon            =   "frmStock.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5550
   ScaleWidth      =   7845
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
      Left            =   1320
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5040
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
      Left            =   2280
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   11
      Top             =   5040
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
      Left            =   5160
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5040
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
      Left            =   3240
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   5040
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
      Left            =   4200
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   5040
      Width           =   855
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
      Left            =   6120
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   5040
      Width           =   855
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   855
      Left            =   360
      TabIndex        =   16
      Top             =   0
      Width           =   5895
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   495
         Left            =   240
         Picture         =   "frmStock.frx":23D2
         ScaleHeight     =   495
         ScaleWidth      =   495
         TabIndex        =   17
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Stock Details Manager"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   26.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   735
         Left            =   960
         TabIndex        =   18
         Top             =   120
         Width           =   4575
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   4095
      Left            =   0
      TabIndex        =   15
      Top             =   840
      Width           =   7815
      Begin VB.TextBox txtRate 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   5160
         TabIndex        =   39
         Top             =   840
         Width           =   1215
      End
      Begin VB.ListBox txtJewelType 
         Appearance      =   0  'Flat
         Height          =   615
         ItemData        =   "frmStock.frx":2814
         Left            =   4920
         List            =   "frmStock.frx":2821
         TabIndex        =   1
         Top             =   120
         Width           =   1215
      End
      Begin VB.TextBox txtStockAmt 
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
         Left            =   5640
         MaxLength       =   15
         TabIndex        =   37
         Top             =   3600
         Width           =   1335
      End
      Begin VB.TextBox txtStatus 
         Appearance      =   0  'Flat
         ForeColor       =   &H000000FF&
         Height          =   285
         Left            =   1680
         TabIndex        =   36
         Top             =   3600
         Width           =   1215
      End
      Begin VB.TextBox txtGrossAmt 
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
         Left            =   5640
         MaxLength       =   15
         TabIndex        =   25
         Top             =   1680
         Width           =   1335
      End
      Begin VB.ComboBox cboItemtype 
         Height          =   315
         ItemData        =   "frmStock.frx":283D
         Left            =   1680
         List            =   "frmStock.frx":2856
         Sorted          =   -1  'True
         TabIndex        =   0
         Top             =   240
         Width           =   1695
      End
      Begin VB.ComboBox cboItemID 
         Height          =   315
         Left            =   1680
         TabIndex        =   2
         Top             =   720
         Width           =   1695
      End
      Begin VB.TextBox txtItemDes 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1680
         MaxLength       =   100
         TabIndex        =   3
         Top             =   1200
         Width           =   5295
      End
      Begin VB.TextBox txtGrossWt 
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
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   4
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox txtStoneWt 
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
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   5
         Top             =   2160
         Width           =   1215
      End
      Begin VB.TextBox txtStoneAmt 
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
         Left            =   5640
         MaxLength       =   15
         TabIndex        =   6
         Top             =   2160
         Width           =   1335
      End
      Begin VB.TextBox txtNetWt 
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
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   34
         Top             =   3120
         Width           =   1215
      End
      Begin VB.TextBox txtNetAmount 
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
         Left            =   5640
         MaxLength       =   15
         TabIndex        =   35
         Top             =   3120
         Width           =   1335
      End
      Begin VB.TextBox txtLabouramt 
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
         Left            =   1680
         MaxLength       =   10
         TabIndex        =   7
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox txtItemQTY 
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
         Left            =   5640
         MaxLength       =   10
         TabIndex        =   8
         Top             =   2640
         Width           =   1335
      End
      Begin VB.Label Label25 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/Gms"
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
         Left            =   6480
         TabIndex        =   48
         Top             =   840
         Width           =   735
      End
      Begin VB.Label Label24 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/-"
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
         Left            =   7080
         TabIndex        =   47
         Top             =   3120
         Width           =   735
      End
      Begin VB.Label Label23 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/-"
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
         Left            =   7080
         TabIndex        =   46
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label22 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/-"
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
         Left            =   7080
         TabIndex        =   45
         Top             =   1680
         Width           =   735
      End
      Begin VB.Label Label21 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/-"
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
         Left            =   7080
         TabIndex        =   44
         Top             =   3600
         Width           =   735
      End
      Begin VB.Label Label20 
         BackStyle       =   0  'Transparent
         Caption         =   "Rs/-"
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
         TabIndex        =   43
         Top             =   2640
         Width           =   735
      End
      Begin VB.Label Label19 
         BackStyle       =   0  'Transparent
         Caption         =   "Gms"
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
         TabIndex        =   42
         Top             =   3120
         Width           =   735
      End
      Begin VB.Label Label18 
         BackStyle       =   0  'Transparent
         Caption         =   "Gms"
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
         TabIndex        =   41
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label17 
         BackStyle       =   0  'Transparent
         Caption         =   "Gms"
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
         TabIndex        =   40
         Top             =   1680
         Width           =   735
      End
      Begin VB.Label Label16 
         BackStyle       =   0  'Transparent
         Caption         =   "CURRENT RATE :"
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
         Left            =   3600
         TabIndex        =   38
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "JEWEL TYPE :"
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
         Left            =   3600
         TabIndex        =   33
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "TOTAL STOCK AMT       :"
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
         Left            =   4320
         TabIndex        =   32
         Top             =   3600
         Width           =   1455
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "STOCK STATUS :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   3600
         Width           =   1455
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "NET AMT     :"
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
         Left            =   4320
         TabIndex        =   30
         Top             =   3120
         Width           =   1455
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "NET WT         :"
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
         TabIndex        =   29
         Top             =   3120
         Width           =   1455
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM QTY    :"
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
         Left            =   4320
         TabIndex        =   28
         Top             =   2640
         Width           =   1215
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "LABOUR CHARGE         :"
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
         Left            =   120
         TabIndex        =   27
         Top             =   2520
         Width           =   1455
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "GROSS AMT :"
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
         Left            =   4320
         TabIndex        =   26
         Top             =   1680
         Width           =   1335
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "STONE AMT :"
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
         Left            =   4320
         TabIndex        =   24
         Top             =   2160
         Width           =   1215
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "STONE WT     :"
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
         TabIndex        =   23
         Top             =   2160
         Width           =   1455
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "GROSS WT     :"
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
         TabIndex        =   22
         Top             =   1680
         Width           =   1455
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "DESCRIPTION :"
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
         TabIndex        =   21
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM CODE     :"
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
         TabIndex        =   20
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM TYPE      :"
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
         TabIndex        =   19
         Top             =   240
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim isNew As Boolean
Private Sub cboItemID_Click()
If isNew = False Then
    Call DoDisplay
Else
    txtItemDes.SetFocus
End If
End Sub

Private Sub cboItemID_GotFocus()
If isNew = False Then
        Call LoadItemCode
Else
   cboItemID.Clear
End If
End Sub

Private Sub cboItemID_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtItemDes.SetFocus
End If
End Sub

Private Sub cboItemtype_Click()
txtJewelType.SetFocus
End Sub

Private Sub cboItemtype_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtJewelType.SetFocus
End If
End Sub

Private Sub cmdSave_Click()

If isNew = True Then
   If validate() = True Then
      If rsStock.State = 0 Then rsStock.Open "stock", conn, adOpenDynamic, adLockOptimistic
      rsStock.AddNew
      rsStock!Date = Format(DateTime.Date, "dd/mm/yyyy")
      rsStock!ITEMTYPE = UCase(Trim(cboItemtype.Text))
      rsStock!ITEMNO = UCase(Trim(cboItemID.Text))
      rsStock!JEWELTYPE = UCase(Trim(txtJewelType.Text))
      rsStock!Description = Trim(txtItemDes.Text)
      rsStock!GROSSWEIGHT = Val(Trim(txtGrossWt.Text))
      rsStock!STONEWEIGHT = Val(Trim(txtStoneWt.Text))
      rsStock!STONEAMT = Val(Trim(txtStoneAmt.Text))
      rsStock!LABOURCHARGE = Val(Trim(txtLabouramt.Text))
      rsStock!NETWEIGHT = Val(Trim(txtNetWt.Text))
      rsStock!ITEMQTY = Val(Trim(txtItemQTY.Text))
      rsStock!Status = stocklvl(Val(txtItemQTY.Text), UCase(Trim(cboItemID.Text)), UCase(Trim(cboItemtype.Text)))
      rsStock.Update
      rsStock.Close
      Call CommitDB
      MsgBox "New " & UCase(Trim(cboItemtype.Text)) & " of item-id : " & UCase(Trim(cboItemID.Text)) & " is Added Successfully ", vbInformation + vbOKOnly, "NEW ITEM ADDED SUCCESSFULY"
    Else
        MsgBox "A Stock Item  of " & UCase(Trim(cboItemtype.Text)) & "item-id : " & UCase(Trim(cboItemID.Text)) & " is Already exists ", vbInformation + vbOKOnly, "ITEM ID ALREADY EXISTS"
        cboItemID.SetFocus
        Exit Sub
    End If
      Call CommitDB
ElseIf isNew = False Then
        sql = "update stock set " & _
        " Description = '" & Trim(txtItemDes.Text) & "'," & _
        " GROSSWEIGHT = '" & Val(Trim(txtGrossWt.Text)) & "'," & _
        "STONEWEIGHT = '" & Val(Trim(txtStoneWt.Text)) & "'," & _
        " STONEAMT = '" & Val(Trim(txtStoneAmt.Text)) & "'," & _
        "LABOURCHARGE = '" & Val(Trim(txtLabouramt.Text)) & "'," & _
        "NETWEIGHT = '" & Val(Trim(txtNetWt.Text)) & "'," & _
        "ITEMQTY = '" & Val(Trim(txtItemQTY.Text)) & "', " & _
        "Status = '" & stocklvl(Val(txtItemQTY.Text), UCase(Trim(cboItemID.Text)), UCase(Trim(cboItemtype.Text))) & "' " & _
        "where itemno = '" & UCase(Trim(cboItemID.Text)) & "' and JEWELTYPE = '" & Trim(UCase(txtJewelType.Text)) & "'"
        conn.Execute sql
        MsgBox "Existing " & UCase(Trim(cboItemtype.Text)) & " of item-id : " & UCase(Trim(cboItemID.Text)) & "'s details is Updated Successfully ", vbInformation + vbOKOnly, "NEW ITEM ADDED SUCCESSFULY"
        Call CommitDB
End If

Call DisableControls
Call ClearControls
cboItemID.Enabled = True
cboItemtype.Enabled = True
txtJewelType.Enabled = True
cmdCancel.Enabled = False
cmdNew.Enabled = True
cmdEdit.Enabled = True
cmdSave.Enabled = False
cmdDelete.Enabled = True
cmdExit.Enabled = True
End Sub
Private Sub Form_Load()
inNew = False
Me.Top = 20
Me.Left = 500
cmdCancel.Enabled = False
cmdSave.Enabled = False
txtJewelType.Selected(0) = True
Call DisableControls
End Sub
Private Sub cmdCancel_Click()
ans = MsgBox("Are you want to cancel the current Job ?", vbQuestion + vbYesNo, "CANCEL JOB ????")
If ans = vbYes Then
    cmdNew.Enabled = True
    cmdEdit.Enabled = True
    cmdCancel.Enabled = False
    cmdExit.Enabled = True
    cmdDelete.Enabled = True
    cmdSave.Enabled = False
    isNew = False
    Call ClearControls
    Call DisableControls
End If
End Sub
Private Sub cmdDelete_Click()
ans = MsgBox("Are you really want to delete this details", vbQuestion + vbYesNo, "DELETE")
If ans = vbYes Then
   rsStock.Find "itemno = '" & UCase(Trim(cboItemID.Text)) & "'"
   rsStock.Delete
   Call CommitDB
   MsgBox "ITEM " & UCase(Trim(cboItemID.Text)) & " 's Details Deleted Successfully"
   Call LoadItemCode
   Call ClearControls
   Call DisableControls
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
cboItemID.Enabled = False
txtJewelType.Enabled = False
cboItemtype.Enabled = False
Call enablecontrols
End Sub
Private Sub cmdExit_Click()
Call CommitDB
Unload Me
End Sub
Private Sub cmdNew_Click()
cmdNew.Enabled = False
cmdEdit.Enabled = False
cmdExit.Enabled = False
cmdSave.Enabled = True
cmdDelete.Enabled = False
cmdCancel.Enabled = True
isNew = True
Call enablecontrols
Call ClearControls
cboItemID.SetFocus
End Sub
Public Sub LoadItemCode()
cboItemID.Clear
sql = "select * from stock where itemtype= '" & UCase(Trim(cboItemtype.Text)) & "' and " & _
       " JEWELTYPE = '" & UCase(Trim(txtJewelType.Text)) & "' order by itemno asc"
Set rs = conn.Execute(sql)
If Not rs.EOF Then
    rs.MoveFirst
    While Not rs.EOF
        cboItemID.AddItem rs!ITEMNO
    rs.MoveNext
    Wend
Else
  MsgBox "any Item of this type doesn't exists"
End If
sql = "select * from Rate where DATE = '" & Format(DateTime.Date, "mm/dd/yyyy") & "' "
Set rstemp = conn.Execute(sql)
If rstemp.EOF Then
  ch = MsgBox("Today's rate havn't entered ,do you want to enter it", vbCritical + vbOKCancel, "Missing Information")
End If
End Sub
Public Sub DoDisplay()
If isNew = False Then
sql = "select * from stock where itemtype= '" & UCase(Trim(cboItemtype.Text)) & "'" & _
       "and itemno ='" & UCase(Trim(cboItemID.Text)) & "'"
Set rs = conn.Execute(sql)
rs.MoveFirst
cboItemID.Text = rs!ITEMNO
txtItemDes.Text = rs!Description
txtNetWt.Text = rs!NETWEIGHT
txtStoneAmt.Text = rs!STONEAMT
txtStoneWt.Text = rs!STONEWEIGHT
txtGrossWt.Text = rs!GROSSWEIGHT
txtStoneAmt.Text = rs!STONEAMT
txtItemQTY.Text = rs!ITEMQTY
txtLabouramt.Text = rs!LABOURCHARGE
txtStatus.Text = stocklvl(rs!ITEMQTY, rs!ITEMNO, rs!ITEMTYPE)
Call change_status
Call loadRate
If Trim(rs!JEWELTYPE) = "GOLD" Then
   txtJewelType.Selected(0) = True
   txtRate.Text = rsRate!GOLD22CT
   txtGrossAmt.Text = FormatNumber(rs!GROSSWEIGHT * rsRate!GOLD22CT, 2, , vbFalse, vbFalse)
   txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + rs!STONEAMT + rs!LABOURCHARGE, 2, , vbFalse, vbFalse)
   txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * rs!ITEMQTY, 2, , vbFalse, vbFalse)
ElseIf Trim(rs!JEWELTYPE) = "SILVER" Then
    txtJewelType.Selected(1) = True
    txtRate.Text = rsRate!SILVER
    txtGrossAmt.Text = FormatNumber(rs!GROSSWEIGHT * rsRate!SILVER, 2, , vbFalse, vbFalse)
   txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + rs!STONEAMT + rs!LABOURCHARGE, 2, , vbFalse, vbFalse)
   txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * rs!ITEMQTY, 2, , vbFalse, vbFalse)
ElseIf Trim(rs!JEWELTYPE) = "PLATINUM" Then
    txtJewelType.Selected(2) = True
    txtRate.Text = rsRate!Platinum
    txtGrossAmt.Text = FormatNumber(rs!GROSSWEIGHT * rsRate!Platinum, 2, , vbFalse, vbFalse)
    txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + rs!STONEAMT + rs!LABOURCHARGE, 2, , vbFalse, vbFalse)
    txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * rs!ITEMQTY, 2, , vbFalse, vbFalse)
End If
End If
End Sub
Public Sub enablecontrols()
txtGrossAmt.Enabled = False
txtGrossWt.Enabled = True
txtItemDes.Enabled = True
txtItemQTY.Enabled = True
txtJewelType.Enabled = True
txtLabouramt.Enabled = True
txtNetAmount.Enabled = False
txtNetWt.Enabled = True
txtStatus.Enabled = False
txtStockAmt.Enabled = False
txtStoneAmt.Enabled = True
txtStoneWt.Enabled = True
txtRate.Enabled = False
End Sub
Public Sub DisableControls()
txtGrossAmt.Enabled = False
txtGrossWt.Enabled = False
txtItemDes.Enabled = False
txtItemQTY.Enabled = False
txtLabouramt.Enabled = False
txtNetAmount.Enabled = False
txtNetWt.Enabled = False
txtStatus.Enabled = False
txtStockAmt.Enabled = False
txtStoneAmt.Enabled = False
txtStoneWt.Enabled = False
txtRate.Enabled = False
End Sub

Public Sub ClearControls()
txtGrossAmt.Text = ""
txtGrossWt.Text = ""
txtItemDes.Text = ""
txtItemQTY.Text = ""
txtLabouramt.Text = ""
txtNetAmount.Text = ""
txtNetWt.Text = ""
txtStatus.Text = ""
txtStockAmt.Text = ""
txtStoneAmt.Text = ""
txtStoneWt.Text = ""
End Sub

Public Function validate() As Boolean
sql = "select * from stock where itemno = '" & UCase(Trim(cboItemID.Text)) & "'"
Set rs = conn.Execute(sql)
If rs.EOF Then
   validate = True
Else
    validate = False
End If
End Function
Public Sub loadRate()
If rsRate.State = 1 Then rsRate.Close
rsRate.Open "rate", conn, adOpenDynamic, adLockOptimistic
rsRate.Find "DATE = '" & Format(DateTime.Date, "dd/mm/yyyy") & "'"
If rsRate.EOF Then
   MsgBox "rate is empty"
Else
   If txtJewelType.Selected(0) = True Then
        txtRate.Text = rsRate!GOLD22CT
   ElseIf txtJewelType.Selected(1) = True Then
        txtRate.Text = rsRate!SILVER
   ElseIf txtJewelType.Selected(2) = True Then
        txtRate.Text = rsRate!Platinum
   End If
End If
End Sub
Private Sub txtGrossWt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtStoneWt.SetFocus
   Call new_calcu
End If
End Sub

Private Sub txtItemDes_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   If isNew = True Then
   txtGrossWt.SetFocus
   End If
End If
End Sub
Private Sub txtItemQTY_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   Call new_calcu
   If isNew = False Then
   txtStatus.Text = stocklvl(Val(txtItemQTY.Text), UCase(Trim(cboItemID.Text)), UCase(Trim(cboItemtype.Text)))
   End If
   cmdSave.SetFocus
End If
End Sub

Private Sub txtJewelType_Click()
Call loadRate
End Sub

Private Sub txtJewelType_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    If isNew = False Then
        Call LoadItemCode
        cboItemID.SetFocus
    Else
       cboItemID.SetFocus
    End If
    Call loadRate
End If
End Sub
Private Sub txtLabouramt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtItemQTY.SetFocus
   Call new_calcu
End If
End Sub

Private Sub txtStoneAmt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtLabouramt.SetFocus
   Call new_calcu
End If
End Sub

Public Sub new_calcu()
Call loadRate
If txtJewelType.Selected(0) = True Then
   txtGrossAmt.Text = FormatNumber(Val(txtGrossWt.Text) * rsRate!GOLD22CT, 2, , vbFalse, vbFalse)
   txtNetWt.Text = Val(txtGrossWt.Text) + Val(txtStoneWt.Text)
   txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + Val(txtStoneAmt.Text) + Val(txtLabouramt.Text), 2, , vbFalse, vbFalse)
   txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * Val(txtItemQTY.Text), 2, , vbFalse, vbFalse)
ElseIf txtJewelType.Selected(1) = True Then
    txtGrossAmt.Text = FormatNumber(Val(txtGrossWt.Text) * rsRate!SILVER, 2, , vbFalse, vbFalse)
   txtNetWt.Text = Val(txtGrossWt.Text) + Val(txtStoneWt.Text)
   txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + Val(txtStoneAmt.Text) + Val(txtLabouramt.Text), 2, , vbFalse, vbFalse)
   txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * Val(txtItemQTY.Text), 2, , vbFalse, vbFalse)
ElseIf txtJewelType.Selected(2) = True Then
    txtGrossAmt.Text = FormatNumber(Val(txtGrossWt.Text) * rsRate!Platinum, 2, , vbFalse, vbFalse)
   txtNetWt.Text = Val(txtGrossWt.Text) + Val(txtStoneWt.Text)
   txtNetAmount.Text = FormatNumber(Val(txtGrossAmt.Text) + Val(txtStoneAmt.Text) + Val(txtLabouramt.Text), 2, , vbFalse, vbFalse)
   txtStockAmt.Text = FormatNumber(Val(txtNetAmount.Text) * Val(txtItemQTY.Text), 2, , vbFalse, vbFalse)
End If
End Sub


Private Sub txtStoneWt_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   txtStoneAmt.SetFocus
   Call new_calcu
End If
End Sub

Public Sub change_status()

'If rsStock.EOF Or rsStock.BOF Then rsStock.MoveFirst
If Not rsStock.EOF Then
rsStock.Find "Itemno = '" & UCase(Trim(cboItemID.Text)) & "'"
rsStock!Status = Trim(txtStatus.Text)
rsStock.Update
Else
   rsStock.MoveFirst
End If
rsStock.Close
If rsStock.State = 0 Then rsStock.Open "stock", conn, adOpenKeyset, adLockOptimistic
End Sub
