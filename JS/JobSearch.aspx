<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobSearch.aspx.cs" Inherits="JS_JobSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Jobs</title>
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
	    <td height="70" colspan="6" class="style9" nowrap="nowrap"> &nbsp;&nbsp; ZenithJobs |<span class="tagline">|&nbsp;&nbsp;&nbsp;&nbsp;Jobs </span></td>
	    <td class="style8">
            <center>
                <asp:Button ID="Button1" runat="server" Text="Sign Out" CssClass="style2" onclick="Button1_Click" />                                
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
    <ul><li>
        <div id="content">
            <div class="post2">            
                <table width="inherit" id="search1" border="none">
                <tr><td>
                    <asp:Label CssClass="style1" ID="Label1" runat="server" Text="Skill"></asp:Label></td>
                    <td><asp:TextBox CssClass="style3" ID="skill" runat="server" ></asp:TextBox></td>
                    <td><br /><br />
                        <table><tr><td><asp:Label CssClass="style1" ID="Label2" runat="server" Text="Location"></asp:Label></td>
                    <td><asp:TextBox CssClass="style3" ID="location" runat="server" ></asp:TextBox></td></tr>
                    <tr><td colspan="2" align="center"><asp:Label CssClass="style1" ID="Label4" runat="server" Text="Separate Places with a , "></asp:Label></td></tr>
                    </table>                    
                </td></tr>
                <tr><td><asp:Label CssClass="style1" runat="server" Text=""></asp:Label></td>
                <td>  
                    <asp:DropDownList CssClass="style3" ID="DropDownList1" runat="server" DataTextField="role" DataValueField="id">
                    </asp:DropDownList></td>
                    <td align="right"><asp:DropDownList CssClass="style3" ID="DropDownList2" 
                            runat="server" >
                    </asp:DropDownList></td>
                    <td align="right"><asp:Label Text="" runat="server" CssClass="style1"></asp:Label></td>
                    </tr>
                <tr><td colspan="4" align="right"><br />
                <asp:Button CssClass="style2" ID="searchjobs" runat="server" Text="Submit" 
                        onclick="searchjobs_Click" /><br />
                </td></tr>
                </table>                                
                <br />                   
            </div>            
            <div class="post2">
                <br />
            </div>
            <div class="post2">
                <!--<asp:Table ID="Table1" runat="server" Height="50px" Width="118px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server"></asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>!-->
            <br /><br />
                <br /><center>                
                <asp:label id="applied_jobs" CssClass="title" runat="server"></asp:label></center>
                <br />
                <center>
                <asp:label id="grid" CssClass="style1" runat="server"></asp:label></center>
                <br /><br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="621px" AutoGenerateColumns="False" 
                    onrowcommand="GridView1_RowCommand"  
                    onpageindexchanging="GridView1_PageIndexChanging" >
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>                    
            <asp:TemplateField HeaderText="JobID">
                <itemtemplate>
                <asp:LinkButton CommandName="cmdBind"  runat="server"  Text='<%#Eval("jobid")%>' ID="hypsid" ToolTip='<%#Eval("jobid")%>'>LinkButton
                </asp:LinkButton>                 
                </itemtemplate>
                </asp:TemplateField>            
                <asp:TemplateField><ItemTemplate>
                <asp:LinkButton CommandName="apply"  runat="server"  Text="Apply" ID="apply1" ToolTip='<%#Eval("jobid")%>'>Apply
                </asp:LinkButton> 
                </ItemTemplate></asp:TemplateField>
                <asp:BoundField DataField="location" HeaderText="Location" />
            <asp:BoundField DataField="jobdetails1" HeaderText="JobDetails" />
            <asp:BoundField DataField="jobdetails2" HeaderText="Preferred Skills" />                                               
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Width="0"/>
                    <EditRowStyle BackColor="#999999" Height="25px" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            
                <br />
            
            </div>
            </div></li>
            <li>
        <div id="contentright">
        <div class="post" style="background-color: #FFFFFF">
        <p class="style1"> Hello r /&gt; /&gt; /&gt;</p>
        </div>        
        </div>
        </li></ul>            
    </div>    
</div>

    </form>
</body>
</html>
