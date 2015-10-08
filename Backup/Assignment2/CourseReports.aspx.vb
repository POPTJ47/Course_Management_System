Public Class CourseReports
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        GridView1.Visible = True
        GridView2.Visible = True
        GridView3.Visible = False
        GridView4.Visible = False
        GridView5.Visible = False
        GridView6.Visible = False
        GridView7.Visible = False
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = True
        GridView4.Visible = True
        GridView5.Visible = False
        GridView6.Visible = False
        GridView7.Visible = False
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = False
        GridView4.Visible = False
        GridView5.Visible = True
        GridView6.Visible = True
        GridView7.Visible = False
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = False
        GridView4.Visible = False
        GridView5.Visible = False
        GridView6.Visible = False
        GridView7.Visible = True
    End Sub

    Protected Sub homeBtn22_Click(ByVal sender As Object, ByVal e As EventArgs) Handles homeBtn22.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class