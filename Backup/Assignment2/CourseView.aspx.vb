Public Class CourseView
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub backBtn1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles backBtn1.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub CUBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CUBtn.Click
        Response.Redirect("CreateCourse.aspx")
    End Sub
End Class