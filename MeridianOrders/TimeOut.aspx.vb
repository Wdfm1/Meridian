﻿
Partial Class TimeOut
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As System.EventArgs) Handles LinkButton1.Click
        Session.Clear()
    End Sub
End Class
