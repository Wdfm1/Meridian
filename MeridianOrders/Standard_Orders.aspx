<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Standard_Orders.aspx.vb" Inherits="Standard_Orders" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html>
<html lang="en"><!-- InstanceBegin template="/Templates/meridian_temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Meridian Student Planner - Order Your Standard Planners</title>
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

<meta http-equiv="x-ua-compatible" content="IE=10" />
<meta name="Keywords" content="planner cover, planner covers, student planner cover, student planner covers, best student planner covers" />
<meta name="Description" content="Select a standard student planner and receive a free professionally-designed cover." />
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
      <b class="glyphicon glyphicon-phone-alt"></b><img src="images/phone.png"> 
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

	<div class="container orders-container" >
	  <h1>Standard Planners and Folders</h1>
      <div class="row">
        <div class="col-sm-12"><h2>Stock Covers</h2>
        <p>These covers are included with your order of standard student planners or standard teacher planners.
        </div>
      </div>
<div class="row">
      <div class="col-sm-2 col-xs-4">
			<div class="panel panel-default">
                <div class="panel-heading"><h2 class="panel-title">Year By Year</h2></div>
                <div class="panel-body"><img class="img-responsive" src="images/HS_MS_STAND_COVER.jpg" alt="High School / Middle School Covers" />
                  <p class="sm-text">High School(5&frac12; x 8&frac12;)<br>Middle School(8&frac12; x 11)</p>
                </div>
           </div>
      </div>
        <div class="col-sm-2 col-xs-4">
           <div class="panel panel-default">
                <div class="panel-heading"><h2 class="panel-title">Apple</h2></div>
                <div class="panel-body"><img class="img-responsive" src="images/LG_Apple_STANDARD.jpg" alt="Elementary Standard Cover" />
                  <p class="sm-text">Elementary (8&frac12; x 11)</p>
           		</div>
       	  </div>        
        </div>
        <div class="col-sm-2 col-xs-4">
        <div class="panel panel-default">
                <div class="panel-heading"><h2 class="panel-title">Connections</h2></div>
                <div class="panel-body"><img class="img-responsive" src="images/ELE_connections.jpg" alt="Standard Planner Cover" />
                  <p class="sm-text">Primary (8&frac12; x 11)</p>
                </div>
          </div>
        </div>
        <div class="col-sm-5 col-xs-3 col-sm-offset-1 hidden-xs">
        <div class="panel panel-default">
                <div class="panel-heading"><h2 class="panel-title">Teacher Editions</h2></div>
                <div class="panel-body"><img class="img-responsive" src="images/teacher-ed.png" alt="Standard Planner Cover" />
                  <p class="sm-text">Teacher editions contain all the great standard planner features plus these specially designed pages for teachers that include sections of student grade records, seating charts and lesson plans.</p>
          </div>
          </div>
        </div>      
      </div>

      <div class="row">
            <div class="col-sm-12">
            <table class="table table-striped table-responsive">
                  <tr>
                    <td colspan="9"><h2>Select Standard Planner Category:</h2>
