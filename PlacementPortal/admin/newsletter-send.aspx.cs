using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_newsletter_send : System.Web.UI.Page
{
    public static string constring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    public static SqlConnection con = new SqlConnection(constring);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void mailsend(string emailid)
    {
        string username = ""; 
        string password = ""; 

        string To = emailid.Trim();
        string Subject = "Placement News Letter";
        string Body = TextBox1.Text + "<br>" + "<a href = \'http://www.manipal.edu'> College Placement News Letter </a>";
        bool flag1;

        if(username != "" || password!= "" || Subject != "" || Body!="" || To!= "")
        {
            flag1 = SendEmail(username, password, To, Subject, Body, System.Web.Mail.MailFormat.Html, "");

            if(flag1)
            {
                Response.Write("Mail Sent Successfully!");
                TextBox1.Text = "";
            }
            else
            {
                Response.Write("Please insert all information");    
            }
        }
    }

    public static bool SendEmail(string pGmailEmail, string pGmailPassword, string pTo, string pSubject, string pBody, MailFormat pFormat, string pAttachmentPath)
    {
        MailMessage myMail = new MailMessage();
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserver", "smtp.gmail.com");
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpserverport", "465");
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusing", "2");
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate", "1");
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendusername", pGmailEmail);
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/sendpassword", pGmailPassword);
        myMail.Fields.Add("http://schemas.microsoft.com/cdo/configuration/smtpusessl", "true");

        myMail.Priority = MailPriority.High;
        myMail.From = pGmailEmail;
        myMail.To = pTo;
        myMail.Subject = pSubject;
        myMail.BodyFormat = pFormat;
        myMail.Body = pBody;

        if(pAttachmentPath.Trim() != "")
        {
            MailAttachment MyAttachment = new MailAttachment(pAttachmentPath);
            myMail.Attachments.Add(MyAttachment);
            myMail.Priority = MailPriority.High;
        }

        SmtpMail.SmtpServer = "smtp.gmail.com:465";
        System.Web.Mail.SmtpMail.Send(myMail);

        return true;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int i=0;

        try
        {
            SqlCommand cmd = new SqlCommand("select email from Students", con);
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            if (con.State == ConnectionState.Open)
            {
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    i++;
                    string emailid = dr[0].ToString();
                    mailsend(emailid);

                }
            }

            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }


        }

        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
        

    }
}