<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MeridianInvoice.aspx.vb" Inherits="MeridianInvoice" %>

<%@ Register Assembly="EO.Web" Namespace="EO.Web" TagPrefix="eo" %>

<!DOCTYPE html>
<html lang="en"><!-- InstanceBegin template="/Templates/meridian_temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>Meridian Student Planner - Invoice</title>
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


    <style type="text/css">
        .style1
        {
            width: 352px;
        }
        .style2
        {
            width: 389px;
        }
    </style>


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
<asp:FormView ID="FormView1" runat="server" Width="890px" Height="241px" ForeColor="Black">   
<EditItemTemplate>       
        <table class="table table-striped table-responsive">
  <tr>
    <td colspan="2" align="center"><h2>Billing Information</h2></td>
    <td colspan="2" align="center"><h2>Shipping Information</h2></td>
  </tr>
  <tr>
    <td colspan="4"><!-- <div style="font-style: italic; font-size: small; color: #FF0000; top: auto; clip: rect(auto, auto, auto, auto);">Planners will be available to ship the first week of May.
</div> --></td>
    
  </tr>
  <tr>
    <td align="right">School/Company:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox15" runat="server" Height="21px" Text='<%# bind("company") %>' Width="263px" AutoPostBack="True"></asp:TextBox></td>
    <td align="right">School/Company:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox16" runat="server" Height="21px" Text='<%# bind("scompany") %>' Width="263px" AutoPostBack="True"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right">First Name:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox1" runat="server" Height="21px" Text='<%# bind("fname") %>' Width="263px" AutoPostBack="True"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">First Name:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox2" runat="server" Height="21px" Text='<%# bind("sfname") %>' Width="263px" AutoPostBack="True"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Last Name: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox12" runat="server" Height="25px" Text='<%# bind("lname") %>' Width="263px" AutoPostBack="True"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">Last Name:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox13" runat="server" Height="25px" Text='<%# bind("slname") %>' Width="263px" AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Address: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox3" runat="server" Width="263px" Height="21px" Text='<%# bind("address") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">Address:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox4" runat="server" Width="263px" Height="21px" Text='<%# bind("saddress") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Address 2: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox5" runat="server" Width="263px" Height="21px" Text='<%# bind("address2") %>' AutoPostBack="True"></asp:TextBox></td>
    <td align="right">Address 2:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox6" runat="server" Width="263px" Height="21px" Text='<%# bind("saddress2") %>' AutoPostBack="True"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right">City: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox7" runat="server" Width="263px" Height="21px" Text='<%# bind("city") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">City:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox8" runat="server" Width="263px" Height="21px" Text='<%# bind("scity") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">State: </td>
    <td align="left" class="billinginfo_textbox"><asp:DropDownList ID="DropDownList1" runat="server" Width="269px" Height="21px" SelectedValue='<%# bind("state") %>' DataSourceID="dsState" DataTextField="name" DataValueField="abrv" AutoPostBack="True"> </asp:DropDownList></td>
    <td align="right">State:</td>
    <td align="left" class="billinginfo_textbox"><asp:DropDownList ID="DropDownList2" runat="server" Width="269px" Height="21px" SelectedValue='<%# bind("sstate") %>' DataSourceID="dsState" DataTextField="name" DataValueField="abrv" AutoPostBack="True"></asp:DropDownList></td>
  </tr>
  <tr>
    <td align="right">Zip Code: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox9" runat="server" Width="263px" Height="21px" Text='<%# bind("zipcode") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="Zip Code Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">Zip Code:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox10" runat="server" Width="263px" Height="21px" Text='<%# bind("szipcode") %>' AutoPostBack="True"></asp:TextBox><br />
      <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Zip Code Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
  </tr>
  <tr>
    <td align="right">Email Address: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="txtemailaddress" runat="server" Width="263px" Height="21px" Text='<%# bind("emailaddress") %>' AutoPostBack="True"></asp:TextBox><br />
	  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemailaddress" Display="Dynamic" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td align="right">Ship Date:</td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="TextBox14" runat="server" Height="25px" Text='<%# bind("shipdate") %>' Width="180px" AutoPostBack="True"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right">Phone Number: </td>
    <td align="left" class="billinginfo_textbox"><asp:TextBox ID="txtphone" runat="server" Height="21px" Text='<%# bind("phonenumber") %>' Width="263px" AutoPostBack="True"></asp:TextBox><br />
	  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Phone Number Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  	<td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</EditItemTemplate>
     
