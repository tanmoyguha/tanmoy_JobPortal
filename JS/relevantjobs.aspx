<%@ Page Language="C#" AutoEventWireup="true" CodeFile="relevantjobs.aspx.cs" Inherits="home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    /*protected void Page_Load(object sender, EventArgs e)
    {

    }*/
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="Images/myclass.css" type="text/css" />
    <style type="text/css">        
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
                <table width="inherit"><tr>
                <td align="left"><asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        BackColor="#FFFFCC" ></asp:Label></td>
                <td align="right"><asp:Button CssClass="style2" ID="Button2" runat="server" 
                        Text="Sign Out" onclick="Button2_Click" /></td>
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
                 <asp:Button CssClass="style2" ID="logout" runat="server" 
                Text="Sign Out" />
                </asp:Panel></li>!-->                
        </div>        
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
                    </table><br />                    
                </td></tr>
                <tr><td colspan="4" align="right">
                <asp:Button CssClass="style2" ID="searchjobs" runat="server" Text="Submit" 
                        onclick="searchjobs_Click" />
                </td></tr>
                </table>                                
                <br />                   
            </div>
            <div class="post2"><br />
                <br />
            </div>
            <div class="post2">
                <asp:WebPartManager ID="WebPartManager1" runat="server">
                </asp:WebPartManager>
                <asp:EditorZone ID="EditorZone1" runat="server" BackColor="#F7F6F3" 
                    BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Height="106px" 
                    Padding="6" Width="344px">
                    <FooterStyle HorizontalAlign="Right" BackColor="#E2DED6"></FooterStyle>
                    <PartTitleStyle Font-Bold="True" Font-Size="0.8em" ForeColor="#333333">
                    </PartTitleStyle>
                    <PartChromeStyle BorderColor="#E2DED6" BorderWidth="1px" BorderStyle="Solid">
                    </PartChromeStyle>
                    <PartStyle BorderColor="#F7F6F3" BorderWidth="5px"></PartStyle>
                    <LabelStyle Font-Size="0.8em" ForeColor="#333333"></LabelStyle>
                    <VerbStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
                    </VerbStyle>
                    <ErrorStyle Font-Size="0.8em"></ErrorStyle>
                    <EmptyZoneTextStyle Font-Size="0.8em" ForeColor="#333333"></EmptyZoneTextStyle>
                    <EditUIStyle Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333">
                    </EditUIStyle>
                    <HeaderStyle BackColor="#E2DED6" Font-Bold="True" Font-Size="0.8em" ForeColor="#333333">
                    </HeaderStyle>
                    <HeaderVerbStyle Font-Bold="False" Font-Size="0.8em" Font-Underline="False" ForeColor="#333333">
                    </HeaderVerbStyle>
                    <InstructionTextStyle Font-Size="0.8em" ForeColor="#333333">
                    </InstructionTextStyle>
                </asp:EditorZone>
                <asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC" 
                    Font-Names="Verdana" Height="93px" Padding="6" Width="346px">
                    <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
                    <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
                    <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
                    </TitleBarVerbStyle>
                    <MenuLabelHoverStyle ForeColor="#E2DED6"></MenuLabelHoverStyle>
                    <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
                    </MenuPopupStyle>
                    <MenuVerbStyle BorderColor="#5D7B9D" BorderWidth="1px" BorderStyle="Solid" ForeColor="White">
                    </MenuVerbStyle>
                    <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" ForeColor="White">
                    </PartTitleStyle>
                    <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333">
                    </MenuVerbHoverStyle>
                    <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" ForeColor="White">
                    </PartChromeStyle>
                    <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC">
                    </HeaderStyle>
                    <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
                </asp:WebPartZone>
                <asp:CatalogZone ID="CatalogZone1" runat="server">
                    <ZoneTemplate>
                        <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
                    </ZoneTemplate>
                </asp:CatalogZone>
                <br />
            
            </div>
            </div></li>
            <li>
        <div id="contentright">
        <div class="post" style="background-color: #FFFFFF">
        <p class="style1"> Hello <br /><br /><br /><br /><br /><br /></p>
        </div>        
        </div>
        </li></ul>            
    </div>    
</div>
</form>
</body>
</html>
