<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hr_login.aspx.cs" Inherits="HR_hr_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recruiters Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!--<div>    </div>!-->    
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
	    </tr>
	    </table>
                <!--<ul>
                    <li><a href="/home.aspx"> HOME </a></li>                        
                    <li><a href=""> SEARCH JOBS </a></li>
                    <li><a href=""> PLACEMENT PAPERS </a></li>
                    <li><a href=""> MY PROFILE </a></li>                                                           
                </ul>!-->    
    </div>   
    <div id="page">
    <div id="page-bgtop"><ul>
    <li>
        <div id="contentleft">
        <div class="post" style="background-color: #FFFFFF">
        <p class="style1"> Hello <br /><br /><br /><br /><br /><br /></p>
        </div>        
        </div>
        </li>
    <li>
        <div id="content">
            <div class="post" style="background-color: #FFFFFF">
            <div class="style4" align="center">
	        <h2 class="title1"> Recruiters Login <br /> <br /></h2>	                        
	        </div>
	        <div class="style4">
	        <table border="none" cellpadding="0" cellspacing="0" id="login">
	        <tr><td class="style1"><center>
                            <br />
                            <asp:Label CssClass="style1" ID="Label1" runat="server" Text="UserName"></asp:Label>
                            </center>
                            </td>
                            <td class="bodyText">                              
                                <asp:TextBox CssClass="style3" ID="uname" runat="server" ></asp:TextBox><br />
                                    </td>                                
                                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="uname" 
                Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator></td>
            <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="uname" ErrorMessage="Invalid Format" Enabled="true" EnableClientScript="true"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
             </tr>             
             <tr><td class="style1"><center><br />
             <asp:Label ID="Label2" CssClass="style3" runat="server" Text="Password"></asp:Label></center>
                            </td>
                            <td class="bodyText">
                                <asp:TextBox CssClass="style1" ID="pwd" runat="server" Width="220px" 
                                    TextMode="Password" Height="23px"></asp:TextBox><br />                       
                                    </td>
                                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="pwd" 
                Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Password Min of 6 Chars" ControlToValidate="pwd" 
                        ValidationExpression="^.*(?=.{6,}).*$"></asp:RegularExpressionValidator></td>
             </tr>
             <tr><td colspan="2" class="style1">
             <center style="width: 373px">
                 <asp:Label ID="warn" runat="server" Font-Size="Small" ForeColor="#FF0066" 
                     Visible="False"></asp:Label>
                 <br />
                 <asp:Button CssClass="style2" ID="Button1" runat="server" Text="Submit" 
                     onclick="Button1_Click"/>              
                 <br />
                 </center></td>
             </tr>                                                    
	        </table>
	        <br /><br />	        
	        <center> New User <a href="Registration.aspx" class="style5"> Click Here </a></center>	        
	        </div>
            </div></div></li>
            </ul>                 
      </div>
    </div>        
    </form>
</body>
</html>
