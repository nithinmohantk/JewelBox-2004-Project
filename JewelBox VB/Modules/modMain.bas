Attribute VB_Name = "modMain"
Public conn As New ADODB.Connection
Public rsLogin As New ADODB.Recordset
Public rsSalesMan As New ADODB.Recordset
Public rsSales As New ADODB.Recordset
Public rsStock As New ADODB.Recordset
Public rsRate As New ADODB.Recordset
Public rsPurchase As New ADODB.Recordset
Public rsExchange As New ADODB.Recordset
Public sql As String
Public recordsaffected As Integer
Public DefaultUser As String
Public UseSkin As Boolean
Public RunNo As Integer
Public fso As New Scripting.FileSystemObject
Public textstr As Scripting.TextStream
Public skinname As String
Public SkinFrm As ACTIVESKINLibCtl.SkinForm
Public connString As String
Public Sub ConnectDB()
connString = "Provider=MSDASQL.1;Password=velocity;Persist Security Info=True;User ID=admin;Data Source=JewelBox;Initial Catalog=JewelBox"
conn.Open (connString)
conn.BeginTrans
rsLogin.CursorLocation = adUseClient
rsLogin.Open "[Login]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsSalesMan.Open "[Salesman]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsSales.Open "[Sales]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsStock.Open "[Stock]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsRate.Open "[Rate]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsExchange.Open "[Exchange]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsPurchase.Open "[Purchase]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
End Sub
Public Sub CommitDB()
conn.CommitTrans
conn.Close
Call ConnectDB
End Sub

Public Sub LoadSettings()
frmMain.RegAccess.hKey = HKEY_CURRENT_USER
frmMain.RegAccess.Path = "Software\JewelBox 2002"
If Not frmMain.RegAccess.KeyExists Then
    DefaultUser = "admin"
    RunNo = 1
    UseSkin = False
    skinname = App.Path & "\Skins\" & "WinAqua.skn"
    frmMain.RegAccess.CreateKey
    frmMain.RegAccess.ValueName = "RunNo"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "DefaultUser"
    frmMain.RegAccess.Data = Encrypt("Default", "hai")
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "UseSkin"
    frmMain.RegAccess.Data = 0
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "SkinPath"
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.Data = ""
    frmMain.RegAccess.SetValue
Else
    frmMain.RegAccess.ValueName = "RunNo"
    RunNo = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "DefaultUser"
    DefaultUser = frmMain.RegAccess.GetValue
    DefaultUser = Encrypt(DefaultUser, "hai")
    SkinPath = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "SkinPath"
    SkinPath = frmMain.RegAccess.GetValue
    skinname = SkinPath
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "UseSkin"
    Dim temps As Integer
    temps = frmMain.RegAccess.GetValue
    If temps = 0 Then
        UseSkin = False
    Else
        UseSkin = True
    End If
    
End If
If RunNo = 1 Then
    frmMain.RegAccess.ValueName = "RunNo"
    frmMain.RegAccess.Data = 2
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    RunNo = 2
    Call FirstRun
End If
If Not fso.FileExists(skinname) Then
    skinname = App.Path & "\Skins\" & "WinAqua.skn"
End If
End Sub
Public Sub SaveSettings()
    If RunNo >= 1024 Then
        RunNo = 1
    End If
    frmMain.RegAccess.ValueName = "RunNo"
    frmMain.RegAccess.Data = RunNo + 1
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "DefaultUser"
    frmMain.RegAccess.Data = Encrypt(DefaultUser, "hai")
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "UseSkin"
    If UseSkin = True Then
        frmMain.RegAccess.Data = 1
        frmMain.RegAccess.DataType = REG_DWORD
        frmMain.RegAccess.SetValue
        frmMain.RegAccess.ValueName = "SkinPath"
        frmMain.RegAccess.Data = skinname
        frmMain.RegAccess.DataType = REG_SZ
        frmMain.RegAccess.SetValue
    ElseIf UseSkin = False Then
        frmMain.RegAccess.Data = 0
        frmMain.RegAccess.DataType = REG_DWORD
        frmMain.RegAccess.SetValue
    End If
    
    
End Sub

Public Sub FirstRun()
Shell (App.Path & "\Register ActiveX.bat")
End Sub

Public Function Encrypt(ByVal strInput As String, ByVal strKey As String) As String
Dim iCount As Long
Dim lngPtr As Long
For iCount = 1 To Len(strInput)
    Mid(strInput, iCount, 1) = Chr((Asc(Mid(strInput, iCount, 1))) Xor (Asc(Mid(strKey, lngPtr + 1, 1))))
    lngPtr = ((lngPtr + 1) Mod Len(strKey))
Next iCount
Encrypt = strInput
End Function

Public Sub Main()
Call LoadSettings
Load frmSplash
frmSplash.Show
End Sub