<ItemTemplate>
<table class="table table-striped table-responsive">
  <tr>
    <td colspan="2" align="center"><h2>Billing Information</h2></td>
    <td colspan="2" align="center"><h2>Shipping Information</h2></td>
  </tr>
  <tr>
    <td colspan="4"><!-- <div style="font-style: italic; font-size: small; color: #FF0000; top: auto; clip: rect(auto, auto, auto, auto);">Planners will be available to ship the first week of May.
</div> --></td>
    
  </tr>
  <tr>
    <td align="right">School/Company:</td>
    <td><asp:Label ID="Label5" runat="server"  Height="22px" Text='<%# bind("company") %>' Width="263px"></asp:Label></td>
    <td align="right">School/Company:</td>
    <td><asp:Label ID="Label6" runat="server"  Height="21px" Text='<%# bind("scompany") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">First Name:</td>
    <td><asp:Label ID="Label7" runat="server"  Height="21px" Text='<%# bind("fname") %>' Width="263px"></asp:Label></td>
    <td align="right">First Name:</td>
    <td><asp:Label ID="Label8" runat="server"  Height="21px" Text='<%# bind("sfname") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Last Name:</td>
    <td><asp:Label ID="Label9" runat="server"  Height="21px" Text='<%# bind("lname") %>' Width="263px"></asp:Label></td>
    <td align="right">Last Name:</td>
    <td><asp:Label ID="Label10" runat="server"  Height="21px" Text='<%# bind("slname") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Address:</td>
    <td><asp:Label ID="Label11" runat="server"  Height="21px" Text='<%# bind("address") %>' Width="263px"></asp:Label></td>
    <td align="right">Address:</td>
    <td><asp:Label ID="Label12" runat="server"  Height="21px" Text='<%# bind("saddress") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Address 2:</td>
    <td><asp:Label ID="Label128" runat="server"  Height="21px" Text='<%# bind("address2") %>' Width="263px"></asp:Label></td>
    <td align="right">Address 2:</td>
    <td><asp:Label ID="Label120" runat="server"  Height="21px" Text='<%# bind("saddress2") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">City:</td>
    <td><asp:Label ID="Label121" runat="server"  Height="21px" Text='<%# bind("city") %>' Width="263px"></asp:Label></td>
    <td align="right">City:</td>
    <td><asp:Label ID="Label122" runat="server"  Height="21px" Text='<%# bind("scity") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">State:</td>
    <td><asp:Label ID="Label129" runat="server" Text='<%# bind("state") %>'></asp:Label></td>
    <td align="right">State:</td>
    <td><asp:Label ID="Label130" runat="server" Text='<%# bind("state") %>'></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Zip Code:</td>
    <td><asp:Label ID="Label123" runat="server"  Height="21px" Text='<%# bind("zipcode") %>' Width="263px"></asp:Label></td>
    <td align="right">Zip Code:</td>
    <td><asp:Label ID="Label124" runat="server"  Height="21px" Text='<%# bind("szipcode") %>' Width="263px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Email Address:</td>
    <td><asp:Label ID="Label125" runat="server"  Height="21px" Text='<%# bind("emailaddress") %>' Width="263px"></asp:Label></td>
    <td align="right">Ship Date:</td>
    <td><asp:Label ID="Label126" runat="server"  Height="21px" Text='<%# bind("shipdate") %>' Width="180px"></asp:Label></td>
  </tr>
  <tr>
    <td align="right">Phone Number:</td>
    <td><asp:Label ID="Label127" runat="server"  Height="21px" Text='<%# bind("phonenumber") %>' Width="263px"></asp:Label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
