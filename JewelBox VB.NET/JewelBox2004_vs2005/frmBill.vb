Public Class frmBill
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
    Friend WithEvents txtDate As System.Windows.Forms.TextBox
    Friend WithEvents txtBillNo As System.Windows.Forms.TextBox
    Friend WithEvents txtItemID As System.Windows.Forms.TextBox
    Friend WithEvents txtSalesMan As System.Windows.Forms.TextBox
    Friend WithEvents txtConterNO As System.Windows.Forms.TextBox
    Friend WithEvents txtBuyer As System.Windows.Forms.TextBox
    Friend WithEvents txtQTY As System.Windows.Forms.TextBox
    Friend WithEvents cmdCancel As System.Windows.Forms.Button
    Friend WithEvents cmdOK As System.Windows.Forms.Button
    Friend WithEvents optSales As System.Windows.Forms.RadioButton
    Friend WithEvents optExchange As System.Windows.Forms.RadioButton
    Friend WithEvents optPurchase As System.Windows.Forms.RadioButton
    Friend WithEvents Button1 As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Dim resources As System.Resources.ResourceManager = New System.Resources.ResourceManager(GetType(frmBill))
        Me.txtDate = New System.Windows.Forms.TextBox()
        Me.txtBillNo = New System.Windows.Forms.TextBox()
        Me.txtItemID = New System.Windows.Forms.TextBox()
        Me.txtSalesMan = New System.Windows.Forms.TextBox()
        Me.txtConterNO = New System.Windows.Forms.TextBox()
        Me.txtBuyer = New System.Windows.Forms.TextBox()
        Me.txtQTY = New System.Windows.Forms.TextBox()
        Me.cmdCancel = New System.Windows.Forms.Button()
        Me.cmdOK = New System.Windows.Forms.Button()
        Me.optSales = New System.Windows.Forms.RadioButton()
        Me.optExchange = New System.Windows.Forms.RadioButton()
        Me.optPurchase = New System.Windows.Forms.RadioButton()
        Me.Button1 = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'txtDate
        '
        Me.txtDate.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtDate.Location = New System.Drawing.Point(120, 80)
        Me.txtDate.Name = "txtDate"
        Me.txtDate.Size = New System.Drawing.Size(120, 20)
        Me.txtDate.TabIndex = 0
        Me.txtDate.Text = ""
        '
        'txtBillNo
        '
        Me.txtBillNo.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtBillNo.Location = New System.Drawing.Point(120, 120)
        Me.txtBillNo.Name = "txtBillNo"
        Me.txtBillNo.Size = New System.Drawing.Size(120, 20)
        Me.txtBillNo.TabIndex = 1
        Me.txtBillNo.Text = ""
        '
        'txtItemID
        '
        Me.txtItemID.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtItemID.Location = New System.Drawing.Point(120, 160)
        Me.txtItemID.Name = "txtItemID"
        Me.txtItemID.Size = New System.Drawing.Size(120, 20)
        Me.txtItemID.TabIndex = 2
        Me.txtItemID.Text = ""
        '
        'txtSalesMan
        '
        Me.txtSalesMan.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtSalesMan.Location = New System.Drawing.Point(120, 200)
        Me.txtSalesMan.Name = "txtSalesMan"
        Me.txtSalesMan.Size = New System.Drawing.Size(120, 20)
        Me.txtSalesMan.TabIndex = 3
        Me.txtSalesMan.Text = ""
        '
        'txtConterNO
        '
        Me.txtConterNO.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtConterNO.Location = New System.Drawing.Point(120, 240)
        Me.txtConterNO.Name = "txtConterNO"
        Me.txtConterNO.Size = New System.Drawing.Size(120, 20)
        Me.txtConterNO.TabIndex = 4
        Me.txtConterNO.Text = ""
        '
        'txtBuyer
        '
        Me.txtBuyer.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtBuyer.Location = New System.Drawing.Point(120, 280)
        Me.txtBuyer.Name = "txtBuyer"
        Me.txtBuyer.Size = New System.Drawing.Size(280, 20)
        Me.txtBuyer.TabIndex = 5
        Me.txtBuyer.Text = ""
        '
        'txtQTY
        '
        Me.txtQTY.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtQTY.Location = New System.Drawing.Point(120, 328)
        Me.txtQTY.Name = "txtQTY"
        Me.txtQTY.Size = New System.Drawing.Size(112, 20)
        Me.txtQTY.TabIndex = 6
        Me.txtQTY.Text = ""
        '
        'cmdCancel
        '
        Me.cmdCancel.BackgroundImage = CType(resources.GetObject("cmdCancel.BackgroundImage"), System.Drawing.Bitmap)
        Me.cmdCancel.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdCancel.Location = New System.Drawing.Point(392, 352)
        Me.cmdCancel.Name = "cmdCancel"
        Me.cmdCancel.Size = New System.Drawing.Size(82, 40)
        Me.cmdCancel.TabIndex = 9
        '
        'cmdOK
        '
        Me.cmdOK.BackgroundImage = CType(resources.GetObject("cmdOK.BackgroundImage"), System.Drawing.Bitmap)
        Me.cmdOK.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.cmdOK.Location = New System.Drawing.Point(288, 352)
        Me.cmdOK.Name = "cmdOK"
        Me.cmdOK.Size = New System.Drawing.Size(82, 40)
        Me.cmdOK.TabIndex = 8
        '
        'optSales
        '
        Me.optSales.BackColor = System.Drawing.SystemColors.ControlText
        Me.optSales.Location = New System.Drawing.Point(344, 104)
        Me.optSales.Name = "optSales"
        Me.optSales.Size = New System.Drawing.Size(16, 24)
        Me.optSales.TabIndex = 10
        Me.optSales.Text = "RadioButton1"
        '
        'optExchange
        '
        Me.optExchange.BackColor = System.Drawing.SystemColors.ControlText
        Me.optExchange.Location = New System.Drawing.Point(344, 200)
        Me.optExchange.Name = "optExchange"
        Me.optExchange.Size = New System.Drawing.Size(16, 24)
        Me.optExchange.TabIndex = 11
        Me.optExchange.Text = "RadioButton2"
        '
        'optPurchase
        '
        Me.optPurchase.BackColor = System.Drawing.SystemColors.ControlText
        Me.optPurchase.Location = New System.Drawing.Point(344, 152)
        Me.optPurchase.Name = "optPurchase"
        Me.optPurchase.Size = New System.Drawing.Size(16, 24)
        Me.optPurchase.TabIndex = 12
        Me.optPurchase.Text = "RadioButton3"
        '
        'Button1
        '
        Me.Button1.BackgroundImage = CType(resources.GetObject("Button1.BackgroundImage"), System.Drawing.Bitmap)
        Me.Button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup
        Me.Button1.Location = New System.Drawing.Point(184, 352)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(82, 40)
        Me.Button1.TabIndex = 13
        '
        'frmBill
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.BackgroundImage = CType(resources.GetObject("$this.BackgroundImage"), System.Drawing.Bitmap)
        Me.ClientSize = New System.Drawing.Size(504, 421)
        Me.Controls.AddRange(New System.Windows.Forms.Control() {Me.Button1, Me.optPurchase, Me.optExchange, Me.optSales, Me.cmdCancel, Me.cmdOK, Me.txtQTY, Me.txtBuyer, Me.txtConterNO, Me.txtSalesMan, Me.txtItemID, Me.txtBillNo, Me.txtDate})
        Me.ImeMode = System.Windows.Forms.ImeMode.On
        Me.Name = "frmBill"
        Me.Text = "Bill Manager"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub cmdOK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdOK.Click

    End Sub

    Private Sub cmdCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdCancel.Click
        Me.Close()
    End Sub
End Class
