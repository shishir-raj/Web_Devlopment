using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel;
using System.Reflection.Emit;
using System.Threading;

namespace ecom
{
    public partial class men1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();

           


            if (Session["user"] != null)
            {
                Label1.Text = "Welcome " + Session["user"];
                Button4.Enabled = false;
                Button4.Visible = false;
                Button5.Enabled = false;
                Button5.Visible = false;
                Button13.Enabled = true;
                Button13.Visible = true;

            }
            if (Session["category"].ToString() == "male")
            {
                DataList1.DataSourceID = null;

                DataList1.DataSourceID = "SqlDataSource2";


            }
            else if (Session["category"].ToString() == "female")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSourceID = "SqlDataSource2";


            }
            else if (Session["category"].ToString() == "kids")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSourceID = "SqlDataSource2";


            }
            else
                DataList1.DataSourceID = "SqlDataSource1";

            

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("logintest1.aspx");
            Session["directed_from"] = "men";

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
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

        protected void Button15_Click(object sender, EventArgs e)
        {           
            


            

        }
        protected void Button15_Click1(object sender, EventArgs e)
        {
            
        }
        protected void Button14_Click(object sender, EventArgs e)
        {          


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


            if (e.CommandName == "add_to_cart")
            {
                if (Session["user"] != null)
                {
                    cmd = new SqlCommand("insert into cartitems values('" + Session["user"] + "','" + e.CommandArgument.ToString() + "')", con);
                    cmd.ExecuteNonQuery();
                    Button b1 = e.CommandSource as Button;
                    b1.Enabled = false;
                    b1.Visible = false;
                    Label2.Text = "Item added to cart successfully";
                    Label2.BackColor = System.Drawing.Color.Green;
                }
                else
                    Response.Redirect("logintest1.aspx");

            }
            else if (e.CommandName == "buy_now")
            {
                Session["id_obj"] = e.CommandArgument.ToString();

                if (Session["user"] != null)
                    Response.Redirect("buynow.aspx");
                else
                    Response.Redirect("logintest1.aspx");

            }
            else
                Label2.Text = "ADD a valid command!";






        }


               
    

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Session["category"] = Menu1.SelectedItem.Value;
            Response.Redirect("men.aspx");

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
            
            Response.Redirect("men.aspx");

        }


    }
}