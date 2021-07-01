using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {  //when nobody log in, some tabs are invisible
            try
            {
                if (Session["role"] == null)  //
                {
                    userlogin.Visible = true;
                    usersignup.Visible = true;
                    logout.Visible = false;  //log out
                    userprofile.Visible = false; //hello user

                    adminlogin.Visible = true; //admin log in foot link
                    authormanagement.Visible = false;
                    publishermanagement.Visible = false;
                    bookinventory.Visible = false;
                    bookIssuing.Visible = false;
                    membermanagement.Visible = false;
                }
                else if(Session["role"].Equals("user"))   //user login interface  //Session["role"] = "user";
                {
                    userlogin.Visible = false;
                    usersignup.Visible = false;
                    logout.Visible = true;  //log out
                    userprofile.Visible = true; //hello user
                    userprofile.Text = "Hello " + Session["username"].ToString();


                    adminlogin.Visible = true; //admin log in foot link
                    authormanagement.Visible = false;
                    publishermanagement.Visible = false;
                    bookinventory.Visible = false;
                    bookIssuing.Visible = false;
                    membermanagement.Visible = false;
                }
                else if (Session["role"].Equals("admin"))   //user login interface  //Session["role"] = "admin";
                {
                    userlogin.Visible = false;
                    usersignup.Visible = false;
                    logout.Visible = true;  //log out
                    userprofile.Visible = true; //hello user
                    userprofile.Text = "Hello Admin " + Session["username"].ToString();


                    adminlogin.Visible = false; //admin log in foot link
                    authormanagement.Visible = true;
                    publishermanagement.Visible = true;
                    bookinventory.Visible = true;
                    bookIssuing.Visible = true;
                    membermanagement.Visible = true;
                }
                else if (Session["role"].Equals("author"))   //author  interface  //Session["role"] = "author";
                {
                    userlogin.Visible = false;
                    usersignup.Visible = false;
                    logout.Visible = true;  //log out
                    userprofile.Visible = false; //hello user

                    //userprofile.Text = "Hello Admin " + Session["username"].ToString();


                    adminlogin.Visible = false; //admin log in foot link
                    authormanagement.Visible = false;
                    publishermanagement.Visible = true;
                    bookinventory.Visible = true;
                    bookIssuing.Visible = true;
                    membermanagement.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
                
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void authormanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthmanagement.aspx");
        }

        protected void publishermanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void bookinventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void bookIssuing_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void membermanagement_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void usersignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void userprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            Response.Redirect("homepage.aspx");

            userlogin.Visible = true;
            usersignup.Visible = true;
            logout.Visible = false;  //log out
            userprofile.Visible = false; //hello user

            adminlogin.Visible = true; //admin log in foot link
            authormanagement.Visible = false;
            publishermanagement.Visible = false;
            bookinventory.Visible = false;
            bookIssuing.Visible = false;
            membermanagement.Visible = false;

        }
    }
}