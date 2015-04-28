Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class clientmaster
    Inherits System.Web.UI.Page
    Dim str As String
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
    Dim gen As String
    Protected Sub btncreate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncreate.Click
        If btncreate.Text = "create" Then
            str = "insert into clientmaster values(" & txt_code.Text & ",'" & txtname.Text & "','" & txt_addr.Text & "','" & rbtnlgen.SelectedItem.Text & "','" & txtemail.Text & "','" & txtmobile.Text & "')"
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerr.Text = "Client Successfully Created."
            BindUser()
        Else
            str = "update clientmaster set nm='" & txtname.Text & "',addr='" & txt_addr.Text & "',gender='" & rbtnlgen.SelectedItem.Text & "',email='" & txtemail.Text & "',phno='" & txtmobile.Text & "' where clientcode='" & txt_code.Text & "'"
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerr.Text = "Client Successfully Updated"
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
            txtname.Focus()
            'btncreate.Text = "Add"
            trcreate.Visible = False
            lblerr.Visible = False
            lblerror.Visible = False
            BindUser()
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
            str = "select max(clientcode) from clientmaster"
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If IsDBNull(ds.Tables(0).Rows(0).Item(0)) Then
                txt_code.Text = "1001"
            ElseIf ds.Tables(0).Rows.Count = 0 Then
                txt_code.Text = "1001"
            Else
                txt_code.Text = Val(ds.Tables(0).Rows(0).Item(0)) + 1
            End If
            txt_code.ReadOnly = True
        End If
    End Sub
    Protected Sub BindUser()
        str = "select * from clientmaster"
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
            lblerror.Text = "No clinet(s) Created."
            gdvusers.Visible = False
            trcreate.Visible = True
        End If
    End Sub

    

    Protected Sub ControlTF(ByVal TF As Boolean)
        lblerr.Text = ""
        txtname.Text = ""
        txtmobile.Text = ""
        txtemail.Text = ""
        txt_addr.Text = ""
        '  txtname.Focus()
    End Sub
    Protected Sub gdvusers_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles gdvusers.RowCommand

        If e.CommandName = "Edi" Then
            Dim uid As Integer = e.CommandArgument
            ViewState("UserId") = uid
            str = "select * from clientmaster where clientcode =" & uid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                btncreate.Text = "Update"
                trcreate.Visible = True

                txt_code.Text = ds.Tables(0).Rows(0)("clientcode").ToString()
                txtname.Text = ds.Tables(0).Rows(0)("nm").ToString()
                txt_addr.Text = ds.Tables(0).Rows(0)("addr").ToString()
                rbtnlgen.Items.FindByText(ds.Tables(0).Rows(0)("gender").ToString().Trim()).Selected = True
                txtemail.Text = ds.Tables(0).Rows(0)("email").ToString().Trim()
                txtmobile.Text = ds.Tables(0).Rows(0)("phno").ToString()


            End If
        End If

        If e.CommandName = "Del" Then
            Dim uid As Integer = e.CommandArgument
            str = "delete from clientmaster where cliencode=" & uid
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerror.Visible = True
            lblerror.Text = "Client Successfully Deleted."
            BindUser()
        End If

    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnlogout.Click
        Response.Redirect("DeskIncharge.aspx")
    End Sub

    Protected Sub btncreateuser_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncreateuser.Click

        str = "select max(clientcode) from clientmaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If IsDBNull(ds.Tables(0).Rows(0).Item(0)) Then
            txt_code.Text = "1001"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            txt_code.Text = "1001"
        Else
            txt_code.Text = Val(ds.Tables(0).Rows(0).Item(0)) + 1
        End If
        txt_code.ReadOnly = True

        btncreate.Text = "create"

        trcreate.Visible = True
        ControlTF(False)
    End Sub

    Protected Sub gdvusers_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles gdvusers.SelectedIndexChanged

    End Sub
End Class
