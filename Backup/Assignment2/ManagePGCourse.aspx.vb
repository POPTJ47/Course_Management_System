﻿Public Class ManagePGCourse
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        AddPGMan.Insert()
        CoursemanUPDUG.Update()
        CourseUPDPG.Update()
        CStatUpDPG.Update()
        Response.Redirect("ManagePGCourse.aspx")
    End Sub

    Protected Sub homebtn44_Click(ByVal sender As Object, ByVal e As EventArgs) Handles homebtn44.Click
        Response.Redirect("HomePage.aspx")
    End Sub
End Class