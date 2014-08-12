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
using System.IO;

public partial class JS_JSRegistration : System.Web.UI.Page
{
    SqlConnection sql1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=" + "|DataDirectory|\\jobportal.MDF;" + "Integrated Security=True;User Instance=True");    
    protected void page_Preinit(object sender, EventArgs e)
    {
        /*if (Session["jname"] != null)
        {
            Response.Redirect("home.aspx");
        }*/
        try
        {
            Session["jname"].ToString();
            Response.Redirect("../JS/JobSearch.aspx");
        }
        catch (Exception)
        {
        }        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Visible = false;
        Label31.Visible = false;
        if (!IsPostBack)
        { 
            string a;
            //int b;            
            ListItem l1;
            l1 = new ListItem("-Years-", "-1");
            years.Items.Add(l1);
            skil1.Items.Add(l1);
            skil2.Items.Add(l1);
            skil3.Items.Add(l1);
            for(int i=0;i<31;i++)
            {
                a = i + "";
                l1 = new ListItem(a, a);
                years.Items.Add(l1);
                skil1.Items.Add(l1);
                skil2.Items.Add(l1);
                skil3.Items.Add(l1);
            }
            l1 = new ListItem("30+","31");
            years.Items.Add(l1);
            skil1.Items.Add(l1);
            skil2.Items.Add(l1);
            skil3.Items.Add(l1);

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
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*if (TextBox2.Text.Length < 6)
        {
            CustomValidator1.IsValid = false;
        }
        if (CustomValidator1.IsValid)
        {*/            
            string s2 = "insert into js_login (email,pwd,company) values('" + mailid.Text.ToString() + "','" + pwd.Text.ToString() + "','no')";
            string s1 = "select * from js_login where email='" + mailid.Text.ToString() + "'";
            string s3 = "select jsid from js_login where email='" + mailid.Text.ToString() + "'";
            SqlCommand com1 = new SqlCommand(s1, sql1);
            SqlCommand com2 = new SqlCommand(s2, sql1);
            SqlCommand com3 = new SqlCommand(s3,sql1);
            try
            {                
                if (sql1.State == ConnectionState.Closed)
                    sql1.Open();                
                bool found = false;                
                SqlDataReader dr = com1.ExecuteReader();
                while (dr.Read())
                {
                    if (dr[2].ToString().Equals(mailid.Text.ToString().Trim()))
                    {
                        found = true;
                        Label31.Text = "EMail Id already exists.";
                        mailid.Focus();                        
                    }                  
                }                
                dr.Close();
                if (found == false)
                {
                    if (com2.ExecuteNonQuery() > 0)
                    {
                    }                    
                }
                com2.Dispose();
                s2 = com3.ExecuteScalar().ToString();
                string s5;
                if (male.Checked)
                    s5 = "male";
                else
                    s5 = "female";
                string s4 = "insert into js_profile values(" + s2 + ",'" + addr.Text.ToString() + "','" + loc.Text.ToString() + "'," + mob.Text + ",'" + s5 + "','" + fname.Text.ToString() + "','" + lname.Text.ToString() + "'," + years.SelectedIndex + "," + months.SelectedIndex + ",'" + industry.SelectedValue + "','" + funcarea.SelectedValue + "','" + qlevel.SelectedValue + "','" + eduspec.SelectedValue + "','" + skill1.Text.ToString().Trim() + "'," + skil1.SelectedValue + ",'" + skill2.Text.ToString().Trim() + "'," + skil2.SelectedValue + ",'" + skill3.Text.ToString().Trim() + "'," + skil3.SelectedValue + ",0,'active')";
                SqlCommand com4 = new SqlCommand(s4, sql1);
                com4.ExecuteNonQuery();
                bool a = upload();
                sql1.Close();
                Response.Redirect("JobSearch.aspx");
            }
            catch (Exception ex)
            {
                Label10.Text = "Internal Error, Try Again." + ex.Message;
            }
            finally
            {
                sql1.Close();
            }
        //}
        /*else 
        {
            Label10.Text = " Pssword should be minimum of 6 Characters ";
        }*/
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {        
    }
    protected bool upload()
    {
        string fn = Path.GetFileName(FileUpload1.PostedFile.FileName);
        if (fn == "")
        {
            return false;
        }
        else
        {
            string s = mailid.Text.ToString();
            string loc = Server.MapPath("CV") + "//" + s + fn;
            Response.Write(loc);
            string strr = Server.MapPath("CV") + "//" + s + "CV.doc";
            FileUpload1.PostedFile.SaveAs(strr);
            return true;
        }

    }
    protected void mailid_TextChanged(object sender, EventArgs e)
    {
        string s1 = "select * from js_login where email='" + mailid.Text.ToString().Trim() + "'";
        try
        {
            SqlCommand com1 = new SqlCommand(s1, sql1);            
            if (sql1.State == ConnectionState.Closed)
                sql1.Open();

            SqlDataReader dr = com1.ExecuteReader();            
            while (dr.Read())
            {
                if (dr[2].ToString().Equals(mailid.Text.ToString().Trim()))
                {
                    Label31.Visible = true;
                    Label31.Text = "EMail Id already exists.";
                    mailid.Focus();
                }
            }
            dr.Close();
            string aaa = pwd.Text;
            pwd.Text = aaa;
            aaa = cpwd.Text;
            cpwd.Text = aaa;
        }
        catch(Exception ex)
        {
            Label10.Text = "Internal Error, Try Again ..... " + ex.Message;
        }
    }
    protected void fresher_CheckedChanged(object sender, EventArgs e)
    {
        if (fresher.Checked)
        {
            years.SelectedIndex = 1;
            months.SelectedIndex = 1;
            Label21.Text = "Desired Industry";
            Label22.Text = "Desired Functional Area";
            resumehead.Focus();
        }        
    }
    protected void experienced_CheckedChanged(object sender, EventArgs e)
    {
        if (experienced.Checked)
        {
            years.SelectedIndex = -1;
            months.SelectedIndex = -1;
            Label21.Text = "Current Industry";
            Label22.Text = "Functional Area";
            years.Focus();
        }
    }
}
