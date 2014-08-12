<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResume.aspx.cs" Inherits="HR_SearchResume" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Search Resume </title>
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
    <div id="page-bgtop">
    <div id="pagetop">
    <div class="post">
        
        <br />
        <br />
        <div class="title"><h3>Search Resume</h3>
                                </div>
                        <br />
        <br />        <center>
        <table width="inherit" id="search1" border="none">
                <tr><td>
        <asp:Label CssClass="style1" runat="server" ID="Label1" Text="Skills"></asp:Label></td>        
        <td><asp:TextBox ID="skill" CssClass="style3" runat="server" ></asp:TextBox></td>        
        <td><asp:Label CssClass="style1" ID="Label2" runat="server" Text="Experience"></asp:Label></td>
        <td><asp:DropDownList CssClass="style3" ID="experience" runat="server">
                    </asp:DropDownList></td>
        </tr>
        <tr><td></td><td>By Skills - eg: Java, etc., </td>
        <td></td><td> By Experience - </td></tr>
        <tr><td colspan="3"></td><td>
        <br />
        <asp:Button ID="searchjobs" CssClass="style2" runat="server" Text="Search" 
                onclick="searchjobs_Click" /></td></tr>
        </table></center>   
        <br />
        <br />
        <asp:Label CssClass="style1" runat="server" ID="result" ></asp:Label>
        <br />
        <asp:Label CssClass="style1" runat="server" ID="grid" ></asp:Label>
        <br /><br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="621px" AutoGenerateColumns="False" 
                    onrowcommand="GridView1_RowCommand"  
                    onpageindexchanging="GridView1_PageIndexChanging" >
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>                    
            <asp:TemplateField HeaderText="JSeekerID">
                <itemtemplate>
                <asp:LinkButton CommandName="cmdBind"  runat="server"  Text='<%#Eval("jsid")%>' ID="hypsid" ToolTip='<%#Eval("qualification")%>'>LinkButton
                </asp:LinkButton>                 
                </itemtemplate>
                </asp:TemplateField>            
                <asp:TemplateField><ItemTemplate>
                <asp:LinkButton CommandName="apply"  runat="server"  Text="Send Mail" ID="apply1" ToolTip='<%#Eval("email")%>'>Send 
                    Mail
                </asp:LinkButton> 
                </ItemTemplate></asp:TemplateField>
                <asp:BoundField DataField="experience" HeaderText="Experience" />
            <asp:BoundField DataField="prof_details" HeaderText="Professional Details" />
            <asp:BoundField DataField="skills" HeaderText="Skills" />                                               
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Width="0"/>
                    <EditRowStyle BackColor="#999999" Height="25px" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            
                <br />
     
        </div>    
    <!--<ul>
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
            <!--<div class="style4" align="center">
	        <h2 class="title"> Recruiters Login <br /> <br /></h2>	                        
	        </div>
	        <div class="style4">
	        <table border="none" cellpadding="0" cellspacing="0" id="login">
	        <tr>
             </tr>             
             <tr>
             </tr>
             <tr><td colspan="2" class="style1">
             <center style="width: 373px">
                 <asp:Label ID="warn" runat="server" Font-Size="Smaller" ForeColor="#FF0066" 
                     Visible="False"></asp:Label>
                 <br />                 
                 <br />
                 </center></td>
             </tr>                                                    
	        </table>
	        <br /><br />	        	       
	        </div>!-->
            <!--</div></div></li>
            </ul>!-->                 
      </div>
     </div>       
     </div>      
    </form>
</body>
</html>
