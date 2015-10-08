Public Class CourseReports
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

   


    

    Protected Sub homeBtn22_Click(ByVal sender As Object, ByVal e As EventArgs) Handles homeBtn22.Click
        Response.Redirect("HomePage.aspx")
    End Sub

    

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = True
        GridView4.Visible = False
    End Sub

    
    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        GridView1.Visible = True
        GridView2.Visible = False
        GridView3.Visible = False
        GridView4.Visible = False
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        GridView1.Visible = False
        GridView2.Visible = True
        GridView3.Visible = False
        GridView4.Visible = False
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        GridView1.Visible = False
        GridView2.Visible = False
        GridView3.Visible = False
        GridView4.Visible = True
    End Sub
End Class