</table>

    

    </ItemTemplate>
  </asp:FormView>
    <div id="OrderGrid">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" CellPadding="2"
            ForeColor="Black" GridLines="None" Height="16px" Width="840px" 
            DataKeyNames="detailid">
            <AlternatingRowStyle BackColor="#D7E9F7" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <FooterTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Save Record</asp:LinkButton>
                      &nbsp;/&nbsp;<asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Cancel</asp:LinkButton>
                    </FooterTemplate>
                    <HeaderTemplate>
                        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">New Record</asp:LinkButton>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="50px" />
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True">
                <ItemStyle Width="50px" ForeColor="#1F6BBF" HorizontalAlign="Left" />
                </asp:CommandField>
                <asp:TemplateField HeaderText="Planner">
                    <EditItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("schtype") %>'></asp:Label>
                        <asp:HiddenField ID="hfprodcode" runat="server" 
                            Value='<%# Bind("prodcode") %>' />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlschtyp" runat="server" AutoPostBack="True" 
                            onprerender="ddlschtyp_PreRender" 
                            onselectedindexchanged="ddlschtyp_SelectedIndexChanged">
                            <asp:ListItem Selected="True"></asp:ListItem>
                            <asp:ListItem Value="HSP">High School Standard Planner $2.35 each</asp:ListItem>
                            <asp:ListItem Value="MSP">Middle School Standard Planner $3.15 each</asp:ListItem>
                            <asp:ListItem Value="ELSP">Elementary Standard Planner $3.15 each</asp:ListItem>
                            <asp:ListItem Value="PRISP">Primary Standard Planner $3.15 each</asp:ListItem>
                            <asp:ListItem Value="HSPT">High School Teacher 4.50 each</asp:ListItem>
                            <asp:ListItem Value="MSPT">Middle School Teacher 5.50 each</asp:ListItem>
                            <asp:ListItem Value="ELSPT">Elementary Teacher 5.50 each</asp:ListItem>
                            <asp:ListItem Value="PRISPT">Primary Teacher 5.50 each</asp:ListItem>
                            <asp:ListItem Value="FLD">Apple Folder 1.25 each</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("schtype") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle HorizontalAlign="Left" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        &nbsp;<asp:Label ID="lblprice" runat="server" Text="0.00"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" 
                            Text='<%# Bind("quantity") %>'></asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="minimum of 25" 
                            ForeColor="Red" MaximumValue="10000" MinimumValue="25" SetFocusOnError="True" 
                            Type="Integer"></asp:RangeValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtqty" runat="server" AutoPostBack="True" 
                            CausesValidation="True" ontextchanged="txtqty_TextChanged" Width="91px">25</asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtqty" Display="Dynamic" ErrorMessage="minimum of 25" 
                            ForeColor="Red" MaximumValue="10000" MinimumValue="25" SetFocusOnError="True" 
                            Type="Integer"></asp:RangeValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total">
                    <EditItemTemplate>
                        <asp:Label ID="Label33" runat="server" Text='<%# Bind("totalprice") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="lbltotal" runat="server" Text="0.00"></asp:Label>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("totalprice") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="detailid" Visible="False">
                    <EditItemTemplate>
                        <asp:Label ID="lbldetailid" runat="server" Text='<%# Bind("detailid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("detailid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#AACBEA" />
            <HeaderStyle BackColor="#AACBEA" Font-Bold="True" />
            <PagerStyle BackColor="#AACBEA" ForeColor="Blue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#AACBEA" />
            <SortedDescendingCellStyle BackColor="#D7E9F7" />
            <SortedDescendingHeaderStyle BackColor="#AACBEA" />
        </asp:GridView>
      
    </div>
 
   <div class="invoice_containerONE">
   </ br>
<asp:FormView ID="FormView2" runat="server" Width="872px" 
            Height="39px" DefaultMode="Edit">
      <EditItemTemplate>
          <table class="table">
          
  <tr>
    <td rowspan="2">Notes:<br />
