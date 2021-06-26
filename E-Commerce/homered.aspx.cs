using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ecom
{
    public partial class homered : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();

            if (!(Session["user"] == null))
            {
                Label1.Text = "welcome " + Session["user"];
                Button4.Enabled = false;
                Button4.Visible = false;
                Button5.Enabled = false;
                Button5.Visible = false;
                Button13.Enabled = true;
                Button13.Visible = true;

            }

        }
        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("logintest1.aspx");

        }
        protected void Button13_Click(object sender, EventArgs e)
        {

            Button4.Enabled = true;
            Button4.Visible = true;
            Button5.Enabled = true;
            Button5.Visible = true;
            Label1.Text = "";
            Button13.Enabled = false;
            Button13.Visible = false;
            Session["user"] = null;


        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");

        }
        protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
        {
            if (Menu1.SelectedItem.Value == "cart")
            {
                if (Session["user"] == null)
                {
                    Session["directed_from_cart"] = "1";
                    Response.Redirect("logintest1.aspx");
                }
                else
                    Response.Redirect("usercart.aspx");

            }

            Session["category"] = Menu1.SelectedItem.Value;
            Session["gender"] = Menu1.SelectedItem.Value;
            Response.Write(Session["category"]);
            Response.Redirect("men.aspx");


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

      

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (Session["user"] != null)
            {
                string s = "insert into cartitems values('" + Session["user"] + "','" + e.CommandArgument.ToString() + "')";
                cmd = new SqlCommand(s, con);
                cmd.ExecuteNonQuery();
                if (e.CommandName == "add_to_cart")
                {
                    Button b1 = e.CommandSource as Button;
                    b1.Enabled = false;
                    b1.Visible = false;

                }
                else
                    Response.Redirect("homepage.aspx");


            }
            else
                Response.Redirect("logintest1.aspx");


        }

        protected void Button14_Click(object sender, EventArgs e)
        {
             
        }
    }
}