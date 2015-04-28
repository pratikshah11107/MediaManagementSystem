Imports System
Imports System.Data
Imports System.Data.SqlClient

Partial Class Print
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            lblheadline.Text = "Headline : " & Session("headline").ToString()
            lblstory.Text = "Story Detail : " & Session("StoryDetail").ToString()
            lblsource.Text = "Source : " & Session("Source").ToString()
        End If
    End Sub

    Protected Sub btnback_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnback.Click
        Response.Redirect("ProofReader.aspx")
    End Sub


End Class
