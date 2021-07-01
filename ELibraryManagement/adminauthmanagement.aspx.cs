using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class adminauthmanagement : System.Web.UI.Page
    {

        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void goBtn_Click(object sender, EventArgs e)
        {
            showAuthorName();
        }


        protected void addBtn_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                Response.Write("<script>alert('This author ID already exists')</script>");
            }
            else
            {
                addNewAuthor();
            }

        }

        protected void updateBtn_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                updateAuthor();               
            }
            else
            {
                Response.Write("<script>alert('Please enter an correct autho ID')</script>");
            }
        }

        protected void delBtn_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                deleteAuthor();
            }
            else
            {
                Response.Write("<script>alert('There is no corrseponding record to this author ID')</script>");
            }
        }

        // check author in database, redundant?
        bool checkAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master where author_id='" + authorID.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd); //adapting data from sql server and put into datatable 
                DataTable dt = new DataTable();
                da.Fill(dt);  //fill up objects with rows

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        
        void showAuthorName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from author_master where author_id='" + authorID.Text.Trim() + "';", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd); //adapting data from sql server and put into datatable 
                DataTable dt = new DataTable();
                da.Fill(dt);  //fill up objects with rows

                if (dt.Rows.Count >= 1)
                {
                    authorName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('There is no corrseponding record to this author ID')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        // add author, working
        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO author_master(author_id,author_name)values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", authorID.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", authorName.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added Successfully.');</script>");
                clearForm();
                GridView1.DataBind(); //refresh data when adding

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                clearForm();
            }
        }


        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master SET author_name=@author_name WHERE author_id='" + authorID.Text.Trim() + "'", con);
                //("UPDATE author_master_tbl SET author_name=@author_name WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@author_name", authorName.Text.Trim());


                //UPDATE CUSTOMERS
                //SET ADDRESS = 'Pune' WHERE ID = 6
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author updated Successfully.');</script>");
                clearForm();
                GridView1.DataBind(); //refresh data when adding


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE  FROM author_master WHERE author_id='" + authorID.Text.Trim() + "' ", con);
                                             //("DELETE from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind(); //refresh data when adding


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void clearForm()
        {
            authorID.Text = "";
            authorName.Text = "";
        }


    }
}