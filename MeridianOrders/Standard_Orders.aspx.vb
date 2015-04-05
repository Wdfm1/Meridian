
Partial Class Standard_Orders
    Inherits System.Web.UI.Page

 

    Protected Sub hsqty_TextChanged(sender As Object, e As System.EventArgs) Handles hsqty.TextChanged
        Try
			Dim amt As Decimal = CInt(hsqty.Text) * 2.35
			hstot.Text = amt.ToString("N2")
			chkhs_tchr.Enabled = True
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub msqty_TextChanged(sender As Object, e As System.EventArgs) Handles msqty.TextChanged
        'test
        Try
			Dim amt As Decimal = CInt(msqty.Text) * 3.15
			mstot.Text = amt.ToString("N2")
			chkms_tchr.Enabled = True
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub eleqty_TextChanged(sender As Object, e As System.EventArgs) Handles eleqty.TextChanged
        Try
			Dim amt As Decimal = CInt(eleqty.Text) * 3.15
			eletot.Text = amt.ToString("N2")
			chkele_tchr.Enabled = True
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub priqty_TextChanged(sender As Object, e As System.EventArgs) Handles priqty.TextChanged
        Try
			Dim amt As Decimal = CInt(priqty.Text) * 3.15
			pritot.Text = amt.ToString("N2")
			chkpri_tchr.Enabled = True

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub chkhs_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkhs.CheckedChanged
        If chkhs.Checked = False Then
            hsqty.Text = "0"
            hstot.Text = "0"
			hstot_tchr.Text = "0"
			hsqty_tchr.Text = "0"
			chkhs_tchr.Checked = False
			chkhs_tchr.Enabled = False
        End If
        numval.Enabled = chkhs.Checked
        r1.Enabled = chkhs.Checked
        hsqty.Enabled = chkhs.Checked

    End Sub

    Protected Sub chkms_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkms.CheckedChanged
        If chkms.Checked = False Then
            msqty.Text = "0"
			mstot.Text = "0"
			mstot_tchr.Text = "0"
			msqty_tchr.Text = "0"
			chkms_tchr.Checked = False
			chkms_tchr.Enabled = False
        End If
        numval0.Enabled = chkms.Checked
        r2.Enabled = chkms.Checked
        msqty.Enabled = chkms.Checked
    End Sub

    Protected Sub chkele_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkele.CheckedChanged
        If chkele.Checked = False Then
            eleqty.Text = "0"
			eletot.Text = "0"
			eletot_tchr.Text = "0"
			eleqty_tchr.Text = "0"
			chkele_tchr.Checked = False
			chkele_tchr.Enabled = False
        End If
        numval1.Enabled = chkele.Checked
        r3.Enabled = chkele.Checked
        eleqty.Enabled = chkele.Checked
    End Sub

    Protected Sub chkpri_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkpri.CheckedChanged
        If chkpri.Checked = False Then
            priqty.Text = "0"
			pritot.Text = "0"
			pritot_tchr.Text = "0"
			priqty_tchr.Text = "0"
			chkpri_tchr.Checked = False
			chkpri_tchr.Enabled = False
        End If
        numval2.Enabled = chkpri.Checked
        r4.Enabled = chkpri.Checked
        priqty.Enabled = chkpri.Checked
    End Sub
   
	Protected Sub Button2_Click(sender As Object, e As System.EventArgs) Handles Button2.Click
		If Page.IsValid Then
			If qtychk() = True Then
				Dim a As Decimal = CDec(hstot.Text) + CDec(mstot.Text) + CDec(eletot.Text) + CDec(pritot.Text) + CDec(hstot_tchr.Text) + CDec(mstot_tchr.Text) + CDec(eletot_tchr.Text) + CDec(pritot_tchr.Text) + CDec(foldertot.Text)
				If a = 0 Then
					Return 'no planner selected
				End If
				If Not IsNothing(Session("Cart")) Then
					Session.Clear()
				End If

				Dim cart As Cart
				Dim prod(8, 5) As String
				prod(0, 0) = "HIGH SCHOOL STANDARD PLANNER"
				prod(0, 1) = hsqty.Text
				prod(0, 2) = "2.35"
				prod(0, 3) = hstot.Text
				prod(0, 4) = IIf(chkhs.Checked = True, "T", "F")
				prod(0, 5) = "HSP"
				prod(1, 0) = "MIDDLE SCHOOL STANDARD PLANNER"
				prod(1, 1) = msqty.Text
				prod(1, 2) = "3.15"
				prod(1, 3) = mstot.Text
				prod(1, 4) = IIf(chkms.Checked = True, "T", "F")
				prod(1, 5) = "MSP"
				prod(2, 0) = "ELEMENTARY STANDARD PLANNER"
				prod(2, 1) = eleqty.Text
				prod(2, 2) = "3.15"
				prod(2, 3) = eletot.Text
				prod(2, 4) = IIf(chkele.Checked = True, "T", "F")
				prod(2, 5) = "ELSP"
				prod(3, 0) = "PRIMARY STANDARD PLANNER"
				prod(3, 1) = priqty.Text
				prod(3, 2) = "3.15"
				prod(3, 3) = pritot.Text
				prod(3, 4) = IIf(chkpri.Checked = True, "T", "F")
				prod(3, 5) = "PRISP"
				prod(4, 0) = "HIGH SCHOOL STANDARD TEACHER PLANNER"
				prod(4, 1) = hsqty_tchr.Text
				prod(4, 2) = "4.50"
				prod(4, 3) = hstot_tchr.Text
				prod(4, 4) = IIf(chkhs_tchr.Checked = True, "T", "F")
				prod(4, 5) = "HSPT"
				prod(5, 0) = "MIDDLE SCHOOL STANDARD TEACHER PLANNER"
				prod(5, 1) = msqty_tchr.Text
				prod(5, 2) = "5.50"
				prod(5, 3) = mstot_tchr.Text
				prod(5, 4) = IIf(chkms_tchr.Checked = True, "T", "F")
				prod(5, 5) = "MSPT"
				prod(6, 0) = "ELEMENTARY STANDARD TEACHER PLANNER"
				prod(6, 1) = eleqty_tchr.Text
				prod(6, 2) = "5.50"
				prod(6, 3) = eletot_tchr.Text
				prod(6, 4) = IIf(chkele_tchr.Checked = True, "T", "F")
				prod(6, 5) = "ELSPT"
				prod(7, 0) = "PRIMARY STANDARD TEACHER PLANNER"
				prod(7, 1) = priqty_tchr.Text
				prod(7, 2) = "5.50"
				prod(7, 3) = pritot_tchr.Text
				prod(7, 4) = IIf(chkpri_tchr.Checked = True, "T", "F")
				prod(7, 5) = "PRISPT"
				prod(8, 0) = "APPLE FOLDER"
				prod(8, 1) = folderqty.Text
				prod(8, 2) = "1.25"
				prod(8, 3) = foldertot.Text
				prod(8, 4) = IIf(chkfolder.Checked = True, "T", "F")
				prod(8, 5) = "FLD"
				Dim i As Integer

				If IsNothing(Session("Cart")) Then
					cart = New Cart
					For i = 0 To 8
						If prod(i, 4) = "T" Then
							cart.AddToCart(cart.orderdetail, prod(i, 0), prod(i, 1), prod(i, 2), prod(i, 3), prod(i, 5))
							If prod(i, 5) = "FLD" Then
								cart.AddFldShipping(prod, i)

							End If
						End If
					Next
					Dim total(2) As String
					Dim subtot As Decimal = CDec(hstot.Text) + CDec(mstot.Text) + CDec(eletot.Text) + CDec(pritot.Text) + CDec(hstot_tchr.Text) + CDec(mstot_tchr.Text) + CDec(eletot_tchr.Text) + CDec(pritot_tchr.Text) + CDec(foldertot.Text)
					cart.AddSubTotal(cart.order, subtot)
					Session.Add("Cart", cart)
					Response.Redirect("BillingInfo.aspx")
				Else
					Session.Clear()
					cart = New Cart
					For i = 0 To 8
						If prod(i, 4) = "T" Then
							cart.AddToCart(cart.orderdetail, prod(i, 0), prod(i, 1), prod(i, 2), prod(i, 3), prod(i, 5))
							If prod(i, 5) = "FLD" Then
								cart.AddFldShipping(prod, i)

							End If
						End If
					Next
					Dim total(2) As String
					Dim subtot As Decimal = CDec(hstot.Text) + CDec(mstot.Text) + CDec(eletot.Text) + CDec(pritot.Text) + CDec(hstot_tchr.Text) + CDec(mstot_tchr.Text) + CDec(eletot_tchr.Text) + CDec(pritot_tchr.Text) + CDec(foldertot.Text)
					cart.AddSubTotal(cart.order, subtot)
					Session.Add("Cart", cart)
					Response.Redirect("BillingInfo.aspx")
				End If
			End If
		End If
	End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Page.Response.AppendHeader("Cache-Control", "no-store, no-cache, must-revalidate, post-check=0, pre-check=0")
        Page.MaintainScrollPositionOnPostBack = True
        
        If Not IsPostBack Then
            Session.Add("NewOrder", True)
        End If
        If Session("Invoiced") = True Then
            Response.Redirect("meridianinvoice.aspx")
        End If
    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        Dim retval As Boolean = True
		Dim a As Decimal = CDec(hstot.Text) + CDec(mstot.Text) + CDec(eletot.Text) + CDec(pritot.Text) + CDec(foldertot.Text)
		If a = 0 Then
            retval = False 'no planner selected
        End If
        args.IsValid = retval
    End Sub

    Private Function qtychk() As Boolean
        Dim retval As Boolean = True
        Dim qtytot As Integer = CInt(hsqty.Text) + CInt(msqty.Text) + CInt(priqty.Text) + CInt(eleqty.Text)
        If qtytot > 499 Then
            MsgBox1.Show("Quantity", "Your quantity is over 500. Please contact us at 888-724-8512 for a reduced shipping rate.", Nothing, New EO.Web.MsgBoxButton("OK"))
            Return False
        End If
        Select Case True
            Case chkhs.Checked
                If CInt(hsqty.Text) < 25 Then
                    retval = False
                End If
            Case chkms.Checked
                If CInt(msqty.Text) < 25 Then
                    retval = False
                End If
            Case chkpri.Checked
                If CInt(priqty.Text) < 25 Then
                    retval = False
                End If
            Case chkele.Checked
                If CInt(eleqty.Text) < 25 Then
                    retval = False
                End If
        End Select
        Return retval
    End Function

	Protected Sub chkhs_tchr_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkhs_tchr.CheckedChanged
		If chkhs_tchr.Checked = False Then
			hsqty_tchr.Text = "0"
			hstot_tchr.Text = "0"
		End If
		numval0.Enabled = chkhs_tchr.Checked
		hsqty_tchr.Enabled = chkhs_tchr.Checked
	End Sub

	Protected Sub chkms_tchr_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkms_tchr.CheckedChanged
		If chkms_tchr.Checked = False Then
			msqty_tchr.Text = "0"
			mstot_tchr.Text = "0"
		End If
		numval00.Enabled = chkms_tchr.Checked
		msqty_tchr.Enabled = chkms_tchr.Checked
	End Sub
	Protected Sub chkele_tchr_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkele_tchr.CheckedChanged
		If chkele_tchr.Checked = False Then
			eleqty_tchr.Text = "0"
			eletot_tchr.Text = "0"
		End If
		numval10.Enabled = chkele_tchr.Checked
		eleqty_tchr.Enabled = chkele_tchr.Checked
	End Sub

	Protected Sub chkpri_tchr_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkpri_tchr.CheckedChanged
		If chkpri_tchr.Checked = False Then
			priqty_tchr.Text = "0"
			pritot_tchr.Text = "0"
		End If
		numval330.Enabled = chkpri_tchr.Checked
		priqty_tchr.Enabled = chkpri_tchr.Checked
	End Sub

	Protected Sub hsqty_tchr_TextChanged(sender As Object, e As System.EventArgs) Handles hsqty_tchr.TextChanged
		Try
			Dim amt As Decimal = CInt(hsqty_tchr.Text) * 4.5
			hstot_tchr.Text = amt.ToString("N2")
		Catch ex As Exception

		End Try
	End Sub

	Protected Sub msqty_tchr_TextChanged(sender As Object, e As System.EventArgs) Handles msqty_tchr.TextChanged
		Try
			Dim amt As Decimal = CInt(msqty_tchr.Text) * 5.5
			mstot_tchr.Text = amt.ToString("N2")
		Catch ex As Exception

		End Try
	End Sub

	Protected Sub eleqty_tchr_TextChanged(sender As Object, e As System.EventArgs) Handles eleqty_tchr.TextChanged
		Try
			Dim amt As Decimal = CInt(eleqty_tchr.Text) * 5.5
			eletot_tchr.Text = amt.ToString("N2")
		Catch ex As Exception

		End Try
	End Sub

	Protected Sub priqty_tchr_TextChanged(sender As Object, e As System.EventArgs) Handles priqty_tchr.TextChanged
		Try
			Dim amt As Decimal = CInt(priqty_tchr.Text) * 5.5
			pritot_tchr.Text = amt.ToString("N2")
		Catch ex As Exception

		End Try
	End Sub

	Protected Sub chkfolder_CheckedChanged(sender As Object, e As System.EventArgs) Handles chkfolder.CheckedChanged
		If chkfolder.Checked = False Then
			folderqty.Text = "0"
			foldertot.Text = "0"
		End If
		numval200.Enabled = chkfolder.Checked
		r40.Enabled = chkfolder.Checked
		folderqty.Enabled = chkfolder.Checked
	End Sub

	Protected Sub folderqty_TextChanged(sender As Object, e As System.EventArgs) Handles folderqty.TextChanged
		Try
			Dim amt As Decimal = CInt(folderqty.Text) * 1.25
			foldertot.Text = amt.ToString("N2")
		Catch ex As Exception

		End Try
	End Sub

	Protected Sub r40_ServerValidate(source As Object, args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles r40.ServerValidate
		Dim retval As Boolean = True
		r40.ErrorMessage = "Quantities must be in packages of 25."

		Try
			If CInt(folderqty.Text) < 25 Then
				retval = False
			End If
			If CInt(folderqty.Text) Mod 25 <> 0 Then
				retval = False
			End If
		Catch ex As Exception
			retval = False
		End Try
		args.IsValid = retval
	End Sub
End Class
