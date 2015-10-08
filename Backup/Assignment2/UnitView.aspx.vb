Public Class UnitView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Btn7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Btn7.Click
        Response.Redirect("CreateUnit.aspx")
    End Sub

    Protected Sub backBtn2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles backBtn2.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class