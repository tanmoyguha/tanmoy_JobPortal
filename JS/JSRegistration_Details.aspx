<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JSRegistration_Details.aspx.cs" Inherits="JS_JSRegistration_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
    <style type="text/css">
        .style10 {
            width: 206px;
        }
    </style>
<script language="jscript" type="text/jscript">
    /*function aa(){
    if(document.getElementsByName(textbox1).length==0)
    {        
    }
    }*/
</script>
</head>
<body>
    <form id="form1" runat="server">
    <!--<div>    
    </div>!-->
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	    <td nowrap="nowrap" class="style7"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td height="70" colspan="6" class="style9" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;&nbsp;&nbsp;Jobs </span></td>
	    <td nowrap="nowrap" class="style8">
            <center>                                
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
	    <div id="navigation">
	    <table width="inherit"><tr>
	    <td><a href="home.aspx"> HOME </a></td>
	    <td><a href="JobSearch.aspx"> SEARCH_JOBS </a></td>
	    <td><a href=""> PLACEMENT_PAPERS </a></td>
	    <td><a href="Profile.aspx"> MY_PROFILE </a></td>
	    <td class="style10" width="538px"></td>
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
                 <asp:Button CssClass="style2" ID="logout" runat="server" 
                Text="Sign Out" />
                </asp:Panel></li>!-->                
        </div> 
        <div id="page">    
    <div id="page-bgtop">
    <div id="pagetop">
    <div class="post">
    <center>
    <p class="title"> Educational Details <br /><br /></p>
    <br /><br />    
    <asp:Label ID="Label1" runat="server" Text="EMail"></asp:Label>            
        &nbsp;<asp:Label ID="Label7" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            
        &nbsp;&nbsp;            
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Invalid Format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="EMail"></asp:Label>            
        <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>            
        &nbsp;<asp:Label ID="Label8" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            
        &nbsp;&nbsp;            
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp;
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="CustomValidator" ValidateEmptyText="True" 
            ControlToValidate="TextBox2"></asp:CustomValidator>
        &nbsp;
    <asp:Label ID="Label5" runat="server" Text="EMail"></asp:Label>            
        <br /><br />
    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>            
        &nbsp;<asp:Label ID="Label9" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            
        &nbsp;            
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
            ErrorMessage="CompareValidator"></asp:CompareValidator>
&nbsp;
    <asp:Label ID="Label6" runat="server" Text="EMail"></asp:Label>            
        <br />
        <br />
    <asp:Label ID="Label10" runat="server" Text="*"></asp:Label>                    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />        </center>
    </div>
    </div></div>
    </div>
    </form>
</body>
</html>
