Public Class manageC
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub HomeBTN14_Click(ByVal sender As Object, ByVal e As EventArgs) Handles HomeBTN14.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    Protected Sub PG_Click(ByVal sender As Object, ByVal e As EventArgs) Handles PG.Click
        Response.Redirect("ManagePGCourse.aspx")
    End Sub

    Protected Sub UG_Click(ByVal sender As Object, ByVal e As EventArgs) Handles UG.Click
        Response.Redirect("ManageUGCourse.aspx")
    End Sub
End Class