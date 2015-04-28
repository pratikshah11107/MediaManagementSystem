Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class DeskIncharge
    Inherits System.Web.UI.Page
    Dim str As String
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
    Dim ds As DataSet
    Dim img1 As String = ""
    Dim img2 As String = ""
    Dim img3 As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
            lblerr.Visible = False
            lblerror.Visible = False
            trcreate.Visible = False
            BindStories()
        End If
    End Sub

    Protected Sub BindStories()
        str = "select * from StoryMaster where Status='SubmittedToDesk' or Status='RejectedByDesk' or Status='SubmittedToEditor'"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            lblerr.Visible = False
            gdvdeskstories.Visible = True
            gdvdeskstories.DataSource = ds.Tables(0)
            gdvdeskstories.DataBind()
        Else
            lblerr.Visible = True
            lblerr.Text = "No Story(s) Submitted."
            gdvdeskstories.Visible = False
        End If
    End Sub

    Protected Sub gdvdeskstories_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) Handles gdvdeskstories.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim status As Label = New Label()
            status = CType(e.Row.FindControl("lblstatus"), Label)
            If status.Text = "SubmittedToDesk" Then
                Dim btnedit As Button = New Button()
                btnedit = CType(e.Row.FindControl("btnedit"), Button)

                Dim btnview As Button = New Button()
                btnview = CType(e.Row.FindControl("btnview"), Button)

                btnedit.Enabled = True
                btnview.Enabled = True
            Else
                Dim btnedit As Button = New Button()
                btnedit = CType(e.Row.FindControl("btnedit"), Button)

                Dim btnview As Button = New Button()
                btnview = CType(e.Row.FindControl("btnview"), Button)

                btnedit.Enabled = False
                btnview.Enabled = False
            End If
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
                trcreate.Visible = True
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
        If (fu1.HasFile) Then
            Dim filename As String = System.IO.Path.GetExtension(fu1.FileName)
            filename = filename.ToUpper()
            If filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu1.FileName
                fu1.SaveAs(Server.MapPath(".") & location)
                img1 = fu1.FileName
            End If
        End If

        If fu2.HasFile Then
            Dim filename As String = System.IO.Path.GetExtension(fu2.FileName)
            filename = filename.ToUpper()
            If filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu2.FileName
                fu2.SaveAs(Server.MapPath(".") & location)
                img2 = fu2.FileName
            End If
        End If

        If fu3.HasFile Then
            Dim filename As String = System.IO.Path.GetExtension(fu3.FileName)
            filename = filename.ToUpper()
            If filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu3.FileName
                fu3.SaveAs(Server.MapPath(".") & location)
                img3 = fu3.FileName
            End If
        End If

        If txtstory.Text <> "" Then
            str = "update StoryMaster set Headline='" & txtheadline.Text & "',StoryDetail='" & txtstory.Text & "',Source='" & txtsource.Text & "',AssignTo='Editor',Status='SubmittedToEditor'" & " where StoryId=" & ViewState("Sid")
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()

            str = "select count(*) from AlbumMaster where StoryId=" & ViewState("Sid").ToString()
            cmd = New SqlCommand(str, cn)
            Dim cnt As Integer = cmd.ExecuteScalar()
            If cnt = 0 Then
                str = "insert into AlbumMaster values(" & ViewState("Sid") & ",'" & img1.ToString() & "','" & img2.ToString() & "','" & img3.ToString() & "')"
            Else
                str = "update AlbumMaster set Image1='" & img1.ToString() & "',Image2='" & img2.ToString() & "',Image3='" & img3.ToString() & "' where StoryId=" & ViewState("Sid")
            End If
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()

            txtheadline.Text = ""
            txtsource.Text = ""
            txtstory.Text = ""
            trcreate.Visible = False
            BindStories()
        Else
            lblerror.Visible = True
            lblerror.Text = "Story Detail cannot be Blank."
        End If
    End Sub

    Protected Sub btnreject_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnreject.Click
        str = "update StoryMaster set Headline='" & txtheadline.Text & "',StoryDetail='" & txtstory.Text & "',Source='" & txtsource.Text & "',Status='RejectedByDesk'" & " where StoryId=" & ViewState("Sid")
        cmd = New SqlCommand(str, cn)
        cmd.ExecuteNonQuery()
        trcreate.Visible = False
        BindStories()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancel.Click
        trcreate.Visible = False
        txtheadline.Text = ""
        txtstory.Text = ""
        txtsource.Text = ""
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub lbtnmanageclient_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnmanageclient.Click
        Response.Redirect("clientmaster.aspx")
    End Sub

    Protected Sub lbtnmanageadv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnmanageadv.Click
        Response.Redirect("advmaster.aspx")
    End Sub
End Class
