<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Receipt.aspx.vb" Inherits="Receipt" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html>
<html lang="en"><!-- InstanceBegin template="/Templates/meridian_temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Meridian Student Planner</title>
<!-- InstanceEndEditable -->
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
     <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <link href="css/my-styles.css" rel="stylesheet" media="screen">
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css">
   
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <link href="../css/ifIE8.css" rel="stylesheet">
    <![endif]-->
<!-- InstanceBeginEditable name="head" -->


<meta name="Keywords" content="planner cover, planner covers, student planner cover, student planner covers, best student planner covers" />
<meta name="Description" content="Select a standard planner and receive a free professionally-designed cover." />
<meta name="google-site-verification" content="Y2yOlQO1VkohmVhTwU_e-g6nzby-1rzEoxHcKH2mKc8" />
<link href="CSS/MER_online_pay.css" rel="stylesheet" type="text/css" />

<!-- InstanceEndEditable -->


</head>

<body>
<!-- Navbar -->

    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
      <div class="phone-number pull-right visible-lg"><b class="glyphicon glyphicon-phone-alt"></b>&nbsp;&nbsp;1-888-724-8512</div>     
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand main-logo" href="../index.html"></a>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <!-- InstanceBeginEditable name="activeLink1" -->
            <li><a href="../index.html">home</a></li>
            <!-- InstanceEndEditable -->
			<!-- InstanceBeginEditable name="activeLink2" -->
            <li class="dropdown">
            <!-- InstanceEndEditable --> 
            	<a data-toggle="dropdown" href="#">eplanners<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="../prime-main.html">Meridian PRIME&#8482; eplanner</a></li>
                <li class="divider"></li>
                <li><a href="../prime-for-students.html">for students</a></li>
                <li><a href="../prime-for-teachers.html">for teachers</a></li>
                <li><a href="../prime-for-admin.html">for administrators</a></li>
                <li><a href="../prime-for-parent.html">for parents</a></li>
            </ul>
            </li>
            <!-- InstanceBeginEditable name="activeLink3" -->
            <li class="dropdown">
            <!-- InstanceEndEditable -->
              <a data-toggle="dropdown" href="#">printed planners<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="../meridian-student-planners.html">Meridian Student Planners</a></li>
                <li class="divider"></li>
                <li><a href="../primary-student-planner.html">primary school planner</a></li>
                <li><a href="../elementary-student-planner.html">elementary school planner</a></li>
                <li><a href="../middle-school-student-planner.html">middle school planner</a></li>
                <li><a href="../high-school-student-planner.html">high school student planner</a></li>
                <li class="divider"></li>
                <li><a href="../covers.html">covers</a></li>
                <li><a href="../folders-wall_charts/index.html">folders/wall charts</a></li>
                <li><a href="../accessories.html">accessories</a></li>
              </ul>
            </li>
            <!-- InstanceBeginEditable name="activeLink4" -->
            <li class="dropdown active">
            <!-- InstanceEndEditable -->
              <a data-toggle="dropdown" href="#">orders<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="http://www.meridianplanners.com/quote/">personalized quote</a></li>
                <li><a href="http://www.meridianplanners.com/Orders/">standard planners</a></li>
                <li><a href="http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Doffice-products&field-keywords=meridian+student+planner&rh=n%3A1064954%2Ck%3Ameridian+student+planner" target='_blank'>Amazon</a></li>
                <li class="divider"></li>
                <li><a href="../customercenter.html">customer center</a></li>
              </ul>
              
            </li>

          </ul>
        </div>
      </div> 
<!-- End navbar -->
</div>

    <!-- Jumbotron -->
<!-- InstanceBeginEditable name="jumbotron" -->
 
<!-- InstanceEndEditable -->
    <!-- End Jumbotron -->

	<!-- e-Planner Content -->
