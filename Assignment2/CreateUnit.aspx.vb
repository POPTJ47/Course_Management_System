Public Class CreateUnit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        AddUnit.Insert()
        Response.Redirect("CreateUnit.aspx")
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button9.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class