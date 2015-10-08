Public Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CoursesBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CoursesBtn.Click
        Response.Redirect("CourseView.aspx")
    End Sub

    Protected Sub UnitsBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles UnitsBtn.Click
        Response.Redirect("UnitView.aspx")
    End Sub

    Protected Sub CMBTN_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CMBTN.Click
        Response.Redirect("manageC.aspx")
    End Sub

    Protected Sub CRepBtn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CRepBtn.Click
        Response.Redirect("CourseReports.aspx")
    End Sub
End Class