Imports System.Data
Imports System.Collections.Generic
Imports System.Text
Imports System.ServiceModel
Imports System.Net
Imports UpsRates
Partial Class BillingInfo
    Inherits System.Web.UI.Page

    Protected Sub CheckBox5_CheckedChanged(sender As Object, e As System.EventArgs) Handles chk48sho.CheckedChanged
        If chk48sho.Checked = True Then
            chkdate.Checked = False
            DatePicker1.SelectedDate = Nothing
            DatePicker1.Enabled = False
        Else
            chkdate.Checked = True

            DatePicker1.Enabled = True
        End If
    End Sub

    Protected Sub CheckBox6_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkdate.CheckedChanged
        If chkdate.Checked = True Then
            DatePicker1.Enabled = True
            chk48sho.Checked = False
        Else
            DatePicker1.Enabled = False
            DatePicker1.SelectedDate = Nothing
            chk48sho.Checked = True
        End If
    End Sub

 
    Protected Sub Button1_Click(sender As Object, e As System.EventArgs) Handles Button1.Click
        Dim cart As Cart = Session("Cart")
        'Dim cart As Cart = New Cart 'for testing only
        If Not IsNothing(cart) Then
            Dim contact(21) As String
            contact(19) = txtcompany.Text.ToUpper
            contact(0) = txtfname.Text.ToUpper
            contact(1) = txtlname.Text.ToUpper
            contact(3) = txtaddr.Text.ToUpper
            contact(4) = txtaddr2.Text.ToUpper
            contact(5) = txtcity.Text.ToUpper
            contact(6) = ddlstate.Text
            contact(7) = txtzip.Text
            contact(8) = txtemail.Text
            cart.useremail = txtemail.Text
            contact(21) = txtphonenumber.Text

            contact(20) = txtscompany.Text.ToUpper
            contact(9) = txtsfname.Text.ToUpper
            contact(10) = txtslname.Text.ToUpper
            contact(11) = txtsaddr.Text.ToUpper
            contact(12) = txtsaddr2.Text.ToUpper
            contact(13) = txtscity.Text.ToUpper
            contact(14) = ddlsstate.Text
            contact(15) = txtszip.Text
            contact(16) = IIf(chkdate.Checked = True, DatePicker1.SelectedDate, Now.Date.AddDays(2))
            contact(17) = ddlsstate.SelectedValue
            contact(18) = ddlstate.SelectedValue
            cart.AddContactInfo(cart.order, contact)
            Try
                Label1.Visible = True
                Image1.Visible = True
                Dim amnt As Array = cart.GetShipping(contact)
                'amnt check if approved
                If amnt(2) = "True" Then
                    Dim damnt As Decimal = CDec(amnt(0))
                    If Date.Now.Year <> 2013 Then 'year 14 gets 5% increase will have to change for other years
                        damnt = damnt * 1.05
						damnt = damnt + cart.FldShipAmt
                    Else
                        'damnt stays same

                    End If
                    cart.AddShippingInfo(cart.order, damnt.ToString("N2"))
                    cart.AddTotal(cart.order, cart.orderdetail)
                    Session("Cart") = cart
                    Response.Redirect("MeridianInvoice.aspx")

                Else
                    MsgBox1.Show("Shipping Error", "There was an error calculating shipping cost because of the following reason: " _
                                 & amnt(1) & " Please try again or contact Meridian Planners at 888-724-8512.", Nothing, New EO.Web.MsgBoxButton("OK"))
                End If
            Catch ex As Exception
                Label1.Visible = False
                Image1.Visible = False
                MsgBox1.Show("Error", ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
            End Try

        Else
            Label1.Visible = False
            Image1.Visible = False
            Response.Redirect("TimeOut.aspx")
        End If
    End Sub
    'Private Function GetShipping(ByVal contact As Array) As String
    '    Dim retval As String = "Failure"
    '    Try

    '        Dim rate As New RateService()
    '        Dim rateRequest As New RateRequest()
    '        Dim upss As New UPSSecurity()
    '        Dim upssSvcAccessToken As New UPSSecurityServiceAccessToken()
    '        'Access Key and passwords <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    '        upssSvcAccessToken.AccessLicenseNumber = "AC91ED180B3CBA88"
    '        upss.ServiceAccessToken = upssSvcAccessToken
    '        Dim upssUsrNameToken As New UPSSecurityUsernameToken()

    '        upssUsrNameToken.Username = "wdalfarm"
    '        upssUsrNameToken.Password = "Briggitte1"
    '        '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    '        upss.UsernameToken = upssUsrNameToken
    '        rate.UPSSecurityValue = upss
    '        Dim request As New RequestType()
    '        Dim requestOption As [String]() = {"Rate"}
    '        request.RequestOption = requestOption
    '        rateRequest.Request = request
    '        Dim shipment As New ShipmentType()
    '        Dim shipper As New ShipperType()

    '        'Shipper Bill Info____________________________________________________________________________________________________________
    '        'should be static
    '        shipper.ShipperNumber = "ISUS01" 'GET this number form meridian
    '        Dim shipperAddress As New AddressType()    'RateWSSample.RateWebReference.AddressType()
    '        Dim addressLine As [String]() = {"3131 W Main", "", ""}
    '        shipperAddress.AddressLine = addressLine
    '        shipperAddress.City = "Sedalia"
    '        shipperAddress.PostalCode = "65301"
    '        shipperAddress.StateProvinceCode = "MO"
    '        shipperAddress.CountryCode = "US"
    '        shipperAddress.AddressLine = addressLine
    '        shipper.Address = shipperAddress
    '        shipment.Shipper = shipper

    '        'Shipper From Info____________________________________________________________________________________________________________
    '        'should be static
    '        Dim shipFrom As New ShipFromType()
    '        Dim shipFromAddress As New AddressType()   '.AddressType()
    '        shipFromAddress.AddressLine = addressLine
    '        shipFromAddress.City = "Sedalia"
    '        shipFromAddress.PostalCode = "65301"
    '        shipFromAddress.StateProvinceCode = "MO"
    '        shipFromAddress.CountryCode = "US"
    '        shipFrom.Address = shipFromAddress
    '        shipment.ShipFrom = shipFrom

    '        'Ship To Customr Info____________________________________________________________________________________________________________
    '        Dim shipTo As New ShipToType()
    '        Dim shipToAddress As New ShipToAddressType()
    '        Dim addressLine1 As [String]() = {contact(11), contact(12), ""}
    '        shipToAddress.AddressLine = addressLine1
    '        shipToAddress.City = contact(13)
    '        shipToAddress.PostalCode = contact(15)
    '        shipToAddress.StateProvinceCode = contact(17) '17 is abbreviation and 14 is full name.
    '        shipToAddress.CountryCode = "US"
    '        shipTo.Address = shipToAddress
    '        shipment.ShipTo = shipTo

    '        'Type of Service Info____________________________________________________________________________________________________________
    '        Dim service As New CodeDescriptionType()
    '        'Below code uses dummy date for reference. Please udpate as required.
    '        '02 is ground
    '        service.Code = "02"
    '        shipment.Service = service

    '        'Package Info____________________________________________________________________________________________________________
    '        Dim package As New PackageType()
    '        Dim packageWeight As New PackageWeightType()
    '        packageWeight.Weight = "125" '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< need to get weight"
    '        Dim uom As New CodeDescriptionType()
    '        uom.Code = "LBS"
    '        uom.Description = "pounds"
    '        packageWeight.UnitOfMeasurement = uom
    '        package.PackageWeight = packageWeight
    '        Dim packType As New CodeDescriptionType()
    '        packType.Code = "02" '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< need to check value and get other options
    '        package.PackagingType = packType
    '        Dim pkgArray As PackageType() = {package}
    '        shipment.Package = pkgArray
    '        rateRequest.Shipment = shipment
    '        '______________________________________________________________________________________________________________________________________________

    '        'results ______________________________________________________________________________________________________________________________________
    '        ServicePointManager.ServerCertificateValidationCallback = Nothing 'nothing is default check which is the website contacted
    '        'System.Net.ServicePointManager.CertificatePolicy = New TrustAllCertificatePolicy()
    '        Console.WriteLine(rateRequest)
    '        Dim rateResponse As RateResponse = rate.ProcessRate(rateRequest)
    '        'can use status code below but used desc instead
    '        Dim status As String = rateResponse.Response.ResponseStatus.Description
    '        'Console.WriteLine("The transaction was a " + rateResponse.Response.ResponseStatus.Description)
    '        Dim shipcost As String = rateResponse.RatedShipment(0).TotalCharges.MonetaryValue + rateResponse.RatedShipment(0).TotalCharges.CurrencyCode
    '        retval = shipcost
    '        'Console.WriteLine("Total Shipment Charges " + rateResponse.RatedShipment(0).TotalCharges.MonetaryValue + rateResponse.RatedShipment(0).TotalCharges.CurrencyCode)
    '        'Console.ReadKey()
    '    Catch ex As System.Web.Services.Protocols.SoapException
    '        'Console.WriteLine("")
    '        'Console.WriteLine("---------Rate Web Service returns error----------------")
    '        'Console.WriteLine("---------""Hard"" is user error ""Transient"" is system error----------------")
    '        'Console.WriteLine("SoapException Message= " + ex.Message)
    '        'Console.WriteLine("")
    '        'Console.WriteLine("SoapException Category:Code:Message= " + ex.Detail.LastChild.InnerText)
    '        'Console.WriteLine("")
    '        'Console.WriteLine("SoapException XML String for all= " + ex.Detail.LastChild.OuterXml)
    '        'Console.WriteLine("")
    '        'Console.WriteLine("SoapException StackTrace= " + ex.StackTrace)
    '        'Console.WriteLine("-------------------------")
    '        'Console.WriteLine("")
    '    Catch ex As System.ServiceModel.CommunicationException
    '        'Console.WriteLine("")
    '        'Console.WriteLine("--------------------")
    '        'Console.WriteLine("CommunicationException= " + ex.Message)
    '        'Console.WriteLine("CommunicationException-StackTrace= " + ex.StackTrace)
    '        'Console.WriteLine("-------------------------")

    '        Console.WriteLine("")
    '    Catch ex As Exception
    '        'Console.WriteLine("")
    '        'Console.WriteLine("-------------------------")
    '        'Console.WriteLine(" Generaal Exception= " & ex.Message)
    '        'Console.WriteLine(" Generaal Exception-StackTrace= " & ex.StackTrace)

    '        'Console.WriteLine("-------------------------")
    '    Finally
    '        'Console.ReadKey()
    '    End Try
    '    Return retval
    'End Function

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Page.Response.AppendHeader("Cache-Control", "no-store, no-cache, must-revalidate, post-check=0, pre-check=0")
        Page.MaintainScrollPositionOnPostBack = True
        If Session("Invoiced") = True Then
            Response.Redirect("meridianinvoice.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
        txtscompany.Text = txtcompany.Text
        txtsfname.Text = txtfname.Text
        txtslname.Text = txtlname.Text
        txtsaddr.Text = txtaddr.Text
        txtsaddr2.Text = txtaddr2.Text
        txtscity.Text = txtcity.Text
        ddlsstate.SelectedValue = ddlstate.SelectedValue
        txtszip.Text = txtzip.Text
    End Sub
End Class
