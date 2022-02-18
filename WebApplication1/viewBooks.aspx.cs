using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class viewBooks : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string bookID = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Button reservation = null;
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                reservation = e.Row.FindControl("Button1") as Button;
                string sessionRole = Session["role"] as string;
                if (string.IsNullOrEmpty(sessionRole))
                {
                    reservation.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    reservation.Visible = true;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            var row = (GridViewRow)button.NamingContainer;
            bookID = row.Cells[0].Text.Trim();
            var label1 = row.FindControl("Label1") as Label;
            var bookTitle = label1.Text.Trim();
            if (CheckIfBookExist())
            {
                if (CheckIfIssueEntryExist())
                {
                    Response.Write("<script>alert('Ten użytkownik posiada już tę książkę');</script>");
                }
                else
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("SELECT full_name,member_id FROM member_master_tbl WHERE member_id='" + Session["username"].ToString() + "'", con);
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        var memberID = dt.Rows[0]["member_id"].ToString();
                        var memberFullName = dt.Rows[0]["full_name"].ToString();
                        var startOfBooking = DateTime.Now.ToString();
                        var endofBooking = DateTime.Now.AddDays(3).ToString();

                        cmd = new SqlCommand("INSERT INTO book_reservation_tbl (book_id, book_name, member_id, member_name, start_of_booking, end_of_booking) VALUES(@book_id, @book_name, @member_id, @member_name, @start_of_booking, @end_of_booking)", con);
                        cmd.Parameters.AddWithValue("@book_id", bookID);
                        cmd.Parameters.AddWithValue("@book_name", bookTitle);
                        cmd.Parameters.AddWithValue("@member_id", memberID);
                        cmd.Parameters.AddWithValue("@member_name", memberFullName);
                        cmd.Parameters.AddWithValue("@start_of_booking", startOfBooking);
                        cmd.Parameters.AddWithValue("@end_of_booking", endofBooking);
                        cmd.ExecuteNonQuery();

                        cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock -1 WHERE book_id ='" + bookID + "'", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Książka została zarezerwowana');</script>");
                        GridView1.DataBind();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Nieprawidłowe ID użytkownika lub książki');</script>");
            }
        }
        bool CheckIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id='" + bookID + "' AND current_stock > 0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
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
        bool CheckIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM book_reservation_tbl WHERE member_id='" + Session["username"].ToString() + "' AND book_id='" + bookID + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
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
    }
}



