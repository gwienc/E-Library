using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    deleteReservedAndNotIssuedBooks();
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            try
            {
                string sessionRole = Session["role"] as string;
                if (string.IsNullOrEmpty(sessionRole))
                {
                    LinkButton1.Visible = true; // user login link button
                    LinkButton2.Visible = true; // sign up link button
                    LinkButton6.Visible = true; // admin login link button

                    LinkButton3.Visible = false; // logout link button
                    LinkButton7.Visible = false; // hello user link button
                    LinkButton11.Visible = false; // author managment link button
                    LinkButton12.Visible = false; // publisher managment button
                    LinkButton8.Visible = false; // book inventory button
                    LinkButton9.Visible = false; // book issuing button
                    LinkButton10.Visible = false; // member managment button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton6.Visible = true; // admin login link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Witaj " + Session["username"].ToString();
                    LinkButton11.Visible = false; // author managment link button
                    LinkButton12.Visible = false; // publisher managment button
                    LinkButton8.Visible = false; // book inventory button
                    LinkButton9.Visible = false; // book issuing button
                    LinkButton10.Visible = false; // member managment button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login link button
                    LinkButton2.Visible = false; // sign up link button
                    LinkButton6.Visible = false; // admin login link button

                    LinkButton3.Visible = true; // logout link button
                    LinkButton7.Visible = true; // hello user link button
                    LinkButton7.Text = "Witaj Admin";
                    LinkButton11.Visible = true; // author managment link button
                    LinkButton12.Visible = true; // publisher managment button
                    LinkButton8.Visible = true; // book inventory button
                    LinkButton9.Visible = true; // book issuing button
                    LinkButton10.Visible = true; // member managment button
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagment.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagment.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookInventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminBookIssuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminMemberManagment.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewBooks.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login link button
            LinkButton2.Visible = true; // sign up link button
            LinkButton6.Visible = true; // admin login link button


            LinkButton3.Visible = false; // logout link button
            LinkButton7.Visible = false; // hello user link button
            LinkButton3.Visible = false; // author managment link button
            LinkButton3.Visible = false; // publisher managment button
            LinkButton3.Visible = false; // book inventory button
            LinkButton3.Visible = false; // book issuing button
            LinkButton3.Visible = false; // member managment button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        private void deleteReservedAndNotIssuedBooks()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT book_id FROM book_reservation_tbl WHERE end_of_booking <'" + DateTime.Now + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow row in dt.Rows)
                {
                    string bookID = row["book_id"].ToString();
                    SqlCommand cmd2 = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock + 1 WHERE book_id = '" + bookID + "'", con);
                    cmd2.ExecuteNonQuery();
                }

                cmd = new SqlCommand("DELETE FROM book_reservation_tbl WHERE end_of_booking <'" + DateTime.Now + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}