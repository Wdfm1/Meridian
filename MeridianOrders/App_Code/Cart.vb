Imports Microsoft.VisualBasic

Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Net.Mail
Imports System.Net
Imports MySql.Data.MySqlClient
Imports System.Text
Imports System.ServiceModel
Imports System.IO.File
Imports System.IO
Imports System
Imports UpsRate

Public Class Cart
    Const HS As Decimal = 0.37
    Const MS As Decimal = .67
    Const ELE As Decimal = .67
	Const PRI As Decimal = 0.67
	Const HST As Decimal = 0.4
	Const MST As Decimal = 0.7
	Const ELET As Decimal = 0.7
	Const PRIT As Decimal = 0.7
    Const SFormatBox = 34  'at 90 pcs____________________________________________________________________________
    Const LFormatBox = 40  'at 60pcs
    Private detailDT As System.Data.DataTable
    Private orderDT As System.Data.DataTable
    Private vuseremail As String = ""
	Private vfldshpamt As Decimal = 0
    Private vorderid As Integer = 0
    Private vhsfull As Integer = 0
    Private vmsfull As Integer = 0
    Private velefull As Integer = 0
    Private vprifull As Integer = 0
	Private vhsweight As Integer = 0
	Private vmsweight As Integer = 0
	Private veleweight As Integer = 0
	Private vpriweight As Integer = 0
	Private vtotshipweight As Integer = 0
	Private vcustid As Integer = 0
	Private fldweight As Integer = 0
    Private objDR As System.Data.DataRow

#Region "Properties"
    Public Property OrderId As Integer
        Get
            Return vorderid
        End Get
        Set(ByVal Value As Integer)
            vorderid = Value
        End Set
    End Property
    Public Property TotShipWeight As Integer
        Get
            Return vtotshipweight
        End Get
        Set(ByVal Value As Integer)
            vtotshipweight = Value
        End Set
    End Property
    Public Property HSWeight As Integer
        Get
            Return vhsweight
        End Get
        Set(ByVal Value As Integer)
            vhsweight = Value
        End Set
	End Property
	
	Public Property FolderWeight As Integer
		Get
			Return fldweight
		End Get
		Set(ByVal Value As Integer)
			fldweight = Value
		End Set
	End Property
    Public Property HSFull As Integer
        Get
            Return vhsfull
        End Get
        Set(ByVal Value As Integer)
            vhsfull = Value
        End Set
    End Property
    Public Property MSWeight As Integer
        Get
            Return vmsweight
        End Get
        Set(ByVal Value As Integer)
            vmsweight = Value
        End Set
	End Property

    Public Property MSFull As Integer
        Get
            Return vmsfull
        End Get
        Set(ByVal Value As Integer)
            vmsfull = Value
        End Set
    End Property
    Public Property EleWeight As Integer
        Get
            Return veleweight
        End Get
        Set(ByVal Value As Integer)
            veleweight = Value
        End Set
	End Property
	
    Public Property EleFull As Integer
        Get
            Return velefull
        End Get
        Set(ByVal Value As Integer)
            velefull = Value
        End Set
    End Property
    Public Property PriWeight As Integer
        Get
            Return vpriweight
        End Get
        Set(ByVal Value As Integer)
            vpriweight = Value
        End Set
	End Property
	
    Public Property PriFull As Integer
        Get
            Return vprifull
        End Get
        Set(ByVal Value As Integer)
            vprifull = Value
        End Set
	End Property
	Public Property FldShipAmt As Decimal
		Get
			Return vfldshpamt
		End Get
		Set(ByVal Value As Decimal)
			vfldshpamt = Value
		End Set
	End Property
 
    Public Property useremail As String
        Get
            Return vuseremail
        End Get
        Set(ByVal Value As String)
            vuseremail = Value
        End Set
    End Property
  
    Public Property orderdetail() As System.Data.DataTable
        Get
            Return detailDT
        End Get
        Set(ByVal Value As System.Data.DataTable)
            detailDT = Value
        End Set
    End Property
    Public Property order() As System.Data.DataTable
        Get
            Return orderDT
        End Get
        Set(ByVal Value As System.Data.DataTable)
            orderDT = Value
        End Set
    End Property
