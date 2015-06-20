using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class ProfileForm : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
    protected void change_click(object sender, EventArgs e)
    {
        string virtualfolder;
        string physicalfolder;
        string ext;
        string imgname;
        
        try
        {
            
            virtualfolder = "~/student/";
            physicalfolder = Server.MapPath(virtualfolder);
            ext = Path.GetExtension(physicalfolder + FileUpload1.FileName);
            System.Guid guid = System.Guid.NewGuid();
            string iname = guid.ToString();
            imgname = iname + ext;
            FileUpload1.SaveAs(physicalfolder + imgname);
            string email = Session["StudentUser"].ToString();
            
            SqlCommand cmd = new SqlCommand("Update Students SET image = ('" + imgname + "') where (email='"+email+"')",con);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();                
            }
            if(con.State==ConnectionState.Open)
            {
                int dr = cmd.ExecuteNonQuery();
                if(dr>0)
                {
                    Response.Redirect("ProfileForm.aspx");
                }
                else
                {
                    Response.Write("Error!");
                }
            }

            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
        }

        catch(Exception ex)
        {
            Response.Write("Error! : " + ex.Message);
        }
    }
}