<asp:TextBox ID="txtnotes" runat="server" Height="58px" 
                ontextchanged="txtnotes_TextChanged1" Width="317px" 
                Text='<%# bind("notes") %>' TextMode="MultiLine" AutoPostBack="True"></asp:TextBox></td>
              
    <td align="right" class="style2">Sub Total:</td>
    <td align="right"><asp:TextBox ID="txtsubtotal" runat="server" Text='<%# eval("subtotal") %>' 
                    ReadOnly="True" Width="100px" Style="text-align: right"  
            Wrap="False" Height="26px"></asp:TextBox></td>
  </tr>
  <tr>
    <td align="right" class="style2">Shipping:</td>
    <td align="right"><asp:TextBox ID="txtshipping" runat="server" Text='<%# eval("shippingcost") %>' 
            ReadOnly="True" Width="100px" Style="text-align: right" Wrap="False" 
            Height="26px"></asp:TextBox></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="right" class="style2">Total:</td>
    <td align="right"><asp:TextBox ID="txttotal" runat="server" Text='<%# eval("total") %>' 
            ReadOnly="True" Width="100px" Style="text-align: right" Wrap="False" 
            Height="26px"></asp:TextBox>
</td>
  </tr>

</table>
      </EditItemTemplate>
     </asp:FormView>
	
    <eo:MsgBox ID="MsgBox1" runat="server" BackColor="#EBEBEB" 
        CloseButtonUrl="00070301" ControlSkinID="None" HeaderHtml="Dialog Title" 
        Height="216px" Width="320px" ForeColor="Black">
        <HeaderStyleActive CssText="padding-right: 3px; padding-left: 8px; font-weight: bold; font-size: 10pt; background-image: url(00020213); padding-bottom: 3px; color: white; padding-top: 0px; font-family: 'trebuchet ms';height:20px;" />
        <ContentStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
        <FooterStyleActive CssText="padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
        <BorderImages BottomBorder="00020212" BottomLeftCorner="00020207" 
            BottomRightCorner="00020208" LeftBorder="00020210" RightBorder="00020211" 
            TopBorder="00020209" TopLeftCorner="00020201" TopLeftCornerBottom="00020203" 
            TopLeftCornerRight="00020202" TopRightCorner="00020204" 
            TopRightCornerBottom="00020206" TopRightCornerLeft="00020205" />
    </eo:MsgBox> 
		
  <script type="text/javascript">
			function ShowImage() {
			document.getElementById('Image1').style.display = 'inherit';
			document.getElementById('Label1').style.display = 'inherit';
			}
		</script> 
	<div class="invoice_container">
	<div class="billinginfo_textbox" style="padding-left:20px">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            Font-Bold="True" Text="Pay Now" Checked="True" />
        <asp:CheckBox ID="CheckBox2" 
            runat="server" AutoPostBack="True" Font-Bold="True" Text="Invoice Later" /> 
     </div>
     <div class="billinginfo_contacting" style="padding-top:10px">              
        <asp:Label ID="Label1" runat="server" style="display:none" 
                    Text="Contacting payment center. Please be patient."></asp:Label></div>
          <div class="billinginfo_contacting" style="width:150px">              
                <asp:Image ID="Image1" runat="server" style="display:none; margin-left:10px" ImageUrl="~/images/loading.gif" />       
	</div>
	<div class="billinginfo_submit" style="padding-top:20px">
        <asp:Button ID="btncc" runat="server" Text="Submit Order" 
                    ValidationGroup="g1" onclientclick="ShowImage()" />
	</div>
    </div> 
  </div>
  </div>

</form>

<!-- InstanceEndEditable -->
    <!-- End e-Planner Content -->
     

<!-- Student Planner Content -->
<!-- InstanceBeginEditable name="Content2" -->

  
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
<asp:SqlDataSource ID="dsState" runat="server" 
        ConnectionString="<%$ ConnectionStrings:MeridianConn %>" 
        ProviderName="<%$ ConnectionStrings:MeridianConn.ProviderName %>" 
        SelectCommand="SELECT name, abrv, id FROM states ORDER BY name">
    </asp:SqlDataSource>
    
 