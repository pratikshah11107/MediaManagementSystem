Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class AdminUser
    Inherits System.Web.UI.Page

    Dim str As String
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader
    Dim gen As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            tdcurrent.BgColor = "White"
            tdreport.BgColor = "White"
            tduser.BgColor = "Gray"
            lbtnuser.ForeColor = Drawing.Color.White
            lbtncurrent.ForeColor = Drawing.Color.Black
            lbtnreport.ForeColor = Drawing.Color.Black
            GetConnection()
            txtname.Focus()
            btncreate.Text = "Add"
            trcreate.Visible = False
            lblerr.Visible = False
            lblerror.Visible = False
            BindUser()
            BindUserType()
            lblwel.Text = "Welcome, " & Session("USERNAME").ToString()
        End If
    End Sub

    Protected Sub BindUser()
        str = "select * from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId"
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
            lblerror.Text = "No User(s) Created."
            gdvusers.Visible = False
            trcreate.Visible = True
        End If
    End Sub

    Protected Sub BindUserType()
        str = "select * from UserTypeMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            ddltype.DataSource = ds.Tables(0)
            ddltype.DataTextField = "UserTypeName"
            ddltype.DataValueField = "UserTypeId"
            ddltype.DataBind()
            ddltype.Items.Insert(0, "Select")
        End If
    End Sub

    Protected Sub ControlTF(ByVal TF As Boolean)
        lblerr.Text = ""
        txtname.Text = ""
        txtbirthdate.Text = ""
        txtmobile.Text = ""
        txtemail.Text = ""
        txtusername.Text = ""
        txtpassword.Text = ""
        txtcpassword.Text = ""
        ddltype.SelectedIndex = -1
        txtusername.ReadOnly = TF
    End Sub

    Protected Function CheckUserName() As Integer
        str = "select count(*) from UserMaster where UserName='" & txtusername.Text & "'"
        cmd = New SqlCommand(str, cn)
        Dim cnt As Integer = cmd.ExecuteScalar()
        Return cnt
    End Function

    Protected Function CheckUserNameUpdate(ByVal uid As Integer) As Integer
        str = "select count(*) from UserMaster where UserName='" & txtusername.Text & "' and UserId!=" & uid
        cmd = New SqlCommand(str, cn)
        Dim cnt As Integer = cmd.ExecuteScalar()
        Return cnt
    End Function

    Protected Sub txtusername_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txtusername.TextChanged
        Dim cnt As Integer = CheckUserName()
        If cnt = 0 Then
            txtpassword.Focus()
            lblerr.Visible = False
        Else
            lblerr.Visible = True
            lblerr.Text = "UserName already Exists."
            txtusername.Focus()
        End If
    End Sub

    Protected Sub gdvusers_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs) Handles gdvusers.RowCommand

        If e.CommandName = "Edi" Then
            Dim uid As Integer = e.CommandArgument
            ViewState("UserId") = uid
            str = "select * from UserMaster U,UserTypeMaster UT where U.UserTypeId=UT.UserTypeId and U.UserId=" & uid
            da = New SqlDataAdapter(str, cn)
            ds = New DataSet()
            da.Fill(ds)
            If ds.Tables(0).Rows.Count > 0 Then
                btncreate.Text = "Update"
                trcreate.Visible = True
                txtusername.ReadOnly = True
                txtname.Text = ds.Tables(0).Rows(0)("FullName").ToString()
                txtbirthdate.Text = ds.Tables(0).Rows(0)("DateOfBirth").ToString().Substring(0, 10)
                rbtnlgen.Items.FindByText(ds.Tables(0).Rows(0)("Gender").ToString()).Selected = True
                txtmobile.Text = ds.Tables(0).Rows(0)("Mobile").ToString()
                txtemail.Text = ds.Tables(0).Rows(0)("EmailId").ToString()
                txtusername.Text = ds.Tables(0).Rows(0)("UserName").ToString()
                txtpassword.Text = ds.Tables(0).Rows(0)("Password").ToString()
            End If
        End If

        If e.CommandName = "Del" Then
            Dim uid As Integer = e.CommandArgument
            str = "delete from UserMaster where UserId=" & uid
            cmd = New SqlCommand(str, cn)
            cmd.ExecuteNonQuery()
            lblerror.Visible = True
            lblerror.Text = "User Successfully Deleted."
            BindUser()
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

    Protected Sub btncreateuser_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncreateuser.Click
        btncreate.Text = "Add"
        trcreate.Visible = True
        ControlTF(False)
    End Sub

    Protected Sub btncreate_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncreate.Click
        If btncreate.Text = "Add" Then
            Dim cnt As Integer
            cnt = CheckUserName()
            If cnt = 0 Then
                lblerr.Visible = False
                str = "insert into UserMaster(FullName,DateOfBirth,Gender,Mobile,EmailId,UserName,Password,UserTypeId) values('" & txtname.Text & "','" & txtbirthdate.Text & "','" & rbtnlgen.SelectedItem.Text & "','" & txtmobile.Text & "','" & txtemail.Text & "','" & txtusername.Text & "','" & txtpassword.Text & "'," & ddltype.SelectedItem.Value & ")"
                cmd = New SqlCommand(str, cn)
                cmd.ExecuteNonQuery()
                ControlTF(False)
                lblerr.Visible = True
                lblerr.Text = "User Successfully Inserted."
                BindUser()
            Else
                lblerr.Visible = True
                lblerr.Text = "UserName already Exists."
                txtusername.Focus()
            End If
        Else
            Dim cnt As Integer
            cnt = CheckUserNameUpdate(ViewState("UserId"))
            If cnt = 0 Then
                lblerr.Visible = False
                str = "update UserMaster set FullName='" & txtname.Text & "',DateOfBirth='" & txtbirthdate.Text & "',Gender='" & rbtnlgen.SelectedItem.Text & "',Mobile='" & txtmobile.Text & "',EmailId='" & txtemail.Text & "',Password='" & txtpassword.Text & "',UserTypeId=" & ddltype.SelectedItem.Value & " where UserName='" & txtusername.Text & "' and UserId=" & ViewState("UserId")
                cmd = New SqlCommand(str, cn)
                cmd.ExecuteNonQuery()
                trcreate.Visible = False
                BindUser()
            Else
                lblerr.Visible = True
                lblerr.Text = "UserName already Exists."
                txtusername.Focus()
            End If
        End If
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancel.Click
        trcreate.Visible = False
    End Sub

    Protected Sub lbtnlogout_Click(ByVal sender As Object, ByVal e As EventArgs) Handles lbtnlogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub

End Class

