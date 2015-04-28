Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class ProofReader
    Inherits System.Web.UI.Page
    Dim str As String
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
    Dim ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
            lblerror.Visible = False
            tredit.Visible = False
            BindStories()
        End If
    End Sub

    Protected Sub BindStories()
        str = "select * from StoryMaster where Status='SubmittedToReader' or Status='Posted'"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            gdvdeskstories.Visible = True
            gdvdeskstories.DataSource = ds.Tables(0)
            gdvdeskstories.DataBind()
        Else
            gdvdeskstories.Visible = False
        End If
    End Sub

    Protected Sub gdvdeskstories_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles gdvdeskstories.RowCommand

        If e.CommandName = "Edi" Then
            Dim sid As Integer = e.CommandArgument
            ViewState("Sid") = sid
            str = "select * from StoryMaster where StoryId=" & sid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                tredit.Visible = True
                txtheadline.Text = ds.Tables(0).Rows(0)("HeadLine").ToString()
                txtstory.Text = ds.Tables(0).Rows(0)("StoryDetail").ToString()
                txtsource.Text = ds.Tables(0).Rows(0)("Source").ToString()
            End If
        End If

        If e.CommandName = "View" Then
            Dim sid As Integer = e.CommandArgument
            System.Threading.Thread.Sleep(2000)
            mpedview.Hide()
            str = "select * from AlbumMaster where StoryId=" & sid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                imgshow1.ImageUrl = "~/Images/" & ds.Tables(0).Rows(0)("Image1").ToString()
                imgshow2.ImageUrl = "~/Images/" & ds.Tables(0).Rows(0)("Image2").ToString()
                imgshow3.ImageUrl = "~/Images/" & ds.Tables(0).Rows(0)("Image3").ToString()
            End If
            mpeview.Show()
        End If
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsubmit.Click
        If txtstory.Text <> "" Then
            str = "update StoryMaster set Headline='" & txtheadline.Text & "',StoryDetail='" & txtstory.Text & "',Source='" & txtsource.Text & "',Status='Posted',PostedDateTime='" & Date.Today.Date & "' where StoryId=" & ViewState("Sid")
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            Session("HEADLINE") = txtheadline.Text
            Session("STORYDETAIL") = txtstory.Text
            Session("SOURCE") = txtsource.Text
            txtheadline.Text = ""
            txtsource.Text = ""
            txtstory.Text = ""
            tredit.Visible = False
            Response.Redirect("Print.aspx")
        Else
            lblerror.Visible = True
            lblerror.Text = "Story Detail cannot be Blank."
        End If
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancel.Click
        tredit.Visible = False
        txtheadline.Text = ""
        txtstory.Text = ""
        txtsource.Text = ""
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class
