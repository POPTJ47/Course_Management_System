Public Class CreateCourse
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CTypeDD_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CTypeDD.SelectedIndexChanged
        CCP.Text = Split(CTypeDD.SelectedValue, "^")(1)
        DropDownList2.SelectedValue = Split(CTypeDD.SelectedValue, "^")(0)
    End Sub

    Protected Sub Btn_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Btn.Click
        AddCourse.Insert()
        Response.Redirect("CreateCourse.aspx")
    End Sub

    Protected Sub Btn6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Btn6.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class