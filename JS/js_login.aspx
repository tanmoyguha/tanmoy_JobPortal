﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="js_login.aspx.cs" Inherits="JS_js_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>JobSeekers Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
<!--    <style type="text/css">
        .style1
        {
            line-height: 22px;
            color: #26354A;
            letter-spacing: .1em;
            font-style: normal;
            font-variant: normal;
            font-weight: bold;
            font-size: 11px;
            font-family: Arial, Helvetica, sans-serif;
            width: 158px;                        
        }                
    </style>!-->
</head>
<body>    
    <form id="form1" method="post" runat="server">    
    <table border="0" cellspacing="0" cellpadding="0">
	<tr>
	    <td bgcolor="#FFFFCA" width="15" nowrap="nowrap"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td bgcolor="#FFFFCA" height="70" colspan="3" class="logo" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobPortal |<span class="tagline">|&nbsp;&nbsp;Jobs </span>            
	    <span class="tagline"><a href="../HR/hr_login.aspx"> Employer Click Here </a></span> </td>
	    <!--<td width="40">&nbsp;</td>
	    <td width="100%">&nbsp;</td>!-->
	</tr>

	<tr bgcolor="#6699FF">
	    <td colspan="100%"><img src="Images/mm_spacer.gif" alt="" width="1" height="4" border="0" /></td>
	</tr>

	<tr bgcolor="#D3DCE6">
	    <td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	    <!--<td width="15" nowrap="nowrap">&nbsp;</td>!-->
	    <td width="705" colspan="3" height="24">
	        <table border="0" cellpadding="0" cellspacing="0" id="navigation">
                <tr>
                    <td><a href="JobSearch.aspx"> Search Jobs </a></td>
	                <td><a href="SearchResume.aspx"> Search Profile </a></td>
	                <td><a href="Profile.aspx"> My Profile </a></td>
	                <td><a href="../About.aspx"> About Us </a></td>
                    <!--   <td class="navText" align="center" nowrap="nowrap"><a href="">CONTACT US</a></td> !-->
                </tr>
                <!--<tr><td> 
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>      
                </tr> !--> 
            </table>	</td>
	    <td width="40">&nbsp;</td>
	    <td width="100%">&nbsp;</td>	
	</tr>
	<tr><td bgcolor="#F3F3F3" colspan="100%"><asp:Label CssClass="style6" id="a" runat="server"></asp:Label></td></tr>
	<tr>
<!--	    <td width="50%"> </td>	
	    <td width="100%">
	    <br />
	    <br />
	    <br />
	    <br />	    !-->	    
	    <td width="100%">	    
	    <table width="100%" border="0" cellspacing="0" cellpadding="0" 
                style="height: 361px">                
	            <tr><td class="style1">
	                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                <br />
                    <br />
                    <asp:ImageMap ID="ImageMap1" runat="server" Height="179px" Width="183px" 
                        ImageUrl="~/Images/company-logo_10536792.jpg">
                    </asp:ImageMap>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
	            </td></tr>
	            <tr><td class="style1">
	                &nbsp;</td></tr>
	            </table>
	    </td>	
	    <td width="20px" bgcolor="#F3F3F3"></td>	    
	    <td class="style4" align="center">
	    <h2 class="title"> Login </h2>	    
	    
<!--	        <table width="100%" border="0" cellspacing="0" cellpadding="0">
	            <tr>
	            <td width="50%"></td>
	                <td width="50%">!-->
                        <table border="none" cellpadding="0" cellspacing="0" id="login">
	        <tr><td class="style1"><center>
                            <br />
                            <asp:Label CssClass="style1" ID="Label1" runat="server" Text="UserName"></asp:Label>
                            </center>
                            </td>
                            <td class="bodyText">                              
                                <asp:TextBox CssClass="style3" ID="uname" runat="server" ></asp:TextBox><br />
                                    </td> 
                                    <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="uname" 
                Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="uname" ErrorMessage="Invalid Format" Enabled="true" EnableClientScript="true"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;</td></tr>                             
                          
             <tr><td class="style1"><center><br />
             <asp:Label ID="Label2" CssClass="style3" runat="server" Text="Password"></asp:Label></center>
                            </td>
                            <td class="bodyText">
                                <asp:TextBox CssClass="style1" ID="pwd" runat="server" Width="220px" 
                                    TextMode="Password" Height="23px"></asp:TextBox><br /></td>
                                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="pwd" 
                Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Password Min of 6 Chars" ControlToValidate="pwd" 
                        ValidationExpression="^.*(?=.{6,}).*$"></asp:RegularExpressionValidator>
                 </td>

             </tr>
             <tr><td colspan="2" class="style1">
             <center style="width: 373px">
                 <asp:Label ID="warn" runat="server" Font-Size="X-Small" ForeColor="#FF0066" 
                     Visible="False"></asp:Label>
                 <br />
                 <asp:Button CssClass="style2" CausesValidation="true" ID="Button1" runat="server" Text="Submit" 
                     onclick="Button1_Click"/>              
                     
                 <br />
                 </center></td>
             </tr>                                                    
	        </table>
	     <!--           </td>
	            </tr>
	        </table>!-->
	        <br />
	        <br />	        
	        <center> New User <a href="JSRegistration.aspx" class="style5"> Click Here </a> </center>
	    </td>	
	</tr>		
</table>
</form>
</body>
</html>
