Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class advmaster
    Inherits System.Web.UI.Page
    Dim str As String
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
    Dim gen As String
    Protected Sub btncreate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncreate.Click
        If btncreate.Text = "create" Then
            If Val(txt_height.Text) <= 50 And Val(txt_width.Text) <= 33 Then
                str = "insert into advmaster values(" & txt_sapno.Text & "," & dd_clientcode.Text & ",'" & txt_agency.Text & "','" & txt_place.Text & "','" & txt_height.Text & "X" & txt_width.Text & "Sqcm" & "','" & rbtnhues.SelectedItem.Text & "','" & txt_position.Text & "','" & txt_date.Text & "','" & txt_remarks.Text & "','" & rbtnstatus.SelectedItem.Text & "')"
                cmd = New SqlCommand(str, cn)
                cmd.ExecuteNonQuery()
                lblerr.Text = "Adv Successfully Created."
                BindUser()
            Else
                lblerr.Text = "Height and Width Exceeded from paper width"
            End If

        Else
            str = "update advmaster set clientcode=" & dd_clientcode.Text & ",agency='" & txt_agency.Text.Trim() & "',place='" & txt_place.Text.Trim() & "',size='" & txt_height.Text.Trim() & "X" & txt_width.Text.Trim() & "Sqcm" & "',hues='" & rbtnhues.SelectedItem.Text.Trim() & "',position='" & txt_position.Text.Trim() & "',dtofinsertion='" & txt_date.Text.Trim() & "',remarks='" & txt_remarks.Text.Trim() & "',addstatus='" & rbtnstatus.SelectedItem.Text.Trim() & "' where sapno=" & txt_sapno.Text
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerr.Text = "Adv Successfully Updated"
            BindUser()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            tdcurrent.BgColor = "White"
            tdreport.BgColor = "White"
            tduser.BgColor = "Gray"
            lbtnuser.ForeColor = Drawing.Color.White
            lbtncurrent.ForeColor = Drawing.Color.Black
            lbtnreport.ForeColor = Drawing.Color.Black
            GetConnection()
            '  txt_sapno.Focus()
            btncreate.Text = "create"
            trcreate.Visible = False
            lblerr.Visible = False
            lblerror.Visible = False
            BindUser()
            Bindclients()
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
            str = "select max(sapno) from advmaster"
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If IsDBNull(ds.Tables(0).Rows(0).Item(0)) Then
                txt_sapno.Text = "1001"
            ElseIf ds.Tables(0).Rows.Count = 0 Then
                txt_sapno.Text = "1001"
            Else
                txt_sapno.Text = Val(ds.Tables(0).Rows(0).Item(0)) + 1
            End If
            txt_sapno.ReadOnly = True
        End If
    End Sub
    Protected Sub BindUser()
        str = "select * from  advmaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            lblerror.Visible = False
            gdvusers.Visible = True
            gdvusers.DataSource = ds.Tables(0)
            gdvusers.DataBind()
        Else
            lblerror.Visible = True
            lblerror.Text = "No Adv(s) Created."
            gdvusers.Visible = False
            trcreate.Visible = True
        End If
    End Sub
    Protected Sub Bindclients()
        str = "select clientcode from clientmaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        Dim i As Integer
        For i = 0 To ds.Tables(0).Rows.Count - 1
            dd_clientcode.Items.Add(ds.Tables(0).Rows(i).Item(0))
        Next
        'If ds.Tables(0).Rows.Count > 0 Then
        'lblerror.Visible = False
        ' dd_clientcode.DataSource = ds.Tables(0)
        ' dd_clientcode.DataBind()
        'End If
    End Sub

    Protected Sub dd_clientcode_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dd_clientcode.SelectedIndexChanged
        str = "select nm from clientmaster where clientcode=" & dd_clientcode.Text
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        lbl_clientnm.Text = ds.Tables(0).Rows(0).Item(0)
    End Sub
    Protected Sub ControlTF(ByVal TF As Boolean)
        'lblerr.Text = ""
        txt_agency.Text = ""
        txt_date.Text = ""
        txt_height.Text = ""
        txt_place.Text = ""
        txt_position.Text = ""
        txt_remarks.Text = ""
        txt_width.Text = ""
    End Sub
    Protected Sub gdvusers_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles gdvusers.RowCommand

        If e.CommandName = "Edi" Then
            Dim uid As Integer = e.CommandArgument
            ViewState("UserId") = uid
            str = "select * from advmaster where sapno=" & uid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
               
                If Not ds.Tables(0).Rows(0)("addstatus").ToString().Trim() = "ok" Then
                    btncreate.Text = "Update"
                    trcreate.Visible = True
                    Dim sz() As String
                    txt_sapno.Text = ds.Tables(0).Rows(0)("sapno").ToString()
                    dd_clientcode.Text = ds.Tables(0).Rows(0)("clientcode").ToString()
                    txt_agency.Text = ds.Tables(0).Rows(0)("agency").ToString()
                    txt_place.Text = ds.Tables(0).Rows(0)("place").ToString()
                    sz = ds.Tables(0).Rows(0)("size").ToString().Split("X")
                    txt_height.Text = sz(0)
                    txt_width.Text = sz(1)
                    rbtnhues.Items.FindByText(ds.Tables(0).Rows(0)("hues").ToString().Trim()).Selected = True
                    txt_position.Text = ds.Tables(0).Rows(0)("position").ToString()
                    txt_date.Text = ds.Tables(0).Rows(0)("dtofinsertion").ToString()
                    txt_remarks.Text = ds.Tables(0).Rows(0)("Remarks").ToString()
                    rbtnstatus.Items.FindByText(ds.Tables(0).Rows(0)("addstatus").ToString().Trim()).Selected = True
                End If
                
            End If
        End If

        If e.CommandName = "Del" Then
            Dim uid As Integer = e.CommandArgument
            str = "delete from advmaster where sapno=" & uid
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerror.Visible = True
            lblerror.Text = "Adv Successfully Deleted."
            BindUser()
        End If

    End Sub

    Protected Sub btncreateuser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncreateuser.Click

        str = "select max(sapno) from advmaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If IsDBNull(ds.Tables(0).Rows(0).Item(0)) Then
            txt_sapno.Text = "1001"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            txt_sapno.Text = "1001"
        Else
            txt_sapno.Text = Val(ds.Tables(0).Rows(0).Item(0)) + 1
        End If
        txt_sapno.ReadOnly = True

        btncreate.Text = "create"

        trcreate.Visible = True
        ControlTF(False)
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnlogout.Click
        Response.Redirect("DeskIncharge.aspx")
    End Sub
End Class