<!-- InstanceBeginEditable name="Content1" -->
<form id="form1" runat="server">
	<div class="container cust-container">
    <h1>Standard Planner Cover Orders</h1>
    <div class="title_center">
    <asp:Label ID="Label4" runat="server" Text="Thank you for your order #"></asp:Label>
	<br />
	<asp:Label ID="Label3" runat="server" 
		Text="Please print this information for your records." ></asp:Label>
    </div>
	<div class="title_billinginfo">Billing Information</div>
	<div class="title_billinginfo">Shipping Information</div>
    <div style="clear:left"></div>
    
    <div class="receipt_billinginfo"><asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
					CellPadding="4" DataSourceID="dsorders_details" ForeColor="#333333" GridLines="None" 
					Height="91px" Width="420px" DataKeyNames="orderid" Font-Size="Smaller">
					<AlternatingRowStyle BackColor="White" />
					<CommandRowStyle BackColor="#FFCC66" Font-Bold="True" />
					<FieldHeaderStyle BackColor="#AACBEA" Font-Bold="True" Width="100px" />
					<Fields>
						<asp:BoundField DataField="company" HeaderText="School/Company" 
                            SortExpression="company" />
						<asp:BoundField DataField="fname" HeaderText="First Name" 
							SortExpression="fname" />
						<asp:BoundField DataField="lname" HeaderText="Last Name" 
							SortExpression="lname" />
						<asp:BoundField DataField="address" HeaderText="Address" 
							SortExpression="address" />
						<asp:BoundField DataField="address2" HeaderText="Address 2" 
							SortExpression="address2" />
						<asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
						<asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
						<asp:BoundField DataField="zipcode" HeaderText="Zip Code" 
							SortExpression="zipcode" />
						<asp:BoundField DataField="emailaddress" HeaderText="Email" 
                            SortExpression="emailaddress" />
						<asp:BoundField DataField="phonenumber" HeaderText="Phone" 
                            SortExpression="phonenumber" />
					</Fields>
					<FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
					<HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="#AACBEA" ForeColor="#333333" HorizontalAlign="Center" />
					<RowStyle BackColor="#D7E9F7" ForeColor="#333333" />
				</asp:DetailsView>
    </div>
    <div class="receipt_billinginfo">
    		<asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
					CellPadding="4" DataKeyNames="orderid" DataSourceID="dsorders_details" 
					ForeColor="#333333" GridLines="None" Height="91px" Width="420px" 
					Font-Size="Smaller" BackColor="White">
					<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
					<CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
					<EditRowStyle BackColor="#999999" />
					<FieldHeaderStyle BackColor="#AACBEA" Font-Bold="True" Width="100px" />
					<Fields>
						<asp:BoundField DataField="scompany" HeaderText="Company" 
                            SortExpression="scompany" />
                        <asp:BoundField DataField="sfname" HeaderText="First Name" 
                            SortExpression="sfname" />
						<asp:BoundField DataField="slname" HeaderText="Last Name" 
							SortExpression="slname" />
						<asp:BoundField DataField="saddress" HeaderText="Address" 
							SortExpression="saddress" />
						<asp:BoundField DataField="saddress2" HeaderText="Address" 
							SortExpression="saddress2" />
						<asp:BoundField DataField="scity" HeaderText="City" 
							SortExpression="scity" />
						<asp:BoundField DataField="sstate" HeaderText="State" 
							SortExpression="sstate" />
						<asp:BoundField DataField="szipcode" HeaderText="Zip Code" 
                            SortExpression="szipcode" />
						<asp:BoundField DataField="shipdate" HeaderText="Ship Date" 
							SortExpression="shipdate" DataFormatString="{0:d}" />
						<asp:BoundField DataField="orderdate" HeaderText="Order Date" 
							SortExpression="orderdate" DataFormatString="{0:d}" />
					</Fields>
					<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
					<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
					<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
					<RowStyle BackColor="#D7E9F7" ForeColor="#333333" />
				</asp:DetailsView>
		</div>
        <div style="clear:left"></div>
 <div id="OrderGrid" style="height: auto; margin-left:20px; font-family:Arial, Helvetica, sans-serif; font-size:14px">
        <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderWidth="1px" CellPadding="2" 
            ForeColor="Black" GridLines="None" Height="56px" Width="877px" 
            DataSourceID="dsorders_details">
            <AlternatingRowStyle BackColor="#D7E9F7" />
            <Columns>
                <asp:BoundField DataField="schtype" HeaderText="Planner" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Price" DataField="price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Quantity" DataField="quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField HeaderText="Total" DataField="totalprice" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#AACBEA" />
            <HeaderStyle BackColor="#AACBEA" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFEAD5" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    </div>       
    
    <div style="clear:left"></div>
    <div class="reciept_container">
       <asp:FormView ID="FormView2" runat="server" Width="895px" 
            Height="120px" DefaultMode="Edit" DataSourceID="dsorders_details"> 
   		<EditItemTemplate>
		<div class="reciept_note">
        Notes:<asp:TextBox ID="TextBox17" runat="server" Height="70px" Width="560px" 
                TextMode="MultiLine" ReadOnly="True" Text='<%# Bind("notes") %>' 
                BorderStyle="Solid"></asp:TextBox>
        <br />
        <br />
        Transaction Id: <asp:TextBox ID="TextBox1" runat="server" Width="200px" 
                ReadOnly="True" Text='<%# Bind("transid") %>'></asp:TextBox> 
		</div>
		<div class="reciept_totals_box">
		<div class="invoice_totals_boxTITLES">SubTotal:</div>
		<div class="invoice_totals_textbox">
        <asp:TextBox ID="txtsubtotal" runat="server" Text='<%# Eval("subtotal") %>' 
                    ReadOnly="True" Width="88px"></asp:TextBox>
        </div>
		<div class="invoice_totals_boxTITLES">Shipping:</div>
		<div class="invoice_totals_textbox">
        <asp:TextBox ID="txtshipping" runat="server" Text='<%# eval("shippingcost") %>' 
                    ReadOnly="True" Width="88px"></asp:TextBox>
        </div>
		<div class="invoice_totals_boxTITLES">Total:</div>
		<div class="invoice_totals_textbox">
        <asp:TextBox ID="txttotal" runat="server" Text='<%# eval("total") %>' 
                ReadOnly="True" Width="88px"></asp:TextBox>
        </div>
		</div>
		</EditItemTemplate>
          </asp:FormView>
    </div>
	</div>   

