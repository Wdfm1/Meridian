<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BillingInfo.aspx.vb" Inherits="BillingInfo" %>
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>
<!DOCTYPE html>
<html lang="en"><!-- InstanceBegin template="/Templates/meridian_temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Meridian Student Planner - Billing Information</title>
<!-- InstanceEndEditable -->
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/my-styles.css" rel="stylesheet" media="screen"/>
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <link href="../css/ifIE8.css" rel="stylesheet">
    <![endif]-->
<!-- InstanceBeginEditable name="head" -->
  
<link href="CSS/MER_online_pay.css" rel="stylesheet" type="text/css" />

<!-- InstanceEndEditable -->


</head>

<body>
<!-- Navbar -->

    <div class="navbar navbar-default navbar-fixed-top">
      <div class="container">
      <div class="social">
      <a href="https://www.facebook.com/pages/Meridian-Student-Planners/795395007154826?ref=hl" data-icon="&#xe602;" target="_blank"></a>
      <a href="https://plus.google.com/u/0/b/114079852376285820502/106570699264649796168/videos" data-icon="&#xe601;" target="_blank"></a>
      <a href="https://www.youtube.com/channel/UCaamzAbb5V01rYsF15Vbfjw/feed" data-icon="&#xf167;" target="_blank"></a>
      <a class="glyphicon glyphicon-envelope" href="mailto: sales@meridianplanners.com"></a>
      </div>
      <div class="phone-number pull-right">
      <b class="glyphicon glyphicon-phone-alt"></b><img src="img/phone.png"> 
      </div>     
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

	<div class="container cust-container" >
    <h1>Standard Planner Cover Orders</h1>
    <table class="table table-responsive table-striped">
  <tr>
    <td colspan="2"><h2>Billing Information</h2></td>
    <td colspan="2"><h2>Shipping Information</h2></td>
  </tr>
  <tr>
    <td align="right">&nbsp;</td>
    <td align="left"></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td align="right">School/Company:</td> 
    <td align="left"><asp:TextBox ID="txtcompany" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="1" MaxLength="45"></asp:TextBox></td>
    <td align="right">School/Company:</td> 
    <td><asp:TextBox ID="txtscompany" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="11" MaxLength="45"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right">First Name: </td>
    <td align="left"><asp:TextBox ID="txtfname" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="2" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="Name Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">First Name: </td>
    <td><asp:TextBox ID="txtsfname" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="12" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtsfname" Display="Dynamic" ErrorMessage="Name Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Last Name: </td>
    <td align="left"><asp:TextBox ID="txtlname" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="3" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Name Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">Last Name: </td>
    <td><asp:TextBox ID="txtslname" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="13" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtslname" Display="Dynamic" ErrorMessage="Name Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Address: </td>
    <td align="left"><asp:TextBox ID="txtaddr" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="4" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddr" Display="Dynamic" ErrorMessage="Address Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">Address: </td>
    <td><asp:TextBox ID="txtsaddr" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="14" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtsaddr" Display="Dynamic" ErrorMessage="Address Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Address 2: </td>
    <td align="left"><asp:TextBox ID="txtaddr2" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="5" MaxLength="45"></asp:TextBox></td>
    <td align="right">Address 2: </td>
    <td><asp:TextBox ID="txtsaddr2" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="15" MaxLength="45"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right">City: </td>
    <td align="left"><asp:TextBox ID="txtcity" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="6" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="City Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">City: </td>
    <td><asp:TextBox ID="txtscity" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="16" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtscity" Display="Dynamic" ErrorMessage="City Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">State: </td>
    <td align="left"><asp:DropDownList ID="ddlstate" runat="server" Width="265px" ValidationGroup="g1" DataSourceID="dsState" DataTextField="name" DataValueField="abrv" TabIndex="7"></asp:DropDownList>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlstate" Display="Dynamic" ErrorMessage="State Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">State: </td>
    <td><asp:DropDownList ID="ddlsstate" runat="server" Width="265px" ValidationGroup="g1" DataSourceID="dsState" DataTextField="name" DataValueField="abrv" TabIndex="17">
      <asp:ListItem>v</asp:ListItem>
    </asp:DropDownList>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlsstate" Display="Dynamic" ErrorMessage="State Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Zip Code: </td>
    <td align="left"><asp:TextBox ID="txtzip" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="8" MaxLength="11"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtzip" Display="Dynamic" ErrorMessage="Zip Code Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td align="right">Zip Code: </td>
    <td><asp:TextBox ID="txtszip" runat="server" Width="265px" ValidationGroup="g1" 
            TabIndex="18" MaxLength="11"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtszip" Display="Dynamic" ErrorMessage="Zip Code Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
  	<td align="right">Email Address: </td>
    <td align="left"><asp:TextBox ID="txtemail" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="9" MaxLength="45"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Email Address Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td colspan="2" align="right">Ship by date: <asp:CheckBox ID="chk48sho" runat="server" Text="Ship my planners within 48 hours" AutoPostBack="True" ForeColor="Black" Checked="True" TabIndex="19" /></td>
    </tr>
  <tr>  
  	<td align="right">Phone Number: </td>
    <td align="left"><asp:TextBox ID="txtphonenumber" runat="server" Width="265px" 
            ValidationGroup="g1" TabIndex="10" MaxLength="14"></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtphonenumber" Display="Dynamic" ErrorMessage="Phone Number Required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator></td>
    <td colspan="2" align="right"><asp:CheckBox ID="chkdate" runat="server" Text="Ship my planners by" AutoPostBack="True" ForeColor="Black" TabIndex="20" />          <eo:DatePicker ID="DatePicker1" runat="server" ControlSkinID="None" 
                DayCellHeight="16" DayCellWidth="22" DayHeaderFormat="Short" DisabledDates="" 
                MonthSelectorVisible="True" SelectedDates=
                "" TitleLeftArrowImageUrl="00040101" 
                TitleRightArrowDownImageUrl="00040104" TitleRightArrowImageUrl="00040102" 
                VisibleDate="2013-05-01" WeekSelectorVisible="True" Height="20px" 
        Width="134px" TitleLeftArrowDownImageUrl="00040103" AllowMultiSelect="False" 
                    TabIndex="21" Enabled="False">
        <PickerStyle CssText="" />
        <CalendarStyle CssText="background-color:white;border-bottom-color:Black;border-bottom-style:solid;border-bottom-width:1px;border-left-color:Black;border-left-style:solid;border-left-width:1px;border-right-color:Black;border-right-style:solid;border-right-width:1px;border-top-color:Black;border-top-style:solid;border-top-width:1px;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:0px;" />
        <TitleStyle CssText="PADDING-RIGHT: 3px; PADDING-LEFT: 3px; FONT-WEIGHT: bold; FONT-SIZE: 8pt; PADDING-BOTTOM: 3px; COLOR: white; PADDING-TOP: 3px; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #0054e3" />
        <MonthStyle CssText="MARGIN: 0px 4px; cursor:hand" />
        <DayHeaderStyle CssText="FONT-SIZE: 11px; COLOR: #0054e3; BORDER-BOTTOM: black 1px solid; FONT-FAMILY: Tahoma" />
        <DayStyle CssText="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma; text-decoration:none" />
        <DayHoverStyle CssText="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma; text-decoration:underline" />
        <TodayStyle CssText="background-image:url('00040106');" />
        <SelectedDayStyle CssText="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma; background-image:url('00040105');color:white;" />
        <DisabledDayStyle CssText="FONT-SIZE: 8pt; FONT-FAMILY: Tahoma; COLOR: gray" />
        <FooterTemplate>
         
            <img src="{img:00040106}" /> Today: {var:today:MM/dd/yyyy}

          </FooterTemplate>
      </eo:DatePicker></td>
    </tr>
    <tr>
    	<td></td>
        <td align="left"><asp:Button ID="Button2" runat="server" Text="Copy Billing Info To Shipping Info" /></td>
        <td></td>
        <td></td>
    
    </tr>
  <tr>  
  	<td colspan="2" align="right"><asp:Label ID="Label1" runat="server" style="display:none" Text="Contacting UPS for shipping cost. Please be patient."></asp:Label><asp:Image ID="Image1" runat="server" style="display:none" ImageUrl="~/images/loading.gif" />
					<script type="text/javascript">
                      function ShowImage() 
					  {
                          document.getElementById('Image1').style.display = 'inherit';
                          document.getElementById('Label1').style.display = 'inherit';
                      }
					</script></td>
    
    <td colspan="2" align="right"><asp:Button ID="Button1" runat="server" Text="Check Out" ValidationGroup="g1" 
                    TabIndex="22" onclientclick="ShowImage()" /></td>
  </tr>
