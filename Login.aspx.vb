Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class Login
    Inherits System.Web.UI.Page

    Dim str As String
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblerror.Visible = False
            txtusername.Focus()
            GetConnection()
            BindUserType()
        End If
    End Sub

    Protected Sub BindUserType()
        str = "select * from UserTypeMaster"
        da = New SqlDataAdapter(str, cn)
        ds = New DataSet()
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            ddlusertype.DataSource = ds.Tables(0)
            ddlusertype.DataTextField = "UserTypeName"
            ddlusertype.DataValueField = "UserTypeId"
            ddlusertype.DataBind()
            ddlusertype.Items.Insert(0, "UserType")
        End If
    End Sub

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnlogin.Click
        If txtusername.Text <> "" And txtpassword.Text <> "" Then
            If txtusername.Text = "Admin" And txtpassword.Text = "Admin" And ddlusertype.SelectedItem.Text = "Admin" Then
                Session("USERNAME") = txtusername.Text
                Response.Redirect("AdminCurrentStatus.aspx")
            Else
                If ddlusertype.SelectedItem.Text <> "UserType" Then
                    str = "select count(*) from UserMaster where UserName='" & txtusername.Text & "' and Password='" & txtpassword.Text & "' and UserTypeId=" & ddlusertype.SelectedItem.Value
                    cmd = New SqlCommand(str, cn)
                    Dim cnt As Integer = cmd.ExecuteScalar()
                    If cnt = 1 Then
                        Session("USERNAME") = txtusername.Text
                        If ddlusertype.SelectedItem.Text = "Reporter" Then
                            Response.Redirect("Reporter.aspx")
                        ElseIf ddlusertype.SelectedItem.Text = "Desk Incharge" Then
                            Response.Redirect("DeskIncharge.aspx")
                        ElseIf ddlusertype.SelectedItem.Text = "Editor" Then
                            Response.Redirect("Editor.aspx")
                        ElseIf ddlusertype.SelectedItem.Text = "Proof Reader" Then
                            Response.Redirect("ProofReader.aspx")
                        End If
                    Else
                        lblerror.Visible = True
                        lblerror.Text = "UserName or Password or UserType Mismatch."
                    End If
                Else
                    lblerror.Visible = True
                    lblerror.Text = "Select UserType."
                End If
            End If
        Else
            lblerror.Visible = True
            lblerror.Text = "UserName or Password cannot Blank."
        End If
    End Sub

    Protected Sub txtpassword_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtpassword.TextChanged

    End Sub
End Class
