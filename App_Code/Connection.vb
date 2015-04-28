Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Data.SqlClient

Public Module Connection
    Public cn As SqlConnection

    Public Sub GetConnection()
        cn = New SqlConnection()
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\MediaManagementSystem.MDF;Integrated Security=True;User Instance=True"
        If cn.State = Data.ConnectionState.Closed Then
            cn.Open()
        End If
    End Sub
End Module
