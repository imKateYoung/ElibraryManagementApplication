using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace ELibraryManagement
{
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        //connection string at web.config
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            // if-else to check publisher condition
            if (CheckPublisherExists())
            {
                Response.Write("<script>alert('This publisher ID already exists, please try another ID')</script>");
            }
            else
            {
                addPublisher();
            }
        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            if (CheckPublisherExists())
            {
                updatePublisher();
            }
            else
            {
                Response.Write("<script>alert('This publisher does not exist, would you like to add it?')</script>");
            }
        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            if (CheckPublisherExists())
            {
                deletePublisher();
            }
            else
            {
                Response.Write("<script>alert('This publisher has no corresponding record.')</script>");
            }
        }

        protected void goBtn_Click(object sender, EventArgs e)
        {
            if (CheckPublisherExists())
            {
                findPublisher();
            }
            else
            {
                Response.Write("<script>alert('This publisher has no corresponding record.')</script>");
            }
        }


        bool CheckPublisherExists()
        {
            //sql connection set up
            //sql command set up 
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM publisher_master where publisher_id = '" + publisherID.Text.Trim() + "'; ", con);
                //sql adapater, retreive data from sql server and put into a new datatable, then fill it with datatable
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);


                if( dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void findPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from  publisher_master where publisher_id='" + publisherID.Text.Trim() + "';", con);


                //sql adapater, retreive data from sql server and put into a new datatable, then fill it with datatable
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    publishName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('There is no corrseponding record to this publisher ID')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master (publisher_id,publish_name)VALUES(@publisher_id,@publish_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", publisherID.Text.Trim());
                cmd.Parameters.AddWithValue("@publish_name", publishName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE publisher_master SET publish_name=@publish_name WHERE publisher_id='" + publisherID.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("publish_name",publishName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher updated Successfully.');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE  FROM publisher_master WHERE publisher_id='" + publisherID.Text.Trim() + "' ", con);

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Publisher deleted Successfully.');</script>");
                con.Close();
                clearForm();
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            publisherID.Text = "";
            publishName.Text = "";
        }
    }




}