#End Region
    Sub New()
        Me.MakeCart()
        Me.MakeOrder()
    End Sub
#Region "Make Tables Functions"
    Sub MakeOrder()
        orderDT = New System.Data.DataTable("Order")
        orderDT.Columns.Add("custid", GetType(Integer))
        orderDT.Columns("custid").AutoIncrement = True
        orderDT.Columns("custid").AutoIncrementSeed = 1
        orderDT.Columns.Add("company", GetType(String))
        orderDT.Columns.Add("fname", GetType(String))
        orderDT.Columns.Add("lname", GetType(String))
        orderDT.Columns.Add("address", GetType(String))
        orderDT.Columns.Add("address2", GetType(String))
        orderDT.Columns.Add("city", GetType(String))
        orderDT.Columns.Add("state", GetType(String))
        orderDT.Columns.Add("zipcode", GetType(String))
        orderDT.Columns.Add("emailaddress", GetType(String))
        orderDT.Columns.Add("phonenumber", GetType(String))
        'shipping
        orderDT.Columns.Add("scompany", GetType(String))
        orderDT.Columns.Add("sfname", GetType(String))
        orderDT.Columns.Add("slname", GetType(String))
        orderDT.Columns.Add("saddress", GetType(String))
        orderDT.Columns.Add("saddress2", GetType(String))
        orderDT.Columns.Add("scity", GetType(String))
        orderDT.Columns.Add("sstate", GetType(String))
        orderDT.Columns.Add("szipcode", GetType(String))
        'ship date
        orderDT.Columns.Add("shipdate", GetType(String))
        'totals
        orderDT.Columns.Add("subtotal", GetType(String))
        orderDT.Columns.Add("shippingcost", GetType(String))
        orderDT.Columns.Add("total", GetType(String))
        orderDT.Columns.Add("notes", GetType(String))
        'add a row
        Dim dr As DataRow = orderDT.NewRow()
        orderDT.Rows.Add(dr)

        Me.order = orderDT
    End Sub
    Sub MakeCart()
        detailDT = New System.Data.DataTable("detailsOrder")
        detailDT.Columns.Add("detailId", GetType(Integer))
        detailDT.Columns("detailId").AutoIncrement = True
        detailDT.Columns("detailId").AutoIncrementSeed = 1

        detailDT.Columns.Add("orderId", GetType(Integer))
        detailDT.Columns.Add("schtype", GetType(String))
        detailDT.Columns.Add("quantity", GetType(Integer))
        detailDT.Columns.Add("price", GetType(Decimal)) 'was price
		detailDT.Columns.Add("totalprice", GetType(Decimal)) 'was cost
		detailDT.Columns.Add("prodcode", GetType(String))
        Me.orderdetail = detailDT
    End Sub
