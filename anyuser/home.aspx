<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
    <style type="text/css">
        .style7 {
            width: 1%;
        }
        .style8 {
            width: 44%;
        }
        .style9 {
            color: #FFBA00;
            letter-spacing: .3em;
            line-height: 26px;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            font-size: 24px;
            font-family: "Times New Roman", Times, serif;
            width: 55%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	    <td bgcolor="#FFFFCC" nowrap="nowrap" class="style7"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td bgcolor="#FFFFCC" height="70" colspan="6" class="style9" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;&nbsp;&nbsp;Jobs </span></td>
	    <td bgcolor="#FFFFCC" nowrap="nowrap" class="style8">
            <center>
                <table width="40%" border="0" cellpadding="0" cellspacing="0">
                <tr><td align="left" bgcolor="#FFFFCC">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Size="X-Small">Username</asp:Label> </td>                               
                 <td align="justify">
                     <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="121px" 
                         Font-Bold="False" Font-Size="Small"></asp:TextBox>
                    </td>
                    <td align="right" bgcolor="#FFFFCC"> <a href=""> New User </a> </td></tr>
                    <tr><td align="left" bgcolor="#FFFFCC">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Size="X-Small">Password</asp:Label> </td>                               
                 <td align="justify">
                     <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="121px" 
                         Font-Size="Small" TextMode="Password"></asp:TextBox>
                    </td>
                    <td align="right" bgcolor="#FFFFCC"> <a href=""> Forgot Password </a> </td></tr>
                 <tr><td align="center" colspan="2"  bgcolor="#FFFFCC"><asp:Button CssClass="style2" ID="login" 
                         runat="server" onclick="Button1_Click" 
                Text="Login" Height="20px" Width="83px" /></td>                
                </tr></table>                
            </center>            
        </td>
	    <!--<td width="40">&nbsp;</td>
	    <td width="100%">&nbsp;</td>!-->
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
	<div>
	    <div id="navigation">                
        <table width="inherit"><tr>
	    <td><a href="home.aspx"> HOME </a></td>
	    <td><a href="home.aspx"> SEARCH JOBS </a></td>
	    <td><a href="home.aspx"> PLACEMENT PAPERS </a></td>
	    <td><a href="home.aspx"> MY PROFILE </a></td>
	    </tr>
	    </table>
                    <!--<li><a href="home.aspx"> HOME </a></li>                
                    <li><a href=""> SEARCH JOBS </a></li>
                    <li><a href=""> PLACEMENT PAPERS </a></li>
                    <li><a href=""> MY PROFILE </a></li>!-->
                    <!--<li id="nav1"><asp:Panel ID="Panel1" runat="server" Visible="False">
                <asp:Label ID="name" runat="server" Font-Bold="True" 
                    Font-Size="Large"></asp:Label>            
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            
                 <asp:Button CssClass="style2" ID="logout" runat="server" onclick="Button1_Click" 
                Text="Sign Out" />
                </asp:Panel></li>!-->                
        </div>
        
    </div>
<div id="page">
    <div id="page-bgtop">
        <div id="content">
            <div class="post" style="background-color: #FFFFFF">
                                                
            </div>
        </div>
    </div>    
</div>
</form>
</body>
</html>
