Imports System.Collections.Generic
Imports System.Text
Imports Microsoft.VisualBasic
Imports UpsRate

Imports System.ServiceModel
Imports System.Net
Imports System

Namespace RateWSSample
    Public Class RateWSClient

        Private Shared Sub Main()
            Try

                Dim rate As New RateService()
                Dim rateRequest As New RateRequest()
                Dim upss As New UPSSecurity()
                Dim upssSvcAccessToken As New UPSSecurityServiceAccessToken()
                upssSvcAccessToken.AccessLicenseNumber = "AC91ED180B3CBA88"
                upss.ServiceAccessToken = upssSvcAccessToken
                Dim upssUsrNameToken As New UPSSecurityUsernameToken()
                upssUsrNameToken.Username = "wdalfarm"
                upssUsrNameToken.Password = "Briggitte1"
                upss.UsernameToken = upssUsrNameToken
                rate.UPSSecurityValue = upss
                Dim request As New RequestType()
                Dim requestOption As [String]() = {"Rate"}
                request.RequestOption = requestOption
                rateRequest.Request = request
                Dim shipment As New ShipmentType()
                Dim shipper As New ShipperType()
                shipper.ShipperNumber = "ISUS01"
                Dim shipperAddress As New UpsRate.AddressType()    'RateWSSample.RateWebReference.AddressType()
                Dim addressLine As [String]() = {"5555 main", "4 Case Cour", "Apt 3B"}
                shipperAddress.AddressLine = addressLine
                shipperAddress.City = "Sedalia"
                shipperAddress.PostalCode = "65301"
                shipperAddress.StateProvinceCode = "GA"
                shipperAddress.CountryCode = "US"
                shipperAddress.AddressLine = addressLine
                shipper.Address = shipperAddress
                shipment.Shipper = shipper
                Dim shipFrom As New ShipFromType()
                Dim shipFromAddress As New UpsRate.AddressType()   '.AddressType()
                shipFromAddress.AddressLine = addressLine
                shipFromAddress.City = "Smithton"
                shipFromAddress.PostalCode = "65350"
                shipFromAddress.StateProvinceCode = "MO"
                shipFromAddress.CountryCode = "US"
                shipFrom.Address = shipFromAddress
                shipment.ShipFrom = shipFrom
                Dim shipTo As New ShipToType()
                Dim shipToAddress As New ShipToAddressType()
                Dim addressLine1 As [String]() = {"10 E. Ritchie Way", "2", "Apt 3B"}
                shipToAddress.AddressLine = addressLine1
                shipToAddress.City = "Plam Springs"
                shipToAddress.PostalCode = "92262"
                shipToAddress.StateProvinceCode = "CA"
                shipToAddress.CountryCode = "US"
                shipTo.Address = shipToAddress
                shipment.ShipTo = shipTo
                Dim service As New CodeDescriptionType()

                'Below code uses dummy date for reference. Please udpate as required.
                service.Code = "02"
                shipment.Service = service
                Dim package As New PackageType()
                Dim packageWeight As New PackageWeightType()
                packageWeight.Weight = "125"
                Dim uom As New CodeDescriptionType()
                uom.Code = "LBS"
                uom.Description = "pounds"
                packageWeight.UnitOfMeasurement = uom
                package.PackageWeight = packageWeight
                Dim packType As New CodeDescriptionType()
                packType.Code = "02"
                package.PackagingType = packType
                Dim pkgArray As PackageType() = {package}
                shipment.Package = pkgArray
                rateRequest.Shipment = shipment
                ServicePointManager.ServerCertificateValidationCallback = Nothing
                'System.Net.ServicePointManager.CertificatePolicy = New TrustAllCertificatePolicy()
                Console.WriteLine(rateRequest)
                Dim rateResponse As RateResponse = rate.ProcessRate(rateRequest)
                Console.WriteLine("The transaction was a " + rateResponse.Response.ResponseStatus.Description)
                Console.WriteLine("Total Shipment Charges " + rateResponse.RatedShipment(0).TotalCharges.MonetaryValue + rateResponse.RatedShipment(0).TotalCharges.CurrencyCode)
                Console.ReadKey()
            Catch ex As System.Web.Services.Protocols.SoapException
                Console.WriteLine("")
                Console.WriteLine("---------Rate Web Service returns error----------------")
                Console.WriteLine("---------""Hard"" is user error ""Transient"" is system error----------------")
                Console.WriteLine("SoapException Message= " + ex.Message)
                Console.WriteLine("")
                Console.WriteLine("SoapException Category:Code:Message= " + ex.Detail.LastChild.InnerText)
                Console.WriteLine("")
                Console.WriteLine("SoapException XML String for all= " + ex.Detail.LastChild.OuterXml)
                Console.WriteLine("")
                Console.WriteLine("SoapException StackTrace= " + ex.StackTrace)
                Console.WriteLine("-------------------------")
                Console.WriteLine("")
            Catch ex As System.ServiceModel.CommunicationException
                Console.WriteLine("")
                Console.WriteLine("--------------------")
                Console.WriteLine("CommunicationException= " + ex.Message)
                Console.WriteLine("CommunicationException-StackTrace= " + ex.StackTrace)
                Console.WriteLine("-------------------------")

                Console.WriteLine("")
            Catch ex As Exception
                Console.WriteLine("")
                Console.WriteLine("-------------------------")
                Console.WriteLine(" Generaal Exception= " & ex.Message)
                Console.WriteLine(" Generaal Exception-StackTrace= " & ex.StackTrace)

                Console.WriteLine("-------------------------")
            Finally
                Console.ReadKey()
            End Try

        End Sub
    End Class
End Namespace