#End Region
    Sub ClearOrder()
        'Me.shipmethod = Nothing
        'Me.promocode = Nothing
        'Dim rcount As Integer = Me.orderdetail.Rows.Count - 1

        'Do While rcount > -1
        '    Me.orderdetail.Rows(rcount).Delete()
        '    Me.orderdetail.Rows(rcount).AcceptChanges()
        '    rcount = rcount - 1
        'Loop


    End Sub
	Sub Delete_Item(ByVal orddt As System.Data.DataTable, ByVal opdt As System.Data.DataTable, ByVal detailid As Integer, ByVal ProdCode As String, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) 'dataview
		'Dim detailid As Integer = orddt.Rows(e.RowIndex).Item("DetailId") 'get order detail id 

		'For Each dr As DataRow In orddt.Rows  'ds.Tables(0).Rows

		'    If (dr("detailid") = detailid) Then

		'        dr.Delete()
		'        orddt.AcceptChanges()
		'        Exit For
		'    End If
		'Next
		'Me.orderdetail = orddt


	End Sub
	Function AddToCart(ByVal orddetails As System.Data.DataTable, ByVal schtype As String, ByVal qty As String, ByVal price As String, ByVal total As String, prodcode As String) As Integer
		objDR = orddetails.NewRow
		'objDR("custid") = 100 'one hundred will always be used for order. When we put in database database will assign custid
		objDR("quantity") = Int32.Parse(qty)
		objDR("totalPrice") = Decimal.Parse(total)
		objDR("schtype") = schtype
		objDR("price") = Decimal.Parse(price)
		objDR("prodcode") = prodcode
		orddetails.Rows.Add(objDR)
		Me.orderdetail = orddetails
		Dim rowcount As Integer = orderdetail.Rows.Count
		Dim detid As Integer = orderdetail.Rows(rowcount - 1).Item("DetailId")
		SetWeight(prodcode, qty)
		Return detid.ToString
	End Function
    Sub AddContactInfo(ByVal orderDT As System.Data.DataTable, ByVal contact As Array)
        'row was added when table was created,there will always just be 1 row,just set the values
        objDR = orderDT.Rows(0)
        objDR("fname") = contact(0)
        objDR("lname") = contact(1)
        objDR("address") = contact(3)
        objDR("address2") = contact(4)
        objDR("city") = contact(5)
        objDR("state") = contact(18)
        objDR("zipcode") = contact(7)
        objDR("emailaddress") = contact(8)
        objDR("company") = contact(19)
        objDR("phonenumber") = contact(21)

        objDR("sfname") = contact(9)
        objDR("slname") = contact(10)
        objDR("saddress") = contact(11)
        objDR("saddress2") = contact(12)
        objDR("scity") = contact(13)
        objDR("sstate") = contact(17)
        objDR("szipcode") = contact(15)
        objDR("shipdate") = contact(16)
        objDR("scompany") = contact(20)

        Me.order = orderDT


    End Sub
    Sub AddOrderNote(ByVal orderDT As System.Data.DataTable, ByVal notetext As String)
        objDR = orderDT.Rows(0)
        objDR("notes") = notetext

        Me.order = orderDT

    End Sub
    Sub AddSubTotal(ByVal orderDT As System.Data.DataTable, ByVal subtotal As Decimal)
        objDR = orderDT.Rows(0)
        'objDR("subtotal") = subtotal.ToString("N2")
        objDR("subtotal") = CStr(subtotal)
        Me.order = orderDT
    End Sub
    Sub AddShippingInfo(ByVal orderDT As DataTable, shipamnt As String)
        objDR = orderDT.Rows(0)
        objDR("shippingcost") = shipamnt
        Me.order = orderDT
    End Sub
    Sub AddTotal(ByVal orderDT As DataTable, ByVal orderdetailDT As DataTable)
        Dim total As Decimal
        Dim strtotal As String

        For Each row As DataRow In orderdetailDT.Rows
            Try
                total += CDec(row.Item("totalprice"))
            Catch ex As Exception

            End Try
        Next row
        Dim orderrow As DataRow = orderDT.Rows(0)
        Dim shippingcost As Decimal = CDec(orderrow.Item("shippingcost"))
        total = total + shippingcost
        strtotal = CStr(total)
        orderrow.Item("total") = strtotal
        Me.order = orderDT


    End Sub
    Function GetShipping(ByVal contact As Array) As Array
        Dim retval(2) As String
        retval(0) = "O" 'ship amount
        retval(1) = ""  'error msg
        retval(2) = "False" 'approved
        Dim errmsg As String = ""
        Dim cause As String = ""
        Dim shipcost1 As String
        Dim shipcost As Decimal
        Try
            Dim rate As New RateService()
            Dim rateRequest As New RateRequest()
            Dim upss As New UPSSecurity()
            Dim upssSvcAccessToken As New UPSSecurityServiceAccessToken()
            'Access Key and passwords <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            upssSvcAccessToken.AccessLicenseNumber = "AC91ED180B3CBA88"
            upss.ServiceAccessToken = upssSvcAccessToken
            Dim upssUsrNameToken As New UPSSecurityUsernameToken()

            upssUsrNameToken.Username = "wdalfarm"
            upssUsrNameToken.Password = "Briggitte1"
            '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
            upss.UsernameToken = upssUsrNameToken
            rate.UPSSecurityValue = upss
            Dim request As New RequestType()
            Dim requestOption As [String]() = {"Shop"}
            request.RequestOption = requestOption
            rateRequest.Request = request
            Dim shipment As New ShipmentType()
            Dim shipper As New ShipperType()

            'Shipper Bill Info____________________________________________________________________________________________________________
            'should be static
            shipper.ShipperNumber = "" 'GET this number form meridian(leave blank to match ups website)
            Dim shipperAddress As New AddressType()    'RateWSSample.RateWebReference.AddressType()
            Dim addressLine As [String]() = {"3131 W Main", "", ""}
            shipperAddress.AddressLine = addressLine
            shipperAddress.City = "Sedalia"
            shipperAddress.PostalCode = "65301"
            shipperAddress.StateProvinceCode = "MO"
            shipperAddress.CountryCode = "US"
            shipperAddress.AddressLine = addressLine
            shipper.Address = shipperAddress
            shipment.Shipper = shipper

            'Shipper From Info____________________________________________________________________________________________________________
            'should be static
            Dim shipFrom As New ShipFromType()
            Dim shipFromAddress As New AddressType()
            shipFromAddress.AddressLine = addressLine
            shipFromAddress.City = "Sedalia"
            shipFromAddress.PostalCode = "65301"
            shipFromAddress.StateProvinceCode = "MO"
            shipFromAddress.CountryCode = "US"
            shipFrom.Address = shipFromAddress
            shipment.ShipFrom = shipFrom

            'Ship To Customr Info____________________________________________________________________________________________________________
            Dim shipTo As New ShipToType()
            Dim shipToAddress As New ShipToAddressType()
            Dim addressLine1 As [String]() = {contact(11), contact(12), ""}
            shipToAddress.AddressLine = addressLine1
            shipToAddress.City = contact(13)
            shipToAddress.PostalCode = contact(15)
            shipToAddress.StateProvinceCode = contact(17) '17 is abbreviation and 14 is full name.
            shipToAddress.CountryCode = "US"
            shipTo.Address = shipToAddress
            shipment.ShipTo = shipTo

            'Type of Service Info____________________________________________________________________________________________________________
            Dim service As New CodeDescriptionType()
            'Below code uses dummy date for reference. Please udpate as required.
            '02 is ground
            service.Code = "02"
            shipment.Service = service

            'Package Info____________________________________________________________________________________________________________
            Dim package As New PackageType()
            Dim packageWeight As New PackageWeightType()
            Dim uom As New CodeDescriptionType()
            Dim theweight As Integer = 0
            Dim totalweight As Integer = 0
            Dim shipamt As Decimal = 0
            Dim i As Integer
			For i = 1 To 8
				Select Case i
					Case 1 'HS 1 box weight
						theweight = 34
					Case 2, 3, 4 '1 box weight all others
						theweight = 40
					Case 5 'partial boxes here and below
						theweight = HSWeight
					Case 6
						theweight = MSWeight
					Case 7
						theweight = EleWeight
					Case 8
						theweight = PriWeight

				End Select
				'totalweight = totalweight + theweight
				If theweight <> 0 Then


					'Dim theweight As Integer = HSWeight + MSWeight + EleWeight + PriWeight
					packageWeight.Weight = CStr(theweight) '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< need to get weight"
					uom.Code = "LBS"
					uom.Description = "pounds"
					packageWeight.UnitOfMeasurement = uom
					package.PackageWeight = packageWeight
					Dim packType As New CodeDescriptionType()
					packType.Code = "02" '<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< need to check value and get other options
					package.PackagingType = packType
					Dim pkgArray As PackageType() = {package}
					shipment.Package = pkgArray
					rateRequest.Shipment = shipment
					'______________________________________________________________________________________________________________________________________________

					'results ______________________________________________________________________________________________________________________________________
					ServicePointManager.ServerCertificateValidationCallback = Nothing 'nothing is default check which is the website contacted
					'System.Net.ServicePointManager.CertificatePolicy = New TrustAllCertificatePolicy()
					'Console.WriteLine(rateRequest)
					Dim rateResponse As RateResponse = rate.ProcessRate(rateRequest)
					'can use status code below but used desc instead
					Dim status As String = rateResponse.Response.ResponseStatus.Description
					Dim status1 As String = rateResponse.Response.ResponseStatus.Code
					shipcost1 = rateResponse.RatedShipment(0).TotalCharges.MonetaryValue + rateResponse.RatedShipment(0).TotalCharges.CurrencyCode
					shipcost1 = shipcost1.Substring(0, shipcost1.Length - 3)
					shipcost = CDec(shipcost1)
					Select Case i
						Case 1 'HS
							shipamt = shipamt + (shipcost * HSFull)
							If HSFull <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 2
							shipamt = shipamt + (shipcost * MSFull)
							If MSFull <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 3
							shipamt = shipamt + (shipcost * EleFull)
							If EleFull <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 4
							shipamt = shipamt + (shipcost * PriFull)
							If PriFull <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 5
							shipamt = shipamt + shipcost 'hs extraplanners
							If shipcost <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 6
							shipamt = shipamt + shipcost 'ms extraplanners
							If shipcost <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 7
							shipamt = shipamt + shipcost 'ele extraplanners
							If shipcost <> 0 Then
								totalweight = totalweight + theweight
							End If
						Case 8
							shipamt = shipamt + shipcost 'pri extraplanners
							If shipcost <> 0 Then
								totalweight = totalweight + theweight
							End If
					
					End Select

				Else

				End If
			Next
            Me.TotShipWeight = totalweight
            retval(0) = shipamt.ToString("N2")
            retval(2) = "True"
        Catch ex As System.Web.Services.Protocols.SoapException

            errmsg = "SoapException Message= " & ex.Message
            cause = "Reason=" & ex.Detail.LastChild.InnerText
            retval(1) = cause
            retval(2) = "False"
        Catch ex As System.ServiceModel.CommunicationException

            errmsg = "CommunicationException= " + ex.Message
            cause = ("CommunicationException-StackTrace= " + ex.StackTrace)
            retval(1) = cause
            retval(2) = "False"

        Catch ex As Exception

            errmsg = " Generaal Exception= " & ex.Message
            cause = " Generaal Exception-StackTrace= " & ex.StackTrace
            retval(1) = cause
            retval(2) = "False"
        Finally

        End Try

        Return retval
	End Function
	Sub AddFldShipping(prod As Array, i As Integer)
		Dim amt As Decimal = 0
		Select Case prod(i, 1)
			Case 0 To 49
				amt = 7.0
			Case 50 To 74
				amt = 14.0
			Case 75 To 99
				amt = 20.0
			Case 100 To 124
				amt = 25.0
			Case 125 To 149
				amt = 30.0
			Case 150 To 174
				amt = 35.0
			Case 175 To 224
				amt = 40.0
			Case 225 To 249
				amt = 45.0
			Case 250 To 274
				amt = 50.0
			Case 275 To 324
				amt = 55.0
			Case 325 To 374
				amt = 60.0
			Case 375 To 424
				amt = 65.0
			Case 425 To 474
				amt = 70.0
			Case 475 To 524
				amt = 75.0
			Case 525 To 574
				amt = 80.0
			Case 575 To 624
				amt = 85.0
			Case 625 To 674
				amt = 90.0
			Case 675 To 724
				amt = 95.0
			Case 725 To 774
				amt = 100.0
			Case 775 To 824
				amt = 105.0
			Case 825 To 874
				amt = 110.0
			Case 875 To 924
				amt = 115.0
			Case 925 To 974
				amt = 120.0
			Case 975 To 1100
				amt = 125.0
		End Select
		Me.FldShipAmt = amt
	End Sub
    Sub SetWeight(ByVal schtype As String, ByVal vqty As String)
		Dim qty As Integer = CInt(vqty)
		Dim numboxes As Integer = 0
		Dim extraplanners As Integer = 0
		Select Case schtype

			Case "HSP"
				If qty >= 90 Then
					numboxes = Math.Truncate(qty / 90) 'make sure number in box is correct______________________________________________________________________________
					If qty Mod 90 > 0 Then
						extraplanners = qty - (numboxes * 90)
					End If
					Me.HSWeight = 0	'zeros out before adding
					Me.HSWeight = Math.Ceiling(extraplanners * HS)
					Me.HSFull = numboxes
				Else
					extraplanners = qty
					HSFull = 0
					Me.HSWeight = 0
					Me.HSWeight = Math.Ceiling(extraplanners * HS)

				End If
			Case "MSP"
				If qty >= 60 Then
					numboxes = Math.Truncate(qty / 60) 'make sure number in box is correct______________________________________________________________________________
					If qty Mod 60 > 0 Then
						extraplanners = qty - (numboxes * 60)
					End If
					Me.MSWeight = 0
					Me.MSWeight = Math.Ceiling(extraplanners * MS)
					MSFull = numboxes
				Else
					extraplanners = qty
					Me.MSWeight = 0
					Me.MSWeight = Math.Ceiling(extraplanners * MS)

					MSFull = 0

				End If
			Case "ELSP"
				If qty >= 60 Then
					numboxes = Math.Truncate(qty / 60) 'make sure number in box is correct______________________________________________________________________________
					If qty Mod 60 > 0 Then
						extraplanners = qty - (numboxes * 60)
					End If
					Me.EleWeight = 0
					Me.EleWeight = Math.Ceiling(extraplanners * ELE)
					EleFull = numboxes
				Else

					extraplanners = qty
					Me.EleWeight = 0
					Me.EleWeight = Math.Ceiling(extraplanners * ELE)

					EleFull = 0

				End If
			Case "PRISP"
				If qty >= 60 Then
					numboxes = Math.Truncate(qty / 60) 'make sure number in box is correct______________________________________________________________________________
					If qty Mod 60 > 0 Then
						extraplanners = qty - (numboxes * 60)
					End If
					Me.PriWeight = 0
					Me.PriWeight = Math.Ceiling(extraplanners * PRI)
					PriFull = numboxes
				Else
					extraplanners = qty
					Me.PriWeight = 0
					Me.PriWeight = Math.Ceiling(extraplanners * PRI)
					PriFull = 0
				End If

			Case "HSPT"
				extraplanners = qty
				Me.HSWeight = Me.HSWeight + Math.Ceiling(extraplanners * HST)	'adds Teachers edition on to Hs weight
			Case "MSPT"
				extraplanners = qty
				Me.MSWeight = Me.MSWeight + Math.Ceiling(extraplanners * MST)	  'adds Teachers edition on to Ms weight
			Case "ELSPT"
				extraplanners = qty
				Me.EleWeight = Me.EleWeight + Math.Ceiling(extraplanners * ELET)	 'adds Teachers edition on to ele weight
			Case "PRISPT"
				extraplanners = qty
				Me.PriWeight = Me.PriWeight + Math.Ceiling(extraplanners * PRIT)	  'adds Teachers edition on to pri weight

		End Select

	End Sub
    
End Class