</form>
<asp:SqlDataSource ID="dsorders_details" runat="server" 
            ConnectionString="<%$ ConnectionStrings:MeridianConn %>" 
            ProviderName="<%$ ConnectionStrings:MeridianConn.ProviderName %>" 
            
            SelectCommand="SELECT orders.orderid, orders.fname, orders.lname, orders.address, orders.address2, orders.city, orders.state, orders.zipcode, orders.emailaddress, orders.sfname, orders.slname, orders.saddress, orders.saddress2, orders.scity, orders.sstate, orders.szipcode, orders.shipdate, orders.orderdate, orderdetail.schtype, orderdetail.quantity, orderdetail.price, orderdetail.totalprice, payment.transid, orders.company, orders.scompany, orders.phonenumber, orders.subtotal, orders.shippingcost, orders.total, orders.notes FROM orders INNER JOIN orderdetail ON orders.orderid = orderdetail.orderid LEFT OUTER JOIN payment ON orders.orderid = payment.orderid WHERE (orders.orderid = @orderid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="orderid" QueryStringField="orderid" />
    </SelectParameters>
        </asp:SqlDataSource>
        <eo:MsgBox ID="MsgBox1" runat="server" BackColor="#EBEBEB" 
            CloseButtonUrl="00070301" ControlSkinID="None" HeaderHtml="Dialog Title" 
            Height="216px" Width="320px">
            <HeaderStyleActive CssText="padding-right: 3px; padding-left: 8px; font-weight: bold; font-size: 10pt; background-image: url(00020213); padding-bottom: 3px; color: white; padding-top: 0px; font-family: 'trebuchet ms';height:20px;" />
            <ContentStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <FooterStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <BorderImages BottomBorder="00020212" BottomLeftCorner="00020207" 
                BottomRightCorner="00020208" LeftBorder="00020210" RightBorder="00020211" 
                TopBorder="00020209" TopLeftCorner="00020201" TopLeftCornerBottom="00020203" 
                TopLeftCornerRight="00020202" TopRightCorner="00020204" 
                TopRightCornerBottom="00020206" TopRightCornerLeft="00020205" />
        </eo:MsgBox>

<!-- InstanceEndEditable -->
    <!-- End e-Planner Content -->
     

