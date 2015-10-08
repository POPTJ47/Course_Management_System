Public Class ManageUGCourse
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        AddUGMan.Insert()
        CoursemanUPD.Update()
        CStatUPD.Update()
        CourseUPD.Update()
        Response.Redirect("ManageUGCourse.aspx")
    End Sub

    Protected Sub homebtn88_Click(ByVal sender As Object, ByVal e As EventArgs) Handles homebtn88.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class