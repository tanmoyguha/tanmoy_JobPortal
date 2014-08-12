<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobPost.aspx.cs" Inherits="HR_JobPost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Post Page</title>
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
            <br />
                <asp:Label ID="warn1" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="Red" Visible="False"></asp:Label><br /><br />
            <div class="title"><h3>Summary</h3>
                                </div>
                <table width="inherit" id="search1" border="none">
                <tr><td colspan="2"><center>
                <asp:label ID="Label21" CssClass="style1" runat="server" text="Position"></asp:label></center>
                </td>
                <td><asp:label ID="Label22" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="position"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label1" CssClass="style1" runat="server" text="Experience"></asp:label></center>
                </td>
                <td><asp:label ID="Label2" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="exp" BorderColor="#CCCCCC" 
                        BackColor="White" ></asp:TextBox></td>
                        <td>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="Enter a Valid Experience" MaximumValue="50" 
                                MinimumValue="00" ControlToValidate="exp"></asp:RangeValidator>  
                            &nbsp;&nbsp;
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ErrorMessage="Enter a 2 digit number" ValidationExpression=" \d{2}" 
                                ControlToValidate="exp"></asp:RegularExpressionValidator></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label3" CssClass="style1" runat="server" text="Location"></asp:label></center>
                </td>
                <td><asp:label ID="Label4" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="loc"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label17" CssClass="style1" runat="server" text="Skills Required"></asp:label></center>
                </td>
                <td><asp:label ID="Label18" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="skill1"></asp:TextBox></td>
                </tr>                                
                <tr><td colspan="2"><center>
                <asp:label ID="Label19" CssClass="style1" runat="server" text="Skill - 2"></asp:label></center>
                </td>
                <td><asp:label ID="Label20" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="skill2"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label5" CssClass="style1" runat="server" text="Qualification"></asp:label></center>
                </td>
                <td><asp:label ID="Label6" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="qual" BackColor="White"></asp:TextBox></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label7" CssClass="style1" runat="server" text="Industry Type"></asp:label></center>
                </td>
                <td><asp:label ID="Label8" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:DropDownList CssClass="style3" ID="industry" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label9" CssClass="style1" runat="server" text="Functional Area"></asp:label></center>
                </td>
                <td><asp:label ID="Label10" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:DropDownList CssClass="style3" ID="funcarea" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList></td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label11" CssClass="style1" runat="server" text="Job Type"></asp:label></center>
                </td>
                <td><asp:label ID="Label12" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:DropDownList CssClass="style3" ID="jtype" runat="server" >
                    </asp:DropDownList> </td>
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label23" CssClass="style1" runat="server" text="Salary"></asp:label></center>
                </td>
                <td><asp:label ID="Label24" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:DropDownList CssClass="style3" ID="salary" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList>&nbsp; p.a.</td>                
                </tr>                
                <tr><td colspan="2"><center>
                <asp:label ID="Label13" CssClass="style1" runat="server" text="No. of Vacancies"></asp:label></center>
                </td>
                <td><asp:label ID="Label14" CssClass="style1" runat="server" text=":"></asp:label></td>
                <td><asp:TextBox CssClass="style3" runat="server" ID="vacno" BackColor="White"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Enter a 3 digit Number" ControlToValidate="vacno"></asp:RegularExpressionValidator></td>
                </tr>                
                </table>                                
                <br />  <br />
                <div class="title"> <h3> Job Details </h3>
                                </div>                 
                    <table width="inherit" border="none">
                    <tr><td colspan="2"><asp:label ID="Label15" CssClass="style1" runat="server" Font-Size="Small" text="  Eligibility  :          "></asp:label>
                        <br />                        
                </td></tr>                
                <tr><td><center style="margin-left: 40px">
                    <asp:TextBox CssClass="style3" 
                        runat="server" ID="eligibility" Width="523px" Height="90px" TextMode="MultiLine" 
                        BackColor="White"></asp:TextBox></center></td></tr>
                <tr><td colspan="2"><br /><asp:label ID="Label16" CssClass="style1" runat="server" Font-Size="Small" text="  Job Description  :          "></asp:label></td></tr>        
                <tr><td style="padding-left:40px">
                        <asp:TextBox CssClass="style3" runat="server" ID="jdesc" Width="523px" 
                            Height="138px" TextMode="MultiLine" 
                        BackColor="White" ></asp:TextBox>
                        <br /><br /></td></tr>
                        <tr><td colspan="1" align="center"><br /><br />
                        <asp:Label ID="warn" runat="server" Font-Bold="True" Font-Size="Small" 
                                ForeColor="#FF3399"></asp:Label><br /><br />
                <asp:Button CssClass="style2" ID="apply" runat="server" Text="Post Job" 
                        onclick="apply_Click" /><br /><br />
                </td></tr>
                    </table>              
            </div></div></li>
            </ul>                 
      </div>
    </div>      
    </form>
</body>
</html>
