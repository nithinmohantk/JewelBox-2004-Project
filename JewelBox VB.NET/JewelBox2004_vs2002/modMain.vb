Module modMain

    Public RowsAffected, index As Integer
    Public numVals, numRows, x As Integer
    Public te1, te2, te3 As String
    Public strConn As String = "Provider = SQLOLEDB;data source=DREAMWORKS;initial catalog=JewelBox;persist security info=False;user id=admin;password = velocity;workstation id=DREAMWORKS;packet size=4096"
    Public repMod As Integer
    Public mytime As String
    Public loguser As String
    Public logpass As String
    Public logsuccess As Boolean
    Public sql As String
    Public adapt As New SqlClient.SqlDataAdapter()
    Public conn As New SqlClient.SqlConnection()
    Public comm As New SqlClient.SqlCommand()
    Public rslogin As New Data.DataSet()
    Public connString As String
    
    Public Sub ConnectDB()
        connString = "initial catalog=JewelBox;password=delta123;persist security info=True;user id=sa;workstation id=GOLDENTIGER;packet size=4096"
        conn = New SqlClient.SqlConnection(connString)
        comm = New SqlClient.SqlCommand(connString, conn)
        comm.CommandType = CommandType.Text
        Try
            conn.Open()
            Debug.WriteLine("Connection Success")
        Catch SqlExcep As SqlClient.SqlException
            Debug.WriteLine(SqlExcep.Message)
        End Try
    End Sub
    Public Sub commitDB()
        conn.Close()
        conn.Dispose()
        conn = Nothing
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
