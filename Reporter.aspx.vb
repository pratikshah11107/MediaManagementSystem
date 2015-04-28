Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class Reporter
    Inherits System.Web.UI.Page

    Dim str As String
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dr As SqlDataReader
    Dim ds As DataSet
    Dim img1 As String = ""
    Dim img2 As String = ""
    Dim img3 As String = ""
    Dim vs As String = ""

    Protected Sub page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblerror.Visible = False
            lblerr.Visible = False
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
            ViewState("Sid") = vs
            BindStories()
        End If
    End Sub

    Protected Sub BindStories()
        str = "select * from StoryMaster where Author='" & Session("USERNAME").ToString() & "'"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            lblerr.Visible = False
            gdvstories.Visible = True
            gdvstories.DataSource = ds.Tables(0)
            gdvstories.DataBind()
        Else
            lblerr.Visible = True
            lblerr.Text = "No Story(s) Created."
            gdvstories.Visible = False
            trcreate.Visible = True
        End If
    End Sub

    Protected Sub gdvstories_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs) Handles gdvstories.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim status As Label = New Label()
            status = CType(e.Row.FindControl("lblstatus"), Label)
            If status.Text = "Draft" Then
                Dim btnedit As Button = New Button()
                btnedit = CType(e.Row.FindControl("btnedit"), Button)

                Dim btndel As Button = New Button()
                btndel = CType(e.Row.FindControl("btndel"), Button)

                Dim btnview As Button = New Button()
                btnview = CType(e.Row.FindControl("btnview"), Button)

                btnedit.Enabled = True
                btndel.Enabled = True
                btnview.Enabled = True
            Else
                Dim btnedit As Button = New Button()
                btnedit = CType(e.Row.FindControl("btnedit"), Button)

                Dim btndel As Button = New Button()
                btndel = CType(e.Row.FindControl("btndel"), Button)

                Dim btnview As Button = New Button()
                btnview = CType(e.Row.FindControl("btnview"), Button)

                btnedit.Enabled = False
                btndel.Enabled = False
                btnview.Enabled = False
            End If
        End If
    End Sub

    Protected Sub gdvstories_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles gdvstories.RowCommand

        If e.CommandName = "Edi" Then
            Dim sid As Integer = e.CommandArgument
            ViewState("Sid") = sid
            str = "select * from StoryMaster where StoryId=" & sid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                txtheadline.Text = ds.Tables(0).Rows(0)("HeadLine").ToString()
                txtstory.Text = ds.Tables(0).Rows(0)("StoryDetail").ToString()
                txtsource.Text = ds.Tables(0).Rows(0)("Source").ToString()
            End If
        End If

        If e.CommandName = "Del" Then
            Dim sid As Integer = e.CommandArgument
            str = "delete from StoryMaster where Status='Draft' and StoryId=" & sid
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            BindStories()
        End If

        If e.CommandName = "View" Then
            Dim sid As Integer = e.CommandArgument
            System.Threading.Thread.Sleep(2000)
            mperview.Hide()
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

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnsave.Click
        If (fu1.HasFile) Then
            Dim filename As String = System.IO.Path.GetExtension(fu1.FileName)
            filename = filename.ToUpper()
            If filename = ".jpg" Or filename = ".png" Or filename = ".gif" Or filename = ".jpeg" Or filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu1.FileName
                fu1.SaveAs(Server.MapPath(".") & location)
                img1 = fu1.FileName
            End If
        End If

        If fu2.HasFile Then
            Dim filename As String = System.IO.Path.GetExtension(fu2.FileName)
            filename = filename.ToUpper()
            If filename = ".jpg" Or filename = ".png" Or filename = ".gif" Or filename = ".jpeg" Or filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu2.FileName
                fu2.SaveAs(Server.MapPath(".") & location)
                img2 = fu2.FileName
            End If
        End If

        If fu3.HasFile Then
            Dim filename As String = System.IO.Path.GetExtension(fu3.FileName)
            filename = filename.ToUpper()
            If filename = ".jpg" Or filename = ".png" Or filename = ".gif" Or filename = ".jpeg" Or filename = ".JPG" Or filename = ".PNG" Or filename = ".GIF" Or filename = ".JPEG" Then
                Dim location As String = "/Images/" & fu3.FileName
                fu3.SaveAs(Server.MapPath(".") & location)
                img3 = fu3.FileName
            End If
        End If

        If txtstory.Text <> "" Then
            If ViewState("Sid").ToString() = "" Then
                lblerror.Visible = False
                Dim m As String = Date.Today.Month
                str = "select SerialNo from SerialNos"
                cmd = New SqlCommand(str, cn)
                Dim sid As String = cmd.ExecuteScalar()
                Dim Assign As String = "A" + m + sid
                Dim s As Integer = CType(sid, Integer) + 1
                str = "Update SerialNos set SerialNo=" & s
                cmd = New SqlCommand(str, cn)
                cmd.ExecuteNonQuery()
                str = "insert into StoryMaster(AssignmentId,Headline,StoryDetail,Source,Author,Status,CreatedDateTime)values('" & Assign & "','" & txtheadline.Text & "','" & txtstory.Text & "','" & txtsource.Text & "','" & Session("USERNAME").ToString() & "','Draft','" & Date.Today.Date & "')"
            Else
                str = "update StoryMaster set Headline='" & txtheadline.Text & "',StoryDetail='" & txtstory.Text & "',Source='" & txtsource.Text & "' where StoryId=" & ViewState("Sid")
            End If
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()

            str = "select max(StoryId) from StoryMaster"
            cmd = New SqlCommand(str, cn)
            Dim story As Integer = cmd.ExecuteScalar()

            str = "select count(*) from AlbumMaster where StoryId=" & story
            cmd = New SqlCommand(str, cn)
            Dim cnt As Integer = cmd.ExecuteScalar()
            If cnt = 0 Then
                str = "insert into AlbumMaster values(" & story & ",'" & img1.ToString() & "','" & img2.ToString() & "','" & img3.ToString() & "')"
            Else
                str = "update AlbumMaster set Image1='" & img1.ToString() & "',Image2='" & img2.ToString() & "',Image3='" & img3.ToString() & "' where StoryId=" & story
            End If
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            txtheadline.Text = ""
            txtsource.Text = ""
            txtstory.Text = ""
            BindStories()
        Else
            lblerror.Visible = True
            lblerror.Text = "Story Detail cannot be Blank."
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
            If ViewState("Sid").ToString() = "" Then
                Dim m As String = Date.Today.Month
                str = "select SerialNo from SerialNos"
                cmd = New SqlCommand(str, cn)
                Dim sid As String = cmd.ExecuteScalar()
                Dim Assign As String = "A" + m + sid
                Dim s As Integer = CType(sid, Integer) + 1
                str = "Update SerialNos set SerialNo=" & s
                cmd = New SqlCommand(str, cn)
                cmd.ExecuteNonQuery()
                str = "insert into StoryMaster(AssignmentId,Headline,StoryDetail,Source,Author,AssignTo,Status,CreatedDateTime)values('" & Assign & "','" & txtheadline.Text & "','" & txtstory.Text & "','" & txtsource.Text & "','" & Session("USERNAME").ToString() & "','Desk Incharge','SubmittedToDesk','" & Date.Today.Date & "')"
            Else
                str = "update StoryMaster set Headline='" & txtheadline.Text & "',StoryDetail='" & txtstory.Text & "',Source='" & txtsource.Text & "',AssignTo='Desk Incharge',Status='SubmittedToDesk'" & " where StoryId=" & ViewState("Sid")
            End If
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()

            str = "select max(StoryId) from StoryMaster"
            cmd = New SqlCommand(str, cn)
            Dim story As Integer = cmd.ExecuteScalar()

            str = "select count(*) from AlbumMaster where StoryId=" & story
            cmd = New SqlCommand(str, cn)
            Dim cnt As Integer = cmd.ExecuteScalar()
            If cnt = 0 Then
                str = "insert into AlbumMaster values(" & story & ",'" & img1.ToString() & "','" & img2.ToString() & "','" & img3.ToString() & "')"
            Else
                str = "update AlbumMaster set Image1='" & img1.ToString() & "',Image2='" & img2.ToString() & "',Image3='" & img3.ToString() & "' where StoryId=" & story
            End If
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()

            txtheadline.Text = ""
            txtsource.Text = ""
            txtstory.Text = ""
            BindStories()
        Else
            lblerror.Visible = True
            lblerror.Text = "Story Detail cannot be Blank."
        End If
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub txtheadline_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtheadline.TextChanged

    End Sub
End Class
