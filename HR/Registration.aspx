<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="HR_Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HR-Registration Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
    <style type="text/css">
        .style10 {
            width: 206px;
        }
    </style>    
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	    <td nowrap="nowrap" class="style7"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td height="70" colspan="6" class="style9" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;&nbsp;&nbsp;Jobs </span></td>
	    <td nowrap="nowrap" class="style8">
            <center>                                
    <div class="title">Create Your Account</div>    
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
	    <td><a href="SearchResume.aspx"> Search Resume </a></td>	    
	    <td><a href="JobPost.aspx"> Job Post </a></td>
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
                        <br /><center>                        
    <asp:Label ID="Label6" runat="server" Text="A" ForeColor="#CC0000"></asp:Label><br /><br /></center>
    <br /><br />
    <div class="title">Create Your Account</div>    
    <br /><br />
    <table width="inherit" border="none">
    <tr><td>    
    <asp:Label ID="Label1" runat="server" Text="EMail"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            </td>
        <td>
        <asp:TextBox ID="mailid" CssClass="style3" runat="server" ValidationGroup="t1" 
                AutoPostBack="True" ontextchanged="mailid_TextChanged" ></asp:TextBox>&nbsp;<br /></td>
                <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="mailid" 
                ValidationGroup="t1" Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="mailid" ErrorMessage="Invalid Format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td></tr>
    <tr><td>
    <asp:Label ID="Label5" runat="server" Text="Comp EMail"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            </td>
        <td>
        <asp:TextBox ID="TextBox1" CssClass="style3" runat="server" ValidationGroup="t1" 
                AutoPostBack="True" ></asp:TextBox>&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="mailid" 
                ValidationGroup="t1" Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="mailid" ErrorMessage="Invalid Format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;</td>
    <td>&nbsp;</td></tr>
    <tr><td><asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label12" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            
        &nbsp;&nbsp;            </td>
        <td><asp:TextBox CssClass="style3" ID="pwd" runat="server" TextMode="Password" 
                ValidationGroup="t1"></asp:TextBox>
        </td>
        <td><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Password Min of 6 Chars" ControlToValidate="pwd" 
                        ValidationExpression="^.*(?=.{6,}).*$"></asp:RegularExpressionValidator></td>
    <td>&nbsp;</td></tr>
    <tr><td><asp:Label ID="Label14" runat="server" Text="Confirm Password"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label15" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            </td>
        <td>
        <asp:TextBox ID="cpwd" runat="server" CssClass="style3" TextMode="Password"></asp:TextBox>&nbsp;</td>
        <td><asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="pwd" ControlToValidate="cpwd" 
            ErrorMessage="Password MisMatch"></asp:CompareValidator>
            &nbsp;</td>
    <td>&nbsp;</td></tr>        
        <tr><td><br /></td></tr>
        <tr><td><asp:Label ID="Label11" runat="server" Text="Company Name"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="compname" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>                                
        <tr><td><asp:Label ID="Label2" runat="server" Text="Website"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="website" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>                 
        <tr><td><asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="loc" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>         
        <tr><td><asp:Label ID="Label4" runat="server" Text="Company Description"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="compdesc" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>         
        <!--<tr><td><asp:Label ID="Labe56" runat="server" Text="EMail ID"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="email" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr> !-->
                
                <tr><td><br /><br /></td></tr>
                <tr><td colspan="3"><center><asp:Button ID="Button1" runat="server" Text="Submit" CssClass="style2" onclick="Button1_Click" /></center></td></tr>

                
                </table>
    </div></div></div>
    </div>        
    </form>
</body>
</html>
