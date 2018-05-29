Module modMain
    Public colVal() As Object
    Public numVals, x As Integer
    Public strConn As String = "Provider = SQLOLEDB;data source=GOLDENTIGER;initial catalog=JewelBox;persist security info=False;user id=sa;password = delta123;workstation id=GOLDENTIGER;packet size=4096"
    Public repMod As Integer
    Public mytime As String
    Public loguser As String
    Public logpass As String
    Public logsuccess As Boolean
    Public sql As String
    Public conn As New ADODB.Connection()
    Public rsLogin As New ADODB.Recordset()
    Public rsBill As New ADODB.Recordset()
    Public rsRate As New ADODB.Recordset()
    Public rsSales As New ADODB.Recordset()
    Public rsPurchase As New ADODB.Recordset()
    Public rsStock As New ADODB.Recordset()
    Public rsExchange As New ADODB.Recordset()
    Public rsSalesMan As New ADODB.Recordset()
    Public rsLevel As New ADODB.Recordset()
    Public Sub ConnectDB()
        conn.Open(strConn)
        conn.BeginTrans()
        rsLogin.CursorLocation = ADODB.CursorLocationEnum.adUseClient
        rsLogin.Open("login", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsRate.Open("rate", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsSales.Open("sales", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsStock.Open("stock", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsSalesMan.Open("Salesman", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsPurchase.Open("purchase", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsExchange.Open("exchange", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsBill.Open("bill", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
        rsLevel.Open("stocklevel", conn, ADODB.CursorTypeEnum.adOpenDynamic, ADODB.LockTypeEnum.adLockOptimistic)
    End Sub
    Public Sub commitDB()
        conn.CommitTrans()
        conn.Close()
        Call ConnectDB()
    End Sub

    Public Sub closeDB()

    End Sub

    Public Sub Main()
        Dim frm As New frmSplash()
        frm.ShowDialog()
        ConnectDB()
    End Sub

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
        End While
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
        End While
        decrypt_pass = pass2
    End Function
End Module