<p class="sm-text">(You may order more than one planner category, but the minimum order for standard student planners are 25 for each category. There is no minimum order for standard teacher edition planners but you must order a minimum of 25 standard student planners before teacher editions can be purchased.)</p></td>
                  </tr>
                  <tr>
                    <td colspan="4"><asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="pritot" Display="Dynamic" ErrorMessage="Please select a planner" ForeColor="Red" ValidationGroup="g1"></asp:CustomValidator><eo:MsgBox ID="MsgBox1" runat="server" BackColor="#EBEBEB" 
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

 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
					</td>
			  </tr>
  				  <tr>
                  	<td colspan="4" align="center"><h2>Student Edition</h2></td>
                    <td width="80px">&nbsp;</td>
                    <td colspan="4" align="center"><h2>Teacher Edition</h2></td>
                  </tr>
                                   
                  <tr>
                    <td colspan="2"><h2>Standard Student Planner Type</h2></td>
                    <td><h2>Quantity</h2><p class="sm-text">(min. of 25)</p></td>
                    <td><h2>Total</h2></td>
                    <td width="80px">&nbsp;</td>
                    <td colspan="2"><h2>Standard Teacher Planner Type</h2></td>
                    <td><h2>Quantity</h2><p class="sm-text">(no minimum)</p></td>
                    <td><h2>Total</h2></td>
                  </tr>
                  
                  
                  <tr>
                 
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                    <td colspan="2"> <asp:CheckBox ID="chkhs" runat="server" Text="High School Student - $2.35 each" AutoPostBack="True" /> </td>
                    <td><asp:TextBox ID="hsqty" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
                    	<asp:RegularExpressionValidator ID="numval" runat="server" ControlToValidate="hsqty" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic" Enabled="False"></asp:RegularExpressionValidator>&nbsp;
                        <asp:RangeValidator ID="r1" runat="server" ControlToValidate="hsqty" Display="Dynamic" ErrorMessage="Quantity must be 25 or greater" ForeColor="Red" 
            MaximumValue="3500" MinimumValue="25" ValidationGroup="g1" Enabled="False" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
            		</td>
                    <td><asp:TextBox ID="hstot" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                </ContentTemplate></asp:UpdatePanel>
                    
                    <td width="80px">&nbsp;</td>
                  
                  <asp:UpdatePanel ID="UpdatePanel1_Teacher" runat="server"><ContentTemplate> 
                    <td colspan="2"><asp:CheckBox ID="chkhs_tchr" runat="server" Enabled="False" Text="High School Teacher - $4.50 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="hsqty_tchr" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
                    	</br><asp:RegularExpressionValidator ID="numval0" runat="server" ControlToValidate="hsqty_tchr" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic" Enabled="False"></asp:RegularExpressionValidator>
                    </td>
                    <td><asp:TextBox ID="hstot_tchr" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                  </ContentTemplate></asp:UpdatePanel> 
                 
                 </tr>
                            
                <tr>
                  
                  <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
                    <td colspan="2"><asp:CheckBox ID="chkms" runat="server" Text="Middle School Student - $3.15 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="msqty" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br /><br />
                    	<asp:RegularExpressionValidator ID="numval0000" runat="server" ControlToValidate="msqty" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic" Enabled="False"></asp:RegularExpressionValidator>&nbsp;
                        <asp:RangeValidator ID="r2" runat="server" ControlToValidate="msqty" Display="Dynamic" ErrorMessage="Quantity must be 25 or greater" ForeColor="Red" MaximumValue="35000" MinimumValue="25" ValidationGroup="g1" Enabled="False" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td><asp:TextBox ID="mstot" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                  </ContentTemplate></asp:UpdatePanel>
                    
                    <td width="80px">&nbsp;</td>
                  
                  <asp:UpdatePanel ID="UpdatePanel2_Teacher" runat="server"><ContentTemplate>  
                    <td colspan="2"><asp:CheckBox ID="chkms_tchr" runat="server" Enabled="False" Text="Middle School Teacher - $5.50 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="msqty_tchr" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
                    	<asp:RegularExpressionValidator ID="numval00" runat="server" ControlToValidate="msqty_tchr" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic" Enabled="False"></asp:RegularExpressionValidator>
                    </td>
                    <td><asp:TextBox ID="mstot_tchr" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                  </ContentTemplate></asp:UpdatePanel>
                    
                  </tr>
                  
                  
                  
                  <tr>
                  
                  <asp:UpdatePanel ID="UpdatePanel3" runat="server"><ContentTemplate>
                    <td colspan="2"><asp:CheckBox ID="chkele" runat="server" Text="Elementary Student - $3.15 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="eleqty" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
        <asp:RegularExpressionValidator ID="numval1" runat="server" ControlToValidate="eleqty" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic"></asp:RegularExpressionValidator>&nbsp;
        <asp:RangeValidator ID="r3" runat="server" ControlToValidate="eleqty" Display="Dynamic" ErrorMessage="Quantity must be 25 or greater" ForeColor="Red" MaximumValue="35000" MinimumValue="25" ValidationGroup="g1" Enabled="False" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        			</td>
                    <td><asp:TextBox ID="eletot" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                  </ContentTemplate></asp:UpdatePanel>
                    
                    <td width="80px">&nbsp;</td>
                   
                  <asp:UpdatePanel ID="UpdatePanel3_Teacher" runat="server"><ContentTemplate> 
                    <td colspan="2"><asp:CheckBox ID="chkele_tchr" runat="server" Enabled="False" Text="Elementary Teacher - $5.50 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="eleqty_tchr" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
        <asp:RegularExpressionValidator ID="numval10" runat="server" ControlToValidate="eleqty_tchr" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Display="Dynamic"></asp:RegularExpressionValidator>
        			</td>
                    <td><asp:TextBox ID="eletot_tchr" runat="server" Width="74px" Enabled="False" ForeColor="Black">0</asp:TextBox></td>
                  </ContentTemplate></asp:UpdatePanel> 
                  
                  </tr>
                  
                  
                  
                  <tr>
                  
                  <asp:UpdatePanel ID="UpdatePanel4" runat="server"><ContentTemplate>
                    <td colspan="2"><asp:CheckBox ID="chkpri" runat="server" Text="Primary Student - $3.15 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="priqty" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
						<asp:RegularExpressionValidator ID="numval2" runat="server" ControlToValidate="priqty" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Enabled="False" Display="Dynamic"></asp:RegularExpressionValidator>&nbsp;
                        <asp:RangeValidator ID="r4" runat="server" ControlToValidate="priqty" Display="Dynamic" Enabled="False" ErrorMessage="Quantity must be 25 or greater" ForeColor="Red" MaximumValue="3500" MinimumValue="25" ValidationGroup="g1"  SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td><asp:TextBox ID="pritot" runat="server" Width="74px" Enabled="False" CausesValidation="True" ForeColor="Black">0</asp:TextBox></td>
                 </ContentTemplate></asp:UpdatePanel>
                    
                    <td width="80px">&nbsp;</td>
                    
                 <asp:UpdatePanel ID="UpdatePanel4_Teacher" runat="server"><ContentTemplate>   
                    <td colspan="2"><asp:CheckBox ID="chkpri_tchr" runat="server" Enabled="False" Text="Primary Teacher - $5.50 each" AutoPostBack="True" /></td>
                    <td><asp:TextBox ID="priqty_tchr" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox><br />
						<asp:RegularExpressionValidator ID="numval330" runat="server" ControlToValidate="priqty_tchr" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Enabled="False" Display="Dynamic"></asp:RegularExpressionValidator>&nbsp;
                    </td>
                    <td><asp:TextBox ID="pritot_tchr" runat="server" Width="74px" Enabled="False" CausesValidation="True" ForeColor="Black">0</asp:TextBox></td>
                 </ContentTemplate></asp:UpdatePanel>
                    
                  </tr>
                  
               </table>
			</div>
      </div>
     
      <div class="row">
        <div class="col-sm-4">
        <h2>Folders</h2></div>
      </div>
    
    <div class="row">          
   		<div class="col-sm-5">
          <div class="panel panel-default">
            <div class="panel-heading"><h2 class="panel-title">Apple</h2></div>
            <div class="panel-body"><img class="img-responsive" src="images/Apple_folder_standard.png" alt="Standard Planner Cover" />
              <p class="sm-text">Elementary and Primary Standard Folder</p>
            </div>
   		  </div>
      </div>
      <div class="col-sm-7">
      <table class="table table-striped table-responsive">
              <tr>
                <td colspan="4"><h2>Enter Quantity For Standard Folders:</h2>
<p class="sm-text">(Minimum order of standard folders are 25.)</p></td>
              </tr>             
              <tr>
                <td colspan="2"><h2>Folder</h2></td>
                <td><h2>Quantity</h2><p class="sm-text">(min. of 25)</p></td>
                <td><h2>Total</h2></td>
              </tr>
              
              <tr>
              
              <asp:UpdatePanel ID="UpdatePanel5_Folder" runat="server"><ContentTemplate>
                <td colspan="2"><!--Designated area for chkAppleFolder --><asp:CheckBox ID="chkfolder" runat="server" Text="Apple Folder - $1.25 each" AutoPostBack="True" /></td>
                <td><!--Designated area for qtyAppleFolder --><asp:TextBox ID="folderqty" runat="server" Width="50px" AutoPostBack="True" Enabled="False" CausesValidation="True">0</asp:TextBox></ br>
						
                      <asp:RegularExpressionValidator ID="numval200" runat="server" ControlToValidate="folderqty" ErrorMessage="Enter a numeric value" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="g1" Enabled="False" Display="Dynamic"></asp:RegularExpressionValidator>&nbsp;
                                 
                      <asp:CustomValidator ID="r40" runat="server"  Display="Dynamic" Enabled="false" ControlToValidate="folderqty" ErrorMessage="Error" ForeColor="Red"  ValidationGroup="g1"   ></asp:CustomValidator></td>
               
                <td><!--Designated area for totalAppleFolder --><asp:TextBox ID="foldertot" runat="server" Width="74px" Enabled="False" CausesValidation="True" ForeColor="Black">0</asp:TextBox></td>
              </ContentTemplate></asp:UpdatePanel>
                
              </tr>
              
        </table>
        <div class="row">
          <div class="col-sm-12 pull-right"><asp:Button ID="Button2" runat="server" Text="Next Step" ValidationGroup="g1" />
          </div>
        </div>
      </div>
     </div>
   </div>
  </div>
</form>

<!-- InstanceEndEditable -->
    <!-- End e-Planner Content -->
     

<!-- Student Planner Content -->
<!-- InstanceBeginEditable name="Content2" -->
  
<!-- InstanceEndEditable --><!-- End Student Planner Content -->    
    
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
