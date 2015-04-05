<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
     
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' '' '' '' Code that runs when an unhandled error occurs
        ' '' '' '' excpt is the exception thrown
        ' '' '' '' The exception that really happened is retrieved through the GetBaseException() method
        ' '' '' ''/ because the exception returned by the GetLastError() is a HttpException
        ' '' '' ''  dim excpt as Exception = Server.GetLastError().GetBaseException()
        Dim handler As New XC.Web.ErrorHandler(Nothing)

        ' '' '' if you wish you can change the settings by now
        ' '' '' handler.EmailSettings.To = "me@domain.com";
        'Dim sessionlist(1) As Object
        'sessionlist(0) = Nothing
        'Try
        '    If Not IsNothing(Session("ShoppingCart")) Then
        '        sessionlist(1) = Session("ShoppingCart")
        '    End If
        'Catch ex As Exception

        'End Try
     
        
        handler.HandleException()
        Response.Redirect("~/error.aspx")
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
       
        Dim cookie As String = Request.Headers("Cookie")
        ' Code that runs when a new session is started
        If (cookie IsNot Nothing) AndAlso (cookie.IndexOf("ASP.NET_SessionId") >= 0) Then
            '&& !Request.QueryString["timeout"].ToString().Equals("yes"))  
            If Request.QueryString("timeout") Is Nothing OrElse Not Request.QueryString("timeout").ToString().Equals("yes") Then
                Response.Redirect("~/TimeOut.aspx")
            End If
        End If
        
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
        
        
    End Sub
    Sub Application_Init(ByVal Sender As Object, ByVal e As EventArgs)
      
    End Sub
    Sub Application_Dispose(ByVal Sender As Object, ByVal e As EventArgs)
        
    End Sub
    Sub Application_EndRequest(ByVal sender As Object, ByVal e As EventArgs)

        'Send compatibility header if IE 10 is used
        'If Request.RawUrl.ToLower().Contains(".aspx") AndAlso Request.Browser.MajorVersion = 10 Then
        'Response.AddHeader("X-UA-Compatible", "IE=8")
        '    End If
    End Sub
    '    public void Application_EndRequest(object sender, EventArgs e)
    '{
    '	//Send compatibility header if IE 10 is used
    '	if (Request.RawUrl.ToLower().Contains(".aspx") && Request.Browser.MajorVersion == 10) {
    '		Response.AddHeader("X-UA-Compatible", "IE=EmulateIE9");
    '	}
    '}
</script>