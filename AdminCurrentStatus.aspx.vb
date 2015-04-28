Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class AdminCurrentUser
    Inherits System.Web.UI.Page

    Dim str As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            tdcurrent.BgColor = "Gray"
            tdreport.BgColor = "White"
            tduser.BgColor = "White"
            lbtncurrent.ForeColor = Drawing.Color.White
            lbtnuser.ForeColor = Drawing.Color.Black
            lbtnreport.ForeColor = Drawing.Color.Black
            GetConnection()
            lblreporters.Text = CountReporter()
            lbldeskinchargers.Text = CountDeskIncharge()
            lbleditors.Text = CountEditors()
            lblproofreaders.Text = CountProofReaders()
            lblposts.Text = CountLastWeekPosts()
            BindStories()
            BindUser()
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
        End If
    End Sub

    Protected Function CountReporter() As String
        str = "select count(*) from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId and UT.UserTypeName='Reporter'"
        cmd = New SqlCommand(str, cn)
        Dim count As String = cmd.ExecuteScalar()
        Return count
    End Function

    Protected Function CountDeskIncharge() As String
        str = "select count(*) from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId and UT.UserTypeName='Desk Incharge'"
        cmd = New SqlCommand(str, cn)
        Dim count As String = cmd.ExecuteScalar()
        Return count
    End Function

    Protected Function CountEditors() As String
        str = "select count(*) from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId and UT.UserTypeName='Editor'"
        cmd = New SqlCommand(str, cn)
        Dim count As String = cmd.ExecuteScalar()
        Return count
    End Function

    Protected Function CountProofReaders() As String
        str = "select count(*) from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId and UT.UserTypeName='Proof Reader'"
        cmd = New SqlCommand(str, cn)
        Dim count As String = cmd.ExecuteScalar()
        Return count
    End Function

    Protected Function CountLastWeekPosts() As String
        Dim lastdate As Date = DateAndTime.DateAdd(DateInterval.Day, -7, Date.Today.Date)
        str = "select count(*) from StoryMaster where Status='Posted' and PostedDateTime between '" & lastdate & "' and '" & Date.Today.Date & "'"
        cmd = New SqlCommand(str, cn)
        Dim count As String = cmd.ExecuteScalar()
        Return count
    End Function

    Protected Sub BindStories()
        str = "select top 10 * from StoryMaster where Status='Posted' Order By StoryId Desc"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then
            gdvstories.DataSource = ds.Tables(0)
            gdvstories.DataBind()
        End If
    End Sub

    Protected Sub BindUser()
        str = "select top 5 * from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId Order By UserId Desc"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            gdvusers.DataSource = ds.Tables(0)
            gdvusers.DataBind()
        End If
    End Sub

    Protected Sub lbtncurrent_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtncurrent.Click
        Response.Redirect("AdminCurrentStatus.aspx")
    End Sub

    Protected Sub lbtnuser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnuser.Click
        Response.Redirect("AdminUser.aspx")
    End Sub

    Protected Sub lbtnreport_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnreport.Click
        Response.Redirect("AdminReport.aspx")
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class
