﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class HR_ProfileEdit : System.Web.UI.Page
{
    protected void page_Preinit(object sender, EventArgs e)
    {
        try
        {
            string s = Session["name"].ToString();
        }
        catch (Exception excptn)
        {
            Server.Transfer("hr_login.aspx", true);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
}
