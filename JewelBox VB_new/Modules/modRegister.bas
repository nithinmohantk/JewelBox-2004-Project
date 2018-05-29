Attribute VB_Name = "modRegister"
Public try_day As Integer
Public reg_user As String
Public reg_company As String
Public mach_id As String
Public reg_id As String
Public reg_key As String
Public reg_done As Boolean
Public run_eval As Boolean
Public expired As Boolean
Public DefaultUser As String
Public RunNo As Integer
Public Sub LoadSettings()
frmMain.RegAccess.hKey = HKEY_LOCAL_MACHINE
frmMain.RegAccess.Path = "Software\Dream Works Technologies\JewelBox 2004"
If Not frmMain.RegAccess.KeyExists Then
    RunNo = 1
    UseWizard = True
    reg_done = False
    frmMain.RegAccess.CreateKey
    frmMain.RegAccess.ValueName = "RunNo"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Registered To"
    frmMain.RegAccess.Data = "admin"
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Company Name"
    frmMain.RegAccess.Data = "default"
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Machine ID"
    frmMain.RegAccess.Data = encrypt_pass("JBX2K4-1718009-77143")
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Reg Done"
    frmMain.RegAccess.Data = 0
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "NoOfTry"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Trying"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Expired"
    frmMain.RegAccess.Data = 0
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Use Wizard"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    UseWizard = True

Else
    frmMain.RegAccess.ValueName = "RunNo"
    RunNo = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "Registered To"
    reg_user = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "Company Name"
    reg_company = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "Trying"
    reg_eval = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "Machine ID"
    reg_id = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "NoOfTry"
    try_day = frmMain.RegAccess.GetValue
    frmMain.RegAccess.ValueName = "Expired"
    
    Dim ie As Integer
    ie = frmMain.RegAccess.GetValue
    If ie = "1" Then
      expired = True
    ElseIf ie = "0" Then
      expired = False
    End If
    frmMain.RegAccess.ValueName = "Reg Done"
    Dim ta As String
    ta = frmMain.RegAccess.GetValue
    If ta = "0" Then
       reg_done = False
    ElseIf ta = "1" Then
       reg_done = True
    End If
    frmMain.RegAccess.ValueName = "Use Wizard"
    Dim te As String
    te = frmMain.RegAccess.GetValue
    If te = "0" Then
        UseWizard = False
    ElseIf te = "1" Then
        UseWizard = True
    End If
End If
If RunNo = 1 Then
    frmMain.RegAccess.ValueName = "RunNo"
    frmMain.RegAccess.Data = 2
    frmMain.RegAccess.DataType = REG_DWORD
    frmMain.RegAccess.SetValue
    RunNo = 2
'    Call FirstRun
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
    frmMain.RegAccess.ValueName = "Registered To"
    frmMain.RegAccess.Data = reg_user
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Company Name"
    frmMain.RegAccess.Data = reg_company
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    If reg_check(reg_key) = True Then
        If first_reg = True Then
            first_reg = False
            frmMain.RegAccess.ValueName = "Reg Done"
            frmMain.RegAccess.Data = 1
            frmMain.RegAccess.DataType = REG_SZ
            frmMain.RegAccess.SetValue
            MsgBox "Registration Success", vbInformation + vbOKOnly, "Registration Success"
        End If
    frmMain.RegAccess.ValueName = "Trying"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Reg Done"
    frmMain.RegAccess.Data = 1
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    frmMain.RegAccess.ValueName = "Trying"
    frmMain.RegAccess.Data = 0
    frmMain.RegAccess.DataType = REG_SZ
    frmMain.RegAccess.SetValue
    Else
       If reg_done = False Then
       frmMain.RegAccess.ValueName = "NoOfTry"
       frmMain.RegAccess.Data = try_day + 1
       frmMain.RegAccess.DataType = REG_SZ
       frmMain.RegAccess.SetValue
       If expired = True Then
       frmMain.RegAccess.ValueName = "Expired"
        frmMain.RegAccess.Data = 1
        frmMain.RegAccess.DataType = REG_SZ
        frmMain.RegAccess.SetValue
       End If
       End If
    End If
    frmMain.RegAccess.ValueName = "Use Wizard"
    If UseWizard = True Then
        frmMain.RegAccess.Data = 1
        frmMain.RegAccess.DataType = REG_SZ
        frmMain.RegAccess.SetValue
    ElseIf UseWizard = False Then
        frmMain.RegAccess.Data = 0
        frmMain.RegAccess.DataType = REG_SZ
        frmMain.RegAccess.SetValue
    End If
End Sub



Public Function Registered() As Boolean
If reg_done = True Then
   Registered = True
ElseIf reg_done = False Then
   Registered = False
End If
End Function

Public Function reg_check(ByVal key As String) As Boolean
If key = decrypt_pass(reg_id) Then
   reg_check = True
   reg_done = True
   first_reg = True
Else
   reg_check = False
   reg_done = False
End If
End Function