</table>

<eo:MsgBox 
        ID="MsgBox1" runat="server" BackColor="#EBEBEB" CloseButtonUrl="00070301" 
        ControlSkinID="None" HeaderHtml="Dialog Title" Height="216px" Width="320px" 
          ForeColor="Black">
    <HeaderStyleActive CssText="padding-right: 3px; padding-left: 8px; font-weight: bold; font-size: 10pt; background-image: url(00020213); padding-bottom: 3px; color: white; padding-top: 0px; font-family: 'trebuchet ms';height:20px;" />
    <ContentStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
    <FooterStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
    <BorderImages BottomBorder="00020212" BottomLeftCorner="00020207" 
        BottomRightCorner="00020208" LeftBorder="00020210" RightBorder="00020211" 
        TopBorder="00020209" TopLeftCorner="00020201" TopLeftCornerBottom="00020203" 
        TopLeftCornerRight="00020202" TopRightCorner="00020204" 
        TopRightCornerBottom="00020206" TopRightCornerLeft="00020205" />
    </eo:MsgBox>
    </div>
    

<asp:SqlDataSource ID="dsState" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MeridianConn %>" 
        ProviderName="<%$ ConnectionStrings:MeridianConn.ProviderName %>" 
        SelectCommand="SELECT name, abrv, id FROM states ORDER BY name">
    </asp:SqlDataSource>
</form>

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

<!-- InstanceBeginEditable name="Google" -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-6632598-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- InstanceEndEditable --> 

<script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
<!-- InstanceEnd --></html>

    

