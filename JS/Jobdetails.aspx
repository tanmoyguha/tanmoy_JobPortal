<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jobdetails.aspx.cs" Inherits="JS_Jobdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Details</title>
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
	    <td class="style7"><img src="Images/mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	    <td height="70" colspan="6" class="style9" > &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;&nbsp;&nbsp;Jobs </span></td>
	    <td class="style8">
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
	    <td><a href="home.aspx"> SEARCH JOBS </a></td>
	    <td><a href="home.aspx"> PLACEMENT PAPERS </a></td>
	    <td><a href="home.aspx"> MY PROFILE </a></td>
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
    <ul><li>
        <div id="content">
            <div class="post2">            
                <br /><br />
                <center>                
                <asp:label id="applied_jobs" CssClass="title" runat="server"></asp:label></center>
                <br />
                <div class="title"><h3>Summary</h3>
                                </div>
                <table width="inherit" id="search1" border="none">
                <tr><td colspan="2"><center>
                <asp:label CssClass="style1" runat="server" text="Experience"></asp:label></center>
                </td>
                <td><asp:label CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="exp" 
                        BorderStyle="None" Enabled="False" BorderColor="White" BackColor="White" ></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label15" CssClass="style1" runat="server" text="Salary"></asp:label></center>
                </td>
                <td><asp:label ID="Label20" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="salary" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label1" CssClass="style1" runat="server" text="Location"></asp:label></center>
                </td>
                <td><asp:label ID="Label2" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="loc" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label3" CssClass="style1" runat="server" text="Qualification"></asp:label></center>
                </td>
                <td><asp:label ID="Label4" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="qual" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label5" CssClass="style1" runat="server" text="Industry Type"></asp:label></center>
                </td>
                <td><asp:label ID="Label6" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="industry" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label7" CssClass="style1" runat="server" text="Functional Area"></asp:label></center>
                </td>
                <td><asp:label ID="Label8" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="func" 
                        BorderStyle="None" Enabled="False" BorderColor="White" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label9" CssClass="style1" runat="server" text="Job Type"></asp:label></center>
                </td>
                <td><asp:label ID="Label10" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="jtype" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                                
                <tr><td colspan="2"><center>
                <asp:label ID="Label11" CssClass="style1" runat="server" text="Posted Date"></asp:label></center>
                </td>
                <td><asp:label ID="Label12" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="pdate" 
                        BorderStyle="None" Enabled="False" BackColor="White"></asp:TextBox></td>
                </tr>                
                </table>                                
                <br />  
                <div class="title"> <h3> Job Details </h3>
                                </div>                 
                    <table width="inherit" border="none">
                    <tr><td colspan="2"><asp:label ID="Label13" CssClass="style1" runat="server" Font-Size="Small" text="  Eligibility  :          "></asp:label>
                        <br />                        
                </td></tr>                
                <tr><td><center style="margin-left: 40px">
                    <asp:TextBox CssClass="style3" 
                        runat="server" ID="eligibility" 
                        BorderStyle="None" Width="523px" Height="90px" TextMode="MultiLine" 
                        BackColor="White" Enabled="False"></asp:TextBox></center></td></tr>
                <tr><td colspan="2"><br /><asp:label ID="Label14" CssClass="style1" runat="server" Font-Size="Small" text="  Job Description  :          "></asp:label></td></tr>        
                <tr><td style="padding-left:40px">
                        <asp:TextBox CssClass="style3" runat="server" ID="jdesc" 
                        BorderStyle="None" Width="523px" Height="195px" TextMode="MultiLine" 
                        BackColor="White" Enabled="False"></asp:TextBox>
                        <br /><br /></td></tr>
                    </table>                                        
            </div>            
            <div class="title"><h3>Company profile</h3>
                                </div>
            <div class="post2">                
                <table width="inherit" border="none">                                    
                     <tr><td colspan="2">
                     <center>
                <asp:label ID="Label23" CssClass="style1" runat="server" text="Company Name"></asp:label></center></td>                
                <td><asp:Label ID="Label16" CssClass="style1" runat="server" text=":"></asp:Label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="cname" 
                        BorderStyle="None" Enabled="False" BorderColor="White" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label17" CssClass="style1" runat="server" text="website"></asp:label></center>
                </td>
                <td><asp:label ID="Label18" CssClass="style1" runat="server" text=": "></asp:label></td>
                <td><asp:label ID="website" CssClass="style1" runat="server" ></asp:label>
                </td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label19" CssClass="style1" runat="server" text="Company Description :- "></asp:label></center>
                </td></tr></table>
                <table><tr><td style="padding-left:40px">
                        <asp:TextBox CssClass="style3" runat="server" ID="cdesc" 
                        BorderStyle="None" Width="523px" Height="90px" TextMode="MultiLine" 
                        BackColor="White" Enabled="False"></asp:TextBox></td></tr>                                
                <tr><td colspan="1" align="center"><br />
                <asp:Button CssClass="style2" ID="apply" runat="server" Text="Apply Here" 
                        onclick="apply_Click" />
                </td></tr>
                </table>
            </div>            
            </div></li>
            </ul>            
    </div>    
</div>     
    </form>
</body>
</html>
