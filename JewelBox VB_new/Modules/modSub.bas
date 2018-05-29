Attribute VB_Name = "modSub"
Public OS As String
Public OSVer As String
Public OSOwner As String
Public first_reg As Boolean
Public pass_changed As Boolean
Public loguser As String
Public smanid As String
Public logpass As String
Public deluser As String
Public newpass1 As String
Public newpass2 As String
Public counter As Integer
Public ispur As Boolean
Public called_by As Boolean
Public Function encrypt_pass(ByVal pass As String) As String
Dim pass1(40) As String
Dim ascii(40) As String
Dim pass2 As String
Dim lenp As Integer
Dim i As Integer
lenp = Len(pass)
i = 0
While i < lenp
  i = i + 1
  pass1(i) = Mid(pass, i, 1)
  ascii(i) = Asc(pass1(i))
  ascii(i) = ascii(i) + (i + (i - 4))
  pass2 = pass2 & Chr(ascii(i))
Wend
encrypt_pass = pass2
End Function
Public Function decrypt_pass(ByVal pass As String) As String
Dim pass1(40) As String
Dim ascii(40) As Integer
Dim pass2 As String
Dim lenp As Integer
Dim i, j, k As Integer
lenp = Len(pass)
i = 1
While i <= lenp
    pass1(i) = Mid(pass, i, 1)
    ascii(i) = Asc(pass1(i))
    ascii(i) = ascii(i) - (i + (i - 4))
    pass2 = pass2 & Chr(ascii(i))
    i = i + 1
Wend
decrypt_pass = pass2
End Function
Public Function confirm_pass(ByVal userpass As String) As Boolean
 Dim rsa As New ADODB.Recordset
 If rsa.State = 1 Then rsa.Close
 rsa.Open "login", conn, adOpenDynamic, adLockOptimistic
 rsa.Find "loginid = '" & loguser & "'"
 If decrypt_pass(rsa!Password) = userpass Then
     confirm_pass = True
 Else
     confirm_pass = False
 End If
 rsa.Close
End Function

Public Sub del_user()
    If rsLogin.State = 1 Then rsLogin.Close
    rsLogin.Open "login", conn, adOpenDynamic, adLockOptimistic
    rsLogin.Find " loginid = '" & deluser & "'"
    If rsLogin.EOF Then
       MsgBox "user not exist's"
    Else
       rsLogin.Delete
       rsLogin.Close
       Call CommitDB
       MsgBox "User " & deluser & " Deleted Successfully"
    End If
End Sub
