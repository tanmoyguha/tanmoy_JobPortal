using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for dbclass
/// </summary>
public class dbclass
{
    SqlConnection sql1;
	public dbclass()
	{
        sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");
		//
		// TODO: Add constructor logic here
		//
	}
    public void srchjobs(DataSet ds, string sr)
    {
        sql1.Open();
        SqlCommand com = new SqlCommand(sr, sql1);
        SqlDataAdapter da = new SqlDataAdapter(com);
        da.Fill(ds, "hrjob");        
        sql1.Close();
        //return ds;
    }
}
