Attribute VB_Name = "modMain"
Public conn As New ADODB.Connection
Public rs As New ADODB.Recordset
Public rs1 As New ADODB.Recordset
Public UseWizard As Boolean
Public rsLogin As New ADODB.Recordset
Public rsSalesMan As New ADODB.Recordset
Public rsSales As New ADODB.Recordset
Public rsStock As New ADODB.Recordset
Public rsRate As New ADODB.Recordset
Public rsLevel As New ADODB.Recordset
Public rsPurchase As New ADODB.Recordset
Public rsExchange As New ADODB.Recordset
Public rsBill As New ADODB.Recordset
Public rsReceived As New ADODB.Recordset
Public rsReOrder As New ADODB.Recordset
Public sql As String
Public called As Boolean
Public recaffected As Integer
Public fso As New Scripting.FileSystemObject
Public textstr As Scripting.TextStream
Public connString As String
Public Sub ConnectDB()
On Error GoTo msg
connString = "Provider=MSDASQL.1;Password=;Persist Security Info=True;User ID=admin;Data Source=JewelBox;Initial Catalog=JewelBox"
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
rsBill.Open "[Bill]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsLevel.Open "[StockLevel]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsReceived.Open "[Received]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
rsReOrder.Open "[ReOrder]", conn, adOpenKeyset, adLockOptimistic, adCmdTable
Exit Sub
msg:
    MsgBox "Database Connection Failed,please check your connection settings", vbCritical + vbOKOnly, "DATABASE CONNECTION FAILED"
    End
End Sub
Public Sub CommitDB()
conn.CommitTrans
conn.Close
Call ConnectDB
End Sub
Public Sub Main()
first_reg = False
Call LoadSettings
Call ConnectDB
If Registered() = True Then
   Load frmSplash
   frmSplash.Show
Else
  called_by = False
   frmRegister.Show
End If
End Sub

Public Function stocklvl(ByVal qty As Long, ByVal item As String, ByVal itype As String) As String
If rsLevel.State = 1 Then rsLevel.Close
rsLevel.Open "StockLevel", conn, adOpenDynamic, adLockOptimistic
If Not rsLevel.EOF Then
     rsLevel.MoveFirst
     If qty >= rsLevel!SURPLUS Then
        stocklvl = "SURPLUS"
     ElseIf qty < rsLevel!SURPLUS And qty >= rsLevel!SAFE Then
        stocklvl = "SAFE"
     ElseIf qty < rsLevel!SAFE And qty >= rsLevel!REORDER Then
        stocklvl = "REORDER"
        Call add_to_reorder(qty, item)
        MsgBox "Stock Level of " & itype & " of Item Code " & item & " is Reached Reorder Level" & vbCrLf & "Please inform your ADMINISTRATOR to Order for More Stock", vbInformation + vbOKOnly, "REORDER LEVEL REACHED"
     ElseIf qty < rsLevel!REORDER And qty > rsLevel!EMPTY Then
        stocklvl = "DANGER"
        Call add_to_reorder(qty, item)
        MsgBox "Stock Level of " & itype & " of Item Code " & item & " is fall Below Reorder Level" & vbCrLf & "Please inform your ADMINISTRATOR to Order for More Stock immediately", vbCritical + vbOKOnly, "DANGER ??!!!###!!!!"
     ElseIf qty <= rsLevel!EMPTY Then
        stocklvl = "EMPTY"
        Call add_to_reorder(qty, item)
        MsgBox "Stock Level of " & itype & " of Item Code " & item & " is fall Below EMPTY Level" & "There is no more stock of this item " & vbCrLf & "Please inform your ADMINISTRATOR to Order for More Stock immediately", vbCritical + vbOKOnly, "EMPTYYYYYY STOCK"
     End If
End If
rsLevel.Close
End Function
Public Sub add_to_reorder(ByVal qty As Integer, ByVal item As String)
Dim rs2 As New ADODB.Recordset
Dim sq As String
sq = "select * from Reorder where itemno = '" & item & "'"
If rs2.State = 1 Then rs2.Close
Set rs2 = conn.Execute(sq)
If rs2.EOF Then
    If rsReOrder.State = 0 Then rsReOrder.Open "reorder", conn, adOpenKeyset, adLockOptimistic
    rsReOrder.AddNew
    rsReOrder!ITEMNO = item
    rsReOrder!current_stk = qty
    rsReOrder.Update
    rsReOrder.Close
    CommitDB
End If
End Sub

