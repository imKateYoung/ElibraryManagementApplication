using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class membermanagement : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void goBtn_Click(object sender, EventArgs e)
        {
            //read data and fill in the textbox
            getMemberID();

        }

        protected void activeBtn_Click(object sender, EventArgs e)
        {

        }

        protected void pendingBtn_Click(object sender, EventArgs e)
        {

        }

        protected void deactiveBtn_Click(object sender, EventArgs e)
        {

        }

        protected void delBtn_Click(object sender, EventArgs e)
        {

        }



        void getMemberID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master where member_id = '" + memberID.Text.Trim() + "'; ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        memberID.Text = dr.GetValue(8).ToString();
                        fullName.Text = dr.GetValue(0).ToString();
                        contactNo.Text = dr.GetValue(2).ToString();
                        emailAddress.Text = dr.GetValue(3).ToString();
                        city.Text = dr.GetValue(5).ToString();
                        state.Text = dr.GetValue(4).ToString();
                        zipcode.Text = dr.GetValue(6).ToString();
                        accStatus.Text = dr.GetValue(10).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strCon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master where member_id = '" +memberID.Text.Trim() + "'; ", con);

                //sql adapater, retreive data from sql server and put into a new datatable, then fill it with datatable
                SqlDataAdapter da = new SqlDataAdapter();
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
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

        void updateStatus()
        {

        }

        void delMember()
        {

        }
    }
}