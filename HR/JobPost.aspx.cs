using System;
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
using System.Data.Sql;
using System.Data.SqlClient;

public partial class HR_JobPost : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");    
    protected void page_Preinit(object sender, EventArgs e)
    {
            try
            {
                string s = Session["cname"].ToString().Trim();                
            }
            catch (Exception)
            {
                Server.Transfer("../HR/hr_login.aspx", true);
            }        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        //warn.Text;
        warn.Visible = false;
        warn1.Visible = false;
        if (!IsPostBack)
        {
            sql1.Open();
            string farea = "select * from functional_area";
            SqlCommand com1 = new SqlCommand(farea, sql1);
            SqlDataAdapter da1 = new SqlDataAdapter(com1);
            DataSet ds = new DataSet();
            da1.Fill(ds, "farea");
            da1.Dispose();
            sql1.Close();
            funcarea.DataSource = ds.Tables["farea"];
            funcarea.DataTextField = ds.Tables["farea"].Columns["role"].ToString();
            funcarea.DataValueField = ds.Tables["farea"].Columns["id"].ToString();
            funcarea.DataBind();
            string in1 = "select * from industry";
            sql1.Open();
            SqlCommand com2 = new SqlCommand(in1, sql1);
            SqlDataAdapter da2 = new SqlDataAdapter(com2);
            da2.Fill(ds, "industry");
            industry.DataSource = ds.Tables["industry"];
            industry.DataTextField = ds.Tables["industry"].Columns["role"].ToString();
            industry.DataValueField = ds.Tables["industry"].Columns["id"].ToString();
            industry.DataBind();
            da1.Dispose();
            sql1.Close();
            ListItem l1;
            l1 = new ListItem("Rs. 0", "0");
            salary.Items.Add(l1);            
            l1 = new ListItem("Rs. 1 - Rs. 50,000","1");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 50,000 - Rs. 1,00,000 ", "2");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 1,00,000 - Rs. 2,00,000", "3");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 2,00,000 - Rs. 3,00,000", "4");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 3,00,000 - Rs. 4,00,000", "5");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 4,00,000 - Rs. 5,00,000", "6");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 5,00,000 - Rs. 7,00,000", "7");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 7,00,000 - Rs. 10,00,000", "8");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 10,00,000 - Rs. 15,00,000", "9");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 15,00,000 - Rs. 20,00,000", "10");
            salary.Items.Add(l1);
            l1 = new ListItem("Rs. 20,00,000 - Rs. 25,00,000", "11");
            salary.Items.Add(l1);
            l1 = new ListItem(" > Rs. 25,00,000", "12");
            salary.Items.Add(l1);
        }
    }
    protected void apply_Click(object sender, EventArgs e)
    {
        string s1 = "select hrid from hr_profile where jsid=" + Session["jname"].ToString();
        sql1.Open();
        SqlCommand com = new SqlCommand(s1, sql1);
        string hrid1 = com.ExecuteScalar().ToString();
        string pdate = System.DateTime.Today.ToString();
        string str = "insert into hr_jobpost (hrid,skill1,skill2,industry_type,functional_area,exp_req,job_type,posted_date,qual1,position,job_desc,loc,salary,active) values(" + hrid1 + ",'" + skill1.Text.Trim() + "','" + skill2.Text.Trim() + "'," + industry.SelectedValue + "," + funcarea.SelectedValue + "," + exp + ",'" + jtype.SelectedValue + "'," + pdate + ",'" + qual.Text + "','" + position.Text + "','" + jdesc.Text + "','" + loc.Text + "','" + salary.SelectedValue.ToString() + "',1)";
        SqlCommand com1 = new SqlCommand(str,sql1);
        if (com1.ExecuteNonQuery() > 0)
        {
            sql1.Close();
            warn1.Visible = true;
            warn1.Text = " Job Successfully Posted ... ";
            //Response.Redirect("../HR/SearchResume.aspx");
        }
        else
        {
            sql1.Close();
            warn1.Visible = true;
            warn1.Text = "Could Not Post. Try Again ... ";
        }
    }
}
