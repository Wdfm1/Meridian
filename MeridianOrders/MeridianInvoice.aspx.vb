Imports System.Data
Imports System.Collections.Generic
Imports System.Text
Imports System.ServiceModel
Imports System.Net
Imports UpsRates
Imports MySql.Data.MySqlClient
Imports System.Net.Mail


Partial Class MeridianInvoice
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
		Page.Response.AppendHeader("Cache-Control", "no-store, no-cache, must-revalidate, post-check=0, pre-check=0")
		Page.MaintainScrollPositionOnPostBack = True
		Try
			If Session("Invoiced") = True Then 'clear invoiced in case of redirect loop
				Session("Invoiced") = False
			End If
		Catch ex As Exception

		End Try

		Dim cart As Cart = Session("Cart")
		If Not IsNothing(cart) Then	'test if cart available if not means order has been placed. If session expires will go to order page first.


			Session.Add("Invoiced", True) ' setting will not let you go to the orderpage

			If Not IsPostBack Then


				If Not IsNothing(cart) Then
					FormView1.DataSource = cart.order
					FormView1.DataBind()
					FormView2.DataSource = cart.order
					FormView2.DataBind()
					GridView1.DataSource = cart.orderdetail
					GridView1.DataBind()
				End If
			End If
		Else
			Response.Redirect("Standard_Orders.aspx")
		End If


	End Sub

	Protected Sub CheckBox1_CheckedChanged(sender As Object, e As System.EventArgs) Handles CheckBox1.CheckedChanged

		CheckBox2.Checked = False
	End Sub

	Protected Sub CheckBox2_CheckedChanged(sender As Object, e As System.EventArgs) Handles CheckBox2.CheckedChanged

		CheckBox1.Checked = False
	End Sub

	Protected Sub btncc_Click(sender As Object, e As System.EventArgs) Handles btncc.Click
		If CheckBox1.Checked = True Then
			UpdateOrder("CC")
		Else
			UpdateOrder("PO")
		End If


	End Sub

	Protected Sub UpdateOrder(ByVal paytype As String)
		Dim ordergood As Boolean = False
		Dim cart As Cart = Session("Cart")
		Dim commandtext As String
		Dim orderid As Integer
		If Not IsNothing(cart) Then
			Select Case paytype
				Case "CC"

					Try
						commandtext = "insert into temporders (company,scompany,fname,lname,address,address2,city,state,zipcode,emailaddress,sfname,slname," _
					 & "saddress,saddress2,scity,sstate,szipcode,shipdate,orderdate,subtotal,shippingcost,total,phonenumber,po,weight,notes)" _
					 & "values(@company,@scompany,@fname,@lname,@address,@address2,@city,@state,@zipcode,@emailaddress,@sfname,@slname," _
					  & "@saddress,@saddress2,@scity,@sstate,@szipcode,@shipdate,@orderdate,@subtotal,@shippingcost,@total,@phonenumber,@po,@weight,@notes);"

						Dim connection1 As New MySqlConnection(dsState.ConnectionString)
						connection1.Open()
						Dim trans As MySqlTransaction = connection1.BeginTransaction()
						Dim cmd As MySqlCommand = connection1.CreateCommand()
						cmd.Transaction = trans
						cmd.CommandText = commandtext
						cmd.Parameters.AddWithValue("@company", cart.order.Rows(0).Item("company"))
						cmd.Parameters.AddWithValue("@scompany", cart.order.Rows(0).Item("scompany"))
						cmd.Parameters.AddWithValue("@fname", cart.order.Rows(0).Item("fname"))
						cmd.Parameters.AddWithValue("@lname", cart.order.Rows(0).Item("lname"))
						cmd.Parameters.AddWithValue("@address", cart.order.Rows(0).Item("address"))
						cmd.Parameters.AddWithValue("@address2", cart.order.Rows(0).Item("address2"))
						cmd.Parameters.AddWithValue("@city", cart.order.Rows(0).Item("city"))
						cmd.Parameters.AddWithValue("@state", cart.order.Rows(0).Item("state"))
						cmd.Parameters.AddWithValue("@zipcode", cart.order.Rows(0).Item("zipcode"))
						cmd.Parameters.AddWithValue("@emailaddress", cart.order.Rows(0).Item("emailaddress"))
						cmd.Parameters.AddWithValue("@sfname", cart.order.Rows(0).Item("sfname"))
						cmd.Parameters.AddWithValue("@slname", cart.order.Rows(0).Item("slname"))
						cmd.Parameters.AddWithValue("@saddress", cart.order.Rows(0).Item("saddress"))
						cmd.Parameters.AddWithValue("@saddress2", cart.order.Rows(0).Item("saddress2"))
						cmd.Parameters.AddWithValue("@scity", cart.order.Rows(0).Item("scity"))
						cmd.Parameters.AddWithValue("@sstate", cart.order.Rows(0).Item("sstate"))
						cmd.Parameters.AddWithValue("@szipcode", cart.order.Rows(0).Item("szipcode"))
						cmd.Parameters.AddWithValue("@orderdate", Now)
						cmd.Parameters.AddWithValue("@shipdate", CDate(cart.order.Rows(0).Item("shipdate")))
						cmd.Parameters.AddWithValue("@phonenumber", cart.order.Rows(0).Item("phonenumber"))
						cmd.Parameters.AddWithValue("@subtotal", cart.order.Rows(0).Item("subtotal"))
						cmd.Parameters.AddWithValue("@shippingcost", cart.order.Rows(0).Item("shippingcost"))
						cmd.Parameters.AddWithValue("@total", cart.order.Rows(0).Item("total"))
						cmd.Parameters.AddWithValue("@po", IIf(paytype = "CC", 0, 1))
						cmd.Parameters.AddWithValue("@notes", cart.order.Rows(0).Item("notes"))
						cmd.Parameters.AddWithValue("@weight", cart.TotShipWeight)
						Try
							cmd.ExecuteNonQuery()
							commandtext = "Select Last_Insert_ID()"
							cmd.CommandText = commandtext
							orderid = CInt(cmd.ExecuteScalar())
							cart.OrderId = orderid
							Session("Cart") = cart
							'insert orderdetails
							Dim i As Integer
							Dim detailrowcount As Integer = cart.orderdetail.Rows.Count
							commandtext = "insert into temporderdetail (orderid,schtype,quantity,price,totalprice,prodcode) values(@orderid,@schtype,@quantity,@price,@totalprice,@prodcode);"
							For i = 0 To detailrowcount - 1
								cmd.Parameters.Clear()
								cmd.Parameters.AddWithValue("@orderid", orderid)
								cmd.Parameters.AddWithValue("@schtype", cart.orderdetail.Rows(i).Item("schtype"))
								cmd.Parameters.AddWithValue("@quantity", cart.orderdetail.Rows(i).Item("quantity"))
								cmd.Parameters.AddWithValue("@price", cart.orderdetail.Rows(i).Item("price"))
								cmd.Parameters.AddWithValue("@totalprice", cart.orderdetail.Rows(i).Item("totalprice"))
								cmd.Parameters.AddWithValue("@prodcode", cart.orderdetail.Rows(i).Item("prodcode"))
								cmd.CommandText = commandtext
								cmd.ExecuteNonQuery()
							Next
							trans.Commit()
							ordergood = True
					Catch ex As Exception 'order failed
							trans.Rollback()
							MsgBox1.Show("Error", "The following error occured:" & ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
							'ordergood is false at this point

							'email error   ----------------------------------------------------------------------------------
							Dim objMM As New MailMessage()
							Dim tomail As String = ""
							Dim smtpclient As String = ""
							Dim cpassword As String = ""
							Dim cuser As String = ""
							tomail = "randy@woodalldevelopment.com"
							smtpclient = ConfigurationManager.AppSettings("smtpserver")
							cuser = ConfigurationManager.AppSettings("smtpuser")
							cpassword = ConfigurationManager.AppSettings("smtppassword")
							'Set the properties
							objMM.From = New MailAddress(ConfigurationManager.AppSettings("FromAddr"), ConfigurationManager.AppSettings("FromName"))

							Try
								objMM.To.Add(tomail) 'customer address if address bad try statement in send will catch


							Catch ex1 As Exception

							End Try


							'Send the email in text format
							objMM.IsBodyHtml = True

							'Set the subject
							objMM.Subject = "Meridian Invoice.asp UpdateOrder Error"

							objMM.Body = ex.Message

							Dim smtp As New SmtpClient(smtpclient)
							smtp.Credentials = New NetworkCredential(cuser, cpassword)

							Try
								'smtp.DeliveryMethod = SmtpDeliveryMethod.PickupDirectoryFromIis 'only works on some servers
								smtp.Send(objMM)
							Catch

							End Try

							Return

						Finally
							connection1.Close()
						End Try
					Catch ex As Exception 'connection error
						MsgBox1.Show("Error", "The following error occured:" & ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
						Return
					End Try

				Case "PO"
							Try
								commandtext = "insert into temporders (company,scompany,fname,lname,address,address2,city,state,zipcode,emailaddress,sfname,slname," _
							   & "saddress,saddress2,scity,sstate,szipcode,shipdate,orderdate,subtotal,shippingcost,total,phonenumber,po,weight,notes)" _
							   & "values(@company,@scompany,@fname,@lname,@address,@address2,@city,@state,@zipcode,@emailaddress,@sfname,@slname," _
								& "@saddress,@saddress2,@scity,@sstate,@szipcode,@shipdate,@orderdate,@subtotal,@shippingcost,@total,@phonenumber,@po,@weight,@notes);"


								Dim connection1 As New MySqlConnection(dsState.ConnectionString)
								connection1.Open()
								Dim trans As MySqlTransaction = connection1.BeginTransaction()
								Dim cmd As MySqlCommand = connection1.CreateCommand()
								cmd.Transaction = trans
								cmd.CommandText = commandtext

								cmd.Parameters.AddWithValue("@company", cart.order.Rows(0).Item("company"))
								cmd.Parameters.AddWithValue("@scompany", cart.order.Rows(0).Item("scompany"))
								cmd.Parameters.AddWithValue("@fname", cart.order.Rows(0).Item("fname"))
								cmd.Parameters.AddWithValue("@lname", cart.order.Rows(0).Item("lname"))
								cmd.Parameters.AddWithValue("@address", cart.order.Rows(0).Item("address"))
								cmd.Parameters.AddWithValue("@address2", cart.order.Rows(0).Item("address2"))
								cmd.Parameters.AddWithValue("@city", cart.order.Rows(0).Item("city"))
								cmd.Parameters.AddWithValue("@state", cart.order.Rows(0).Item("state"))
								cmd.Parameters.AddWithValue("@zipcode", cart.order.Rows(0).Item("zipcode"))
								cmd.Parameters.AddWithValue("@emailaddress", cart.order.Rows(0).Item("emailaddress"))
								cmd.Parameters.AddWithValue("@sfname", cart.order.Rows(0).Item("sfname"))
								cmd.Parameters.AddWithValue("@slname", cart.order.Rows(0).Item("slname"))
								cmd.Parameters.AddWithValue("@saddress", cart.order.Rows(0).Item("saddress"))
								cmd.Parameters.AddWithValue("@saddress2", cart.order.Rows(0).Item("saddress2"))
								cmd.Parameters.AddWithValue("@scity", cart.order.Rows(0).Item("scity"))
								cmd.Parameters.AddWithValue("@sstate", cart.order.Rows(0).Item("sstate"))
								cmd.Parameters.AddWithValue("@szipcode", cart.order.Rows(0).Item("szipcode"))
								cmd.Parameters.AddWithValue("@orderdate", Now)
								cmd.Parameters.AddWithValue("@shipdate", CDate(cart.order.Rows(0).Item("shipdate")))
								cmd.Parameters.AddWithValue("@phonenumber", cart.order.Rows(0).Item("phonenumber"))
								cmd.Parameters.AddWithValue("@subtotal", cart.order.Rows(0).Item("subtotal"))
								cmd.Parameters.AddWithValue("@shippingcost", cart.order.Rows(0).Item("shippingcost"))
								cmd.Parameters.AddWithValue("@total", cart.order.Rows(0).Item("total"))
								cmd.Parameters.AddWithValue("@po", IIf(paytype = "CC", 0, 1))
								cmd.Parameters.AddWithValue("@notes", cart.order.Rows(0).Item("notes"))
								cmd.Parameters.AddWithValue("@weight", cart.TotShipWeight)
								Try
									cmd.ExecuteNonQuery()
									commandtext = "Select Last_Insert_ID()"
									cmd.CommandText = commandtext
									orderid = CInt(cmd.ExecuteScalar())
									cmd.Parameters.AddWithValue("@orderid", orderid) ' we have orderid now add to real order
							commandtext = "insert into orders (orderid,company,scompany,fname,lname,address,address2,city,state,zipcode,emailaddress,sfname,slname," _
							& "saddress,saddress2,scity,sstate,szipcode,shipdate,orderdate,subtotal,shippingcost,total,phonenumber,po,weight,notes)" _
							& "values(@orderid,@company,@scompany,@fname,@lname,@address,@address2,@city,@state,@zipcode,@emailaddress,@sfname,@slname," _
							 & "@saddress,@saddress2,@scity,@sstate,@szipcode,@shipdate,@orderdate,@subtotal,@shippingcost,@total,@phonenumber,@po,@weight,@notes);"
							cmd.CommandText = commandtext
							cmd.ExecuteNonQuery()
									cart.OrderId = orderid
									Session("Cart") = cart
									'insert orderdetails
									Dim i As Integer
									Dim detailrowcount As Integer = cart.orderdetail.Rows.Count


							For i = 0 To detailrowcount - 1
								commandtext = "insert into temporderdetail (orderid,schtype,quantity,price,totalprice,prodcode) values(@orderid,@schtype,@quantity,@price,@totalprice,@prodcode);"
								cmd.Parameters.Clear()
								cmd.Parameters.AddWithValue("@orderid", orderid)
								cmd.Parameters.AddWithValue("@schtype", cart.orderdetail.Rows(i).Item("schtype"))
								cmd.Parameters.AddWithValue("@quantity", cart.orderdetail.Rows(i).Item("quantity"))
								cmd.Parameters.AddWithValue("@price", cart.orderdetail.Rows(i).Item("price"))
								cmd.Parameters.AddWithValue("@totalprice", cart.orderdetail.Rows(i).Item("totalprice"))
								cmd.Parameters.AddWithValue("@prodcode", cart.orderdetail.Rows(i).Item("prodcode"))
								cmd.CommandText = commandtext
								cmd.ExecuteNonQuery() 'insert tmp orderdetail
								commandtext = "insert into orderdetail (orderid,schtype,quantity,price,totalprice,prodcode) values(@orderid,@schtype,@quantity,@price,@totalprice,@prodcode);"
								cmd.CommandText = commandtext
								cmd.ExecuteNonQuery() 'insert orderdetail
							Next
									trans.Commit()
									ordergood = True
								Catch ex As Exception 'order failed
									trans.Rollback()
									MsgBox1.Show("Error", "The following error occured:" & ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
									'ordergood is false at this point
									Return
								Finally
									connection1.Close()
								End Try
							Catch ex As Exception 'connection error
								MsgBox1.Show("Error", "The following error occured:" & ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
								Return
							End Try




			End Select
			If ordergood = True Then
				If paytype = "CC" Then
					'needs to be https when certificate is activated
					Response.Redirect("https://www.securepaymentportal.com/MeridianSecure/CreditCardPayment.aspx?orderid=" & cart.OrderId)
					'Response.Redirect("http://cmain1/MeridianSecure/CreditCardPayment.aspx?orderid=" & cart.OrderId & "&amount=" & cart.order.Rows(0).Item("total") & "&emailaddress=" & cart.order.Rows(0).Item("emailaddress"))
				ElseIf paytype = "PO" Then
					Session.Add("PO", True)
					Dim time As TimeSpan = Date.Now.TimeOfDay
					Response.Redirect("receipt.aspx?orderid=" & cart.OrderId & "&secval=" & time.ToString)
				End If

			End If
		Else

		End If 'cart is nothing


	End Sub
	Private Function GetOrderId() As Integer
		Dim connection1 As New MySqlConnection(dsState.ConnectionString)
		Dim cmd As MySqlCommand = connection1.CreateCommand()
		Dim commandtext As String = "insert into temporders (po) values(1);"
		Dim orderid As Integer
		cmd.CommandText = commandtext
		Try
			connection1.Open()
			cmd.ExecuteNonQuery()
			commandtext = "Select Last_Insert_ID()"
			cmd.CommandText = commandtext
			orderid = CInt(cmd.ExecuteScalar())
			orderid = orderid + 1

		Catch ex As Exception

		Finally
			connection1.Close()

		End Try
		Return orderid

	End Function
	Protected Sub txtnotes_TextChanged1(sender As Object, e As System.EventArgs)
		Dim notetextbox As TextBox = sender
		Dim cart As Cart = Session("Cart")
		cart.AddOrderNote(cart.order, notetextbox.Text)
	End Sub

	Protected Sub FormView2_Load(sender As Object, e As System.EventArgs) Handles FormView2.Load

	End Sub

	Protected Sub GridView1_RowEditing(sender As Object, e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
		Dim cart As Cart = Session("Cart")
		GridView1.EditIndex = e.NewEditIndex
		GridView1.DataSource = cart.orderdetail
		GridView1.DataBind()
	End Sub

	Protected Sub GridView1_RowCancelingEdit(sender As Object, e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
		Dim cart As Cart = Session("Cart")
		GridView1.EditIndex = -1
		GridView1.DataSource = cart.orderdetail
		GridView1.DataBind()
	End Sub

	Protected Sub GridView1_RowUpdated(sender As Object, e As System.Web.UI.WebControls.GridViewUpdatedEventArgs) Handles GridView1.RowUpdated

	End Sub

	Protected Sub GridView1_RowUpdating(sender As Object, e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
		Dim cart As Cart = Session("Cart")
		Dim gridview1 As GridView = sender
		Dim row As GridViewRow = gridview1.Rows(e.RowIndex)
		Dim textbox1 As TextBox = row.FindControl("textbox1") 'qty
		Dim lbldetailid As Label = row.FindControl("lbldetailid")
		Dim label11 As Label = row.FindControl("label11") 'planner
		Dim hfprodcode As HiddenField = row.FindControl("hfprodcode") 'prodcode
		Dim price As String = "0"
		Dim total As Decimal = 0
		Dim stotal As String = "0"
		Dim subtotal As Decimal
		Dim detailid As String = lbldetailid.Text
		Select Case hfprodcode.Value
			Case "HSP"
				price = "2.35"
			Case "MSP", "ELSP", "PRISP"
				price = "3.15"
			Case "HSPT"
				price = "4.50"
			Case "MSPT", "ELSPT", "PRISPT"
				price = "5.50"
			Case "FLD"
				price = "1.25"

		End Select

		total = CDec(price) * CInt(textbox1.Text)
		Dim rowtoupdate = cart.orderdetail.Select("detailid=" & detailid)
		rowtoupdate(0)("schtype") = label11.Text
		rowtoupdate(0)("prodcode") = hfprodcode.Value
		rowtoupdate(0)("quantity") = textbox1.Text
		rowtoupdate(0)("price") = price
		rowtoupdate(0)("totalprice") = total.ToString
		subtotal = cart.orderdetail.Compute("sum(totalPrice)", "")
		cart.AddSubTotal(cart.order, subtotal)
		cart.SetWeight(label11.Text, textbox1.Text)
		cart.AddShippingInfo(cart.order, GetNewShipping(cart))
		cart.AddTotal(cart.order, cart.orderdetail)
		Session("Cart") = cart


		gridview1.EditIndex = -1
		gridview1.DataSource = cart.orderdetail
		gridview1.DataBind()
		FormView2.DataSource = cart.order
		FormView2.DataBind()
	End Sub
	Private Function GetNewShipping(cart As Cart) As String
		Dim retval As String = "0"
		Dim contact(21) As String
		contact(11) = cart.order.Rows(0).Item("saddress")  'txtsaddr.Text
		contact(12) = cart.order.Rows(0).Item("saddress2")	' txtsaddr2.Text
		contact(13) = cart.order.Rows(0).Item("scity")	' txtscity.Text
		contact(15) = cart.order.Rows(0).Item("szipcode")  ' txtszip.Text
		contact(17) = cart.order.Rows(0).Item("sstate")	 ' ddlsstate.SelectedValue
		Try
			Dim amnt As Array = cart.GetShipping(contact)
			'amnt check if approved
			If amnt(2) = "True" Then
				retval = amnt(0)
				cart.AddShippingInfo(cart.order, amnt(0))
				'cart.AddTotal(cart.order, cart.orderdetail)
				'Session("Cart") = cart
				'Response.Redirect("meridianinvoice.aspx")
			Else
				retval = "0"
			End If
		Catch ex As Exception
			MsgBox1.Show("Error", ex.Message, Nothing, New EO.Web.MsgBoxButton("OK"))
		End Try
		Return retval
	End Function



	Protected Sub GridView1_RowDeleting(sender As Object, e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
		Dim cart As Cart = Session("Cart")
		Dim gridview1 As GridView = sender
		Dim row As GridViewRow = gridview1.Rows(e.RowIndex)
		Dim label1 As Label = row.FindControl("label1")	'planner
		Dim price As String = ""
		Dim total As Decimal = 0
		Dim stotal As String = "0"
		Dim subtotal As Decimal

		Try
			cart.orderdetail.Rows(e.RowIndex).Delete()
		Catch ex As Exception

		End Try


		If cart.orderdetail.Rows.Count < 1 Then
			Session.RemoveAll()
			Response.Redirect("Standard_Orders.aspx")
		End If
		subtotal = cart.orderdetail.Compute("sum(totalPrice)", "")
		cart.AddSubTotal(cart.order, subtotal)
		cart.SetWeight(label1.Text, "0")

		cart.AddShippingInfo(cart.order, GetNewShipping(cart))
		cart.AddTotal(cart.order, cart.orderdetail)
		Session("Cart") = cart


		gridview1.EditIndex = -1
		gridview1.DataSource = cart.orderdetail
		gridview1.DataBind()
		FormView2.DataSource = cart.order
		FormView2.DataBind()
	End Sub

	Protected Sub ddlschtyp_SelectedIndexChanged(sender As Object, e As System.EventArgs)
		Dim ddlschtype As DropDownList = sender
		'footer will be showing if this is fired
		Dim txtqty As TextBox = DirectCast(GridView1.FooterRow.FindControl("txtqty"), TextBox)
		Dim lbltotal As Label = DirectCast(GridView1.FooterRow.FindControl("lbltotal"), Label)
		Dim lblprice As Label = DirectCast(GridView1.FooterRow.FindControl("lblprice"), Label)
		Select Case ddlschtype.SelectedValue.ToUpper
			Case "HSP"
				lblprice.Text = "2.35"
				Dim total As Decimal = CDec(lblprice.Text) * CInt(txtqty.Text)
				lbltotal.Text = total.ToString
			Case "MSP", "ELSP", "PRISP"
				lblprice.Text = "3.15"
				Dim total As Decimal = CDec(lblprice.Text) * CInt(txtqty.Text)
				lbltotal.Text = total.ToString
			Case "HSPT"
				lblprice.Text = "4.50"
				Dim total As Decimal = CDec(lblprice.Text) * CInt(txtqty.Text)
				lbltotal.Text = total.ToString
			Case "MSPT", "ELSPT", "PRISPT"
				lblprice.Text = "5.50"
				Dim total As Decimal = CDec(lblprice.Text) * CInt(txtqty.Text)
				lbltotal.Text = total.ToString
			Case "FLD"
				lblprice.Text = "1.25"
				Dim total As Decimal = CDec(lblprice.Text) * CInt(txtqty.Text)
				lbltotal.Text = total.ToString
		End Select
	End Sub

	Protected Sub txtqty_TextChanged(sender As Object, e As System.EventArgs)
		Dim txtqty As TextBox = sender
		Dim lbltotal As Label = DirectCast(GridView1.FooterRow.FindControl("lbltotal"), Label)
		Dim lblprice As Label = DirectCast(GridView1.FooterRow.FindControl("lblprice"), Label)
		Dim total As Decimal = CInt(txtqty.Text) * CDec(lblprice.Text)
		lbltotal.Text = total.ToString
	End Sub



	Protected Sub LinkButton3_Click(sender As Object, e As System.EventArgs)
		Dim cart As Cart = Session("Cart")
		Dim ddlschtyp As DropDownList = DirectCast(GridView1.FooterRow.FindControl("ddlschtyp"), DropDownList)

		Dim txtqty As TextBox = DirectCast(GridView1.FooterRow.FindControl("txtqty"), TextBox)
		Dim lbltotal As Label = DirectCast(GridView1.FooterRow.FindControl("lbltotal"), Label)
		Dim lblprice As Label = DirectCast(GridView1.FooterRow.FindControl("lblprice"), Label)
		cart.AddToCart(cart.orderdetail, ddlschtyp.SelectedItem.Text.ToUpper, txtqty.Text, lblprice.Text, lbltotal.Text, ddlschtyp.SelectedValue.ToUpper)
		Dim subtotal As Decimal = cart.orderdetail.Compute("sum(totalPrice)", "")
		cart.AddSubTotal(cart.order, subtotal)
		cart.SetWeight(ddlschtyp.SelectedValue.ToUpper, txtqty.Text)

		cart.AddShippingInfo(cart.order, GetNewShipping(cart))
		cart.AddTotal(cart.order, cart.orderdetail)
		Session("Cart") = cart
		GridView1.ShowFooter = False

		GridView1.EditIndex = -1
		GridView1.DataSource = cart.orderdetail
		GridView1.DataBind()
		FormView2.DataSource = cart.order
		FormView2.DataBind()
	End Sub

	Protected Sub ddlschtyp_PreRender(sender As Object, e As System.EventArgs)
		Dim cart As Cart = Session("Cart")
		Dim ddlschtyp As DropDownList = DirectCast(GridView1.FooterRow.FindControl("ddlschtyp"), DropDownList)
		Dim rowcount As Integer = cart.orderdetail.Rows.Count
		Dim dataitem As String
		For i = 0 To rowcount - 1
			dataitem = cart.orderdetail.Rows(i).Item("prodcode")
			Dim ii As Integer = ddlschtyp.Items.IndexOf(ddlschtyp.Items.FindByValue(dataitem))
			If ii <> -1 Then
				ddlschtyp.Items.RemoveAt(ii)
			End If
		Next

	End Sub

	Protected Sub GridView1_PreRender(sender As Object, e As System.EventArgs) Handles GridView1.PreRender

	End Sub

	Protected Sub LinkButton4_Click(sender As Object, e As System.EventArgs)
		Dim cart As Cart = Session("Cart")
		GridView1.ShowFooter = False
		GridView1.EditIndex = -1
		GridView1.DataSource = cart.orderdetail
		GridView1.DataBind()
		FormView2.DataSource = cart.order
		FormView2.DataBind()
	End Sub

	Protected Sub LinkButton5_Click(sender As Object, e As System.EventArgs)
		Dim cart As Cart = Session("Cart")
		Dim ddlschtyp As DropDownList = DirectCast(GridView1.FooterRow.FindControl("ddlschtyp"), DropDownList)
		GridView1.ShowFooter = True


		GridView1.EditIndex = -1
		GridView1.DataSource = cart.orderdetail
		GridView1.DataBind()
	End Sub
End Class
