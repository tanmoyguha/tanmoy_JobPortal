﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sendmail.aspx.cs" Inherits="HR_sendmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Mail</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	    <td nowrap="nowrap" class="style7"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td height="70" colspan="6" class="style9" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;Jobs </span></td>
	    <td nowrap="nowrap" class="style8">
                 </td>	    
	</tr>
	</table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	    <tr bgcolor="#6699FF">
	        <td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="100%" height="4" border="0" /></td>
	    </tr>
	    <tr bgcolor="#D3DCE6">
	        <td colspan="6"><img src="Images/mm_spacer.gif" alt="" width="100%" height="1" border="0" /></td>
	    </tr>
    </table>    	
	<div id="navigation">
	<table width="inherit"><tr>
	    <td><a href="home.aspx"> Home </a></td>
	    <td><a href="SearchResume.aspx"> Search Resume </a></td>
	    <td><a href="ManageJobs.aspx"> Manage Jobs </a></td>
	    <td><a href="JobPost.aspx"> Job Post </a></td>
	    <td><a href="Profile.aspx"> My Profile </a></td>
	    </tr>
	    </table>
    </div>   
    <div id="page">
    <div id="page-bgtop"><ul>
    <li>
        <div id="contentleft">
        <div class="post" style="background-color: #FFFFFF">
        <p class="style1" style="height: 609px"> &nbsp;<br /><br /><br /><br /><br />
            <asp:ImageMap ID="ImageMap1" runat="server" Height="351px" 
                ImageUrl="~/Images/company-logo_10536792.jpg"  
                Width="217px">
            </asp:ImageMap>
            <br /></p>
        </div>        
        </div>
        </li>
    <li>
        <div id="content">
            <div class="post" style="background-color: #FFFFFF">
            
                <br />
                <br />
                <center><asp:Label ID="status" CssClass="title" runat="server" Text="Your Mail has been Successfully Sent"></asp:Label></center>
                <br />
                <br /><center>
                <asp:TextBox ID="txtmail" runat="server" Height="411px" 
                     TextMode="MultiLine" Width="535px" ></asp:TextBox>
                <br />
                <br />
                    <br />
                    <br />
                <br />
            
                <asp:Button ID="send" runat="server" Text="Send Mail" CssClass="style2" 
                        onclick="send_Click" />
                
                <br />
                <br />
            </center>
            </div></div>
            </li></ul>                 
      </div>
    </div>     
    
    </form>
</body>
</html>
