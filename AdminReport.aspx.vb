Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class AdminReport
    Inherits System.Web.UI.Page

    Dim str As String
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            tdcurrent.BgColor = "White"
            tdreport.BgColor = "Gray"
            tduser.BgColor = "White"
            lbtnreport.ForeColor = Drawing.Color.White
            lbtnuser.ForeColor = Drawing.Color.Black
            lbtncurrent.ForeColor = Drawing.Color.Black
            GetConnection()
            lblerror.Visible = False
        End If
    End Sub

    Public Sub ExportDataSetToExcel(ByVal ds As DataSet, ByVal filename As String)
        Dim response As HttpResponse = HttpContext.Current.Response
        response.Clear()
        response.Charset = ""
        response.Buffer = True
        Me.EnableViewState = False
        response.ContentType = "application/vnd.ms-excel"
        response.AddHeader("content-Disposition", "attachment;filename=" & filename)
        Dim sw As StringWriter = New StringWriter()
        Dim htw As HtmlTextWriter = New HtmlTextWriter(sw)

        Using (sw)
            Using (htw)
                Dim dg As DataGrid = New DataGrid()
                dg.DataSource = ds.Tables(0)
                dg.DataBind()
                dg.RenderControl(htw)
                response.Write(sw.ToString())
                response.[End]()
            End Using
        End Using
    End Sub

    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As System.Web.UI.Control)

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

    Protected Sub lbtnexcelstories_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnexcelstories.Click
        str = "select * from StoryMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        ExportDataSetToExcel(ds, "Story.xls")
    End Sub

    Protected Sub lbtnexceluser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnexceluser.Click
        str = "select * from UserMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        ExportDataSetToExcel(ds, "UserDetail.xls")
    End Sub

    Protected Sub lbtnxmlstories_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnxmlstories.Click
        str = "select * from StoryMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        ds.WriteXml("C:\Users\Nishant\Desktop\MediaManagementSystem\Story.xml")
    End Sub

    Protected Sub lbtnxmluser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnxmluser.Click
        str = "select * from UserMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        ds.WriteXml("C:\Users\Nishant\Desktop\MediaManagementSystem\UserDetail.xml")
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsearch.Click
        str = "select * from StoryMaster where HeadLine='" & txtsearch.Text & "'"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then
            lblerror.Visible = False
            gdvstories.Visible = True
            gdvstories.DataSource = ds.Tables(0)
            gdvstories.DataBind()
        Else
            gdvstories.Visible = False
            lblerror.Visible = True
            lblerror.Text = "No Result(s) Found."
        End If
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class
