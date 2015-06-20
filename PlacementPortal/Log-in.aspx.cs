using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Log_in : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["StudentUser"]!="NotAvailable")
        {
            Response.Redirect("ProfileForm.aspx");
        }
    }

    private Boolean CheckUser(string email)
    {
        SqlParameter p1, p2;
        SqlCommand cmd = new SqlCommand("select email from Students where email = @email", con);
        p1 = new SqlParameter();
        p1.ParameterName = "@email";
        p1.Value = email;
        p1.SqlDbType = SqlDbType.VarChar;
        p1.Size = 50;
        p1.Direction = ParameterDirection.InputOutput;
        cmd.Parameters.Add(p1);
        string str = "";

        try
        {
            if(cmd.Connection.State != ConnectionState.Open)
            {
                cmd.Connection.Open();
            }

            if (cmd.ExecuteScalar() != null)
            {
                str = cmd.ExecuteScalar().ToString();
            }
            


        }
        catch(Exception ex)
        {
            throw new Exception("Invalid command! " + ex.Message);
        }

        finally
        {
            if(cmd.Connection.State!=ConnectionState.Closed)
            {
                cmd.Connection.Close();
            }
        }

        if(str!="")
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    public string CheckAuthentication(string email, string password)
    {
        if(CheckUser(email))
        {
            SqlParameter p1, p2;
            SqlCommand cmd = new SqlCommand("select email, password from Students where email = @email and password=@password", con);
            p1 = new SqlParameter();
            p1.ParameterName = "@email";
            p1.Value = email;
            p1.SqlDbType = SqlDbType.VarChar;
            p1.Size = 50;
            p1.Direction = ParameterDirection.InputOutput;
            cmd.Parameters.Add(p1);

            p2 = new SqlParameter();
            p2.ParameterName = "@password";
            p2.Value = password;
            p2.SqlDbType = SqlDbType.VarChar;
            p2.Size = 50;
            p2.Direction = ParameterDirection.InputOutput;
            cmd.Parameters.Add(p2);

            DataTable dt = new DataTable();

            try
            {
                if(cmd.Connection.State!=ConnectionState.Open)
                {
                    cmd.Connection.Open();
                }
                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }

            catch(Exception ex)
            {
                throw new Exception("Invalid Command! " + ex.Message);
            }

            finally
            {
                if(cmd.Connection.State != ConnectionState.Closed)
                {
                    cmd.Connection.Close();
                }
            }

            if(dt.Rows.Count>0)
            {
                string sUser = dt.Rows[0]["email"].ToString();
                return sUser;
            }
            else
            {
                return "Fail";
            }

        }

        else
        {
            return "Fail";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uname = email.Text;
        string pwd = pass.Text; 
        string Result = CheckAuthentication(uname, pwd);

        if(Result == "Fail")
        {
            lblerror.ForeColor = System.Drawing.Color.Red;
            lblerror.Text = "<li>Either Username or Password is incorrect</li>";
        }
        else
        {
            Session["StudentUser"] = Result;
            Response.Redirect("ProfileForm.aspx");
        }
    }
}