<!-- Student Planner Content -->
<!-- InstanceBeginEditable name="Content2" -->
<div class="container">
  <div class="row">
    
    </div>
  </div>
  
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-6632598-1']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script><!-- InstanceEndEditable --><!-- End Student Planner Content -->    
    
<!-- Footer -->
    <footer class="main-footer">
    <div class="container">         
	  <div class="row">
        <div class="col-sm-3">
           <div class="msp-logo"></div>
              <div class="mission-text">
                Our mission is to provide your school with a planner that will guide students through the year, help them stay organized and encourage communication between parents and teachers. Our planners are offered in print or as an interactive eplanner.
              </div>
          </div>
        <div class="col-sm-3 col-sm-offset-1">
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-calendar"></b>Planner Solutions</li>
              <li><a href="../prime-main.html">Electronic Planners
</a></li>
				<ul class="sub-link-list">
                <li><a href="../prime-for-students.html">for students</a></li>
                <li><a href="../prime-for-teachers.html">for teachers</a></li>
                <li><a href="../prime-for-admin.html">for administrators</a></li>
                <li><a href="../prime-for-parent.html">for parents</a></li>
                </ul>
				<li><a href="../meridian-student-planners.html">Printed Planners</a></li>
              <ul class="sub-link-list">
              <li><a href="../primary-student-planner.html">Primary Planners</a></li>
              <li><a href="../elementary-student-planner.html">Elementary Planners</a></li>
              <li><a href="../middle-school-student-planner.html">Middle School Planners</a></li>
				<li><a href="../high-school-student-planner.html">High School Planners</a></li>
              </ul>
             </ul>            
          </div>
        <div class="col-sm-3">
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-home"></b>More About Us</li>
              <li><a href="../aboutus.html">About Us</a></li>
              <li><a href="../contact/index.html">Contact Us</a></li>
              <li><a href="../privacypolicy.html">Privacy Policy</a></li>
            </ul>
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-map-marker"></b>Get in touch</li>
              <li>Meridian Student Planners</li>
              <li>3131 W Main Street</li>
              <li>Sedalia, MO 65301</li>
              <li><a href="mailto:sales@meridianplanners.com">sales@meridianplanners.com</a></li>
              <li>1-888-724-8512</li>
            </ul>
          </div>
          <div class="col-sm-2">
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-calendar"></b>Order</li>
              <li><a href="http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Doffice-products&field-keywords=meridian+student+planner&rh=n%3A1064954%2Ck%3Ameridian+student+planner" target="_blank">Planners on Amazon</a></li>
              <li><a href="http://www.meridianplanners.com/Orders/">Standard Planners</a></li>
              <li><a href="http://www.meridianplanners.com/quote">Personalized Planners</a></li>
            </ul>
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-user"></b>Customer Center</li>
              <li><a href="../customercenter.html">Forms and Templates</a></li>
            </ul>
            <ul class="link-list">
              <li class="heading"><b class="glyphicon glyphicon-plus-sign"></b><a href="#">Extras</a></li>
              <li><a href="../folders-wall_charts/index.html">Folder/Wall Charts</a></li>
              <li><a href="../covers.html">Cover Options</a></li>
              <li><a href="../accessories.html">Accessories</a></li>
            </ul>
          </div>
      	</div>
          
            <div class="copyright">&copy; 2014 Meridian Student Planners</div>
          
        </div>
        </div>
      </div>
</footer>
<!-- End of Footer -->  
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-6632598-1']);
  _gaq.push(['_trackPageview']);
  _gaq.push(['_trackEvent', 'demo_home', 'submit', 'index']);
  _gaq.push(['_trackEvent', 'demo_main', 'submit', 'prime_main']);
  _gaq.push(['_trackEvent', 'demo_student', 'submit', 'student']);
  _gaq.push(['_trackEvent', 'demo_teacher', 'submit', 'teacher']);
  _gaq.push(['_trackEvent', 'demo_parent', 'submit', 'parent']);
  _gaq.push(['_trackEvent', 'demo_admin', 'submit', 'admin']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
 

<script src="http://code.jquery.com/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
<!-- InstanceEnd --></html>
