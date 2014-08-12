<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="JS_Profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
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
	    <td><a href="JobSearch.aspx"> Search Jobs </a></td>	    
	    <td><a href="SearchResume.aspx"> Search Profile </a></td>	    
	    <td><a href="Profile.aspx"> My Profile </a></td>
	    <td><a href="../About.aspx"> About Us </a></td>
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
    <asp:Label ID="Label31" ForeColor="#FF6666" runat="server" Text=""></asp:Label>
    <br /><br />
    <div class="title">Create Your Account</div>    
    <table width="inherit" border="none">
    <tr><td>
    <asp:Label ID="Label1" runat="server" Text="EMail"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            </td>
        <td>
        <asp:TextBox ID="mailid" CssClass="style3" runat="server" ValidationGroup="t1" 
                AutoPostBack="True" ></asp:TextBox>&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Mandatory Field" ControlToValidate="mailid" 
                ValidationGroup="t1" Enabled="true" EnableClientScript="true"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="mailid" ErrorMessage="Invalid Format" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;&nbsp;</td>
    <td><asp:Label ID="Label4" runat="server" Text="EMail"></asp:Label>            
        </td></tr>
    <tr><td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            
        &nbsp;&nbsp;            </td>
        <td><asp:TextBox CssClass="style3" ID="pwd" runat="server" TextMode="Password" 
                ValidationGroup="t1"></asp:TextBox>
        </td>
        <td><asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="Password Min of 6 Chars" ValidateEmptyText="True" 
            ControlToValidate="pwd"  ></asp:CustomValidator>
        &nbsp;</td>
    <td><asp:Label ID="Label5" runat="server" Text="EMail"></asp:Label>            
        </td></tr>
    <tr><td><asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>            </td>
        <td>&nbsp;<asp:Label ID="Label9" runat="server" Text="*" Font-Size="Small" 
            ForeColor="#FF0066"></asp:Label>            </td>
        <td>
        <asp:TextBox ID="cpwd" runat="server" CssClass="style3" TextMode="Password"></asp:TextBox>&nbsp;</td>
        <td><asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="pwd" ControlToValidate="cpwd" 
            ErrorMessage="Password MisMatch"></asp:CompareValidator>
            &nbsp;</td>
    <td><asp:Label ID="Label6" runat="server" Text="EMail"></asp:Label>            
        </td></tr>
        <tr><td><asp:Label ID="Label11" runat="server" Text="First Name"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="fname" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>                
        <tr><td><asp:Label ID="Label12" runat="server" Text="Last Name"></asp:Label>            </td><td></td>        
        <td><asp:TextBox ID="lname" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>                
        <tr><td><br /></td></tr>
        <tr><td class="title" colspan="4" align="left"> Contact Information :-  </td><td><br /></td></tr>
        <tr><td><br /></td></tr>
        <tr><td><asp:Label ID="Label13" runat="server" Text="Address"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="addr" runat="server" TextMode="MultiLine" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>
        <tr><td><asp:Label ID="Label14" runat="server" Text="Contact No."></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="phno" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>
        <tr><td><asp:Label ID="Label15" runat="server" Text="Mobile No."></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="mob" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>
        <tr><td><asp:Label ID="Label16" runat="server" Text="Location"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="loc" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>        
        <tr><td><br /></td></tr>
        <tr><td class="title" colspan="4" align="left"> Work Experience </td><td><br /></td></tr>
        <tr><td><br /></td></tr>
        <tr><td><asp:Label ID="Label19" runat="server" Text="Working Status : "></asp:Label>            </td><td></td>
        <td>
            <asp:RadioButton ID="fresher" runat="server" BackColor="White" Font-Bold="True" 
                ForeColor="Black" GroupName="a1" 
                Text="Fresher" AutoPostBack="True" Font-Size="Small" 
                oncheckedchanged="fresher_CheckedChanged" />         
            <asp:RadioButton ID="experienced" runat="server" BackColor="White" 
                Font-Bold="True" ForeColor="Black" GroupName="a1" 
                Text="Experienced" AutoPostBack="True" Font-Size="Small" 
                oncheckedchanged="experienced_CheckedChanged" />
            </td> </tr>
            <tr><td><asp:Label ID="Label18" runat="server" Text="Total Experience "></asp:Label></td><td></td>
            <td>  
                    <asp:DropDownList CssClass="style3" Width="110px" ID="years" runat="server" 
                    >
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList CssClass="style3" Width="110px" ID="months" runat="server">
                    </asp:DropDownList></td>
            </tr>
            <tr><td><asp:Label ID="Label20" runat="server" Text=" Resume Headline "></asp:Label></td><td></td>
            <td colspan="2">
                <asp:TextBox ID="resumehead" runat="server" CssClass="style3" 
                    Width="381px" ></asp:TextBox>                    
            </td></tr>
            <tr><td><asp:Label ID="Label21" runat="server" Text=" Current Industry "></asp:Label></td><td></td>
            <td><asp:DropDownList CssClass="style3" ID="industry" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList></td>
            </tr>
            <tr><td><asp:Label ID="Label22" runat="server" Text=" Functional Area "></asp:Label></td><td></td>
            <td><asp:DropDownList CssClass="style3" ID="funcarea" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList></td>
            </tr>
            <tr><td><br /></td></tr>
        <tr><td class="title" colspan="4" align="left"> Education Details </td><td><br /></td></tr>
        <tr><td><br /></td></tr>
        <tr><td><asp:Label ID="Label23" runat="server" Text="Qualification"></asp:Label>            </td><td></td>
        <td><asp:DropDownList CssClass="style3" ID="qlevel" runat="server" >
                    </asp:DropDownList></td> </tr>        
        <tr><td><asp:Label ID="Label24" runat="server" Text="Specialization"></asp:Label>            </td><td></td>
        <td><asp:DropDownList CssClass="style3" ID="eduspec" runat="server" >
                    </asp:DropDownList></td> </tr>        
        <tr><td><asp:Label ID="Label25" runat="server" Text="Institute's Name"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="instname" runat="server" CssClass="style3" ></asp:TextBox>&nbsp;</td> </tr>                    
            <tr><td><br /></td></tr>
        <tr><td class="title" colspan="4" align="left"> Key Skills </td><td><br /></td></tr>        
        <tr><td><br /></td></tr>
        <tr><td><asp:Label ID="Label26" runat="server" Text="skill1"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="skill1" runat="server" CssClass="style3" Width="140px" ></asp:TextBox>&nbsp; 
        <asp:DropDownList CssClass="style3" Width="110px" ID="skil1" runat="server" >
                    </asp:DropDownList></td></tr>                     
        <tr><td><asp:Label ID="Label27" runat="server" Text="skill2"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="skill2" runat="server" CssClass="style3" Width="140px" ></asp:TextBox>&nbsp; 
        <asp:DropDownList CssClass="style3" Width="110px" ID="skil2" runat="server" >
                    </asp:DropDownList></td></tr>                                 
        <tr><td><asp:Label ID="Label28" runat="server" Text="skill3"></asp:Label>            </td><td></td>
        <td><asp:TextBox ID="skill3" runat="server" CssClass="style3" Width="140px" ></asp:TextBox>&nbsp; 
        <asp:DropDownList CssClass="style3" Width="110px" ID="skil3" runat="server" >
                    </asp:DropDownList></td></tr>                                 
        <tr><td><br /></td></tr>
        <tr><td class="title" colspan="4" align="left"> Upload Resume </td><td><br /></td></tr>        
        <tr><td><br /></td></tr>            
        <tr><td colspan="2" align="right" > Upload </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style3" /></td>
            </tr>                    
        <tr><td></td><td align="right"><asp:Label ID="Label29" runat="server" Font-Size="Smaller" 
                       ForeColor="#FF6666" Text="Upload a Word File "></asp:Label></td>
        <td><center>
            <asp:Label ID="Label30" runat="server" ForeColor="#FF6666" Font-Size="Small" 
                        Text="*Upload a Word File " Visible="False"></asp:Label></center></td></tr>
                
                                
    <tr><td colspan="4"><center><br /><asp:Label ID="Label10" runat="server" Text="*" ForeColor="#FF6666"></asp:Label></center>                    </td></tr>
    <tr> <td colspan="4">   <center>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="style2" onclick="Button1_Click" /></center> </td></tr></table>
    </div>
    </div></div>
    </div> 
    </form>
</body>
</html>
