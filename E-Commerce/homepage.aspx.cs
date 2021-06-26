using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ecom
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (TextBox1.Text == "" || TextBox1.Text == null)
            {
                TextBox1.Text = "Enter items to search";
                TextBox1.Focus();

            }
            else if (TextBox1.Text == "men" || TextBox1.Text == "boys" || TextBox1.Text == "boy" || TextBox1.Text == "man" || TextBox1.Text == "mans" || TextBox1.Text == "mens")
            {
                Session["category"] = null;
                Session["gender"] = "male";
                Response.Redirect("men.aspx");

            }
            else if (TextBox1.Text == "women" || TextBox1.Text == "female" || TextBox1.Text == "woman" || TextBox1.Text == "womans" || TextBox1.Text == "females" || TextBox1.Text == "girl" || TextBox1.Text == "girls" || TextBox1.Text == "female")
            {
                Session["category"] = null;
                Session["gender"] = "female";
                Response.Redirect("men.aspx");
            }
            else if (TextBox1.Text == "jeans" || TextBox1.Text == "jeans" || TextBox1.Text == "pants" || TextBox1.Text == "pant" || TextBox1.Text == "lower" || TextBox1.Text == "bottom")
            {
                Session["category"] = "mbottom";
                Session["gender"] = null;
                Response.Redirect("men.aspx");

            }
            else if (TextBox1.Text == "tops" || TextBox1.Text == "top" || TextBox1.Text == "upper" || TextBox1.Text == "shirt" || TextBox1.Text == "shirts" || TextBox1.Text == "tshirts" || TextBox1.Text == "tshirt")
            {
                Session["category"] = "mtop";
                Response.Redirect("men.aspx");
            }
            else if (TextBox1.Text == "kids" || TextBox1.Text == "kid" || TextBox1.Text == "child" || TextBox1.Text == "children" || TextBox1.Text == "childs")
            {
                Session["gender"] = "kids";
                Response.Redirect("men.aspx");

            }

            else
            {
                TextBox1.Text = "Enter search item";
                TextBox1.Focus();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

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
            Response.Redirect("men.aspx"); 
            

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(2,3);
            Image1.ImageUrl = "~/image/" + i.ToString() + ".jpg";

           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["todisplay"] = "new";

            Response.Redirect("homered.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["todisplay"] = "sale";

            Response.Redirect("homered.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["todisplay"] = "acc";
            Response.Redirect("homered.aspx");

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session["category"] = "kids";
            Response.Redirect("men.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["category"] = "fbottom";
            Response.Redirect("men.aspx");

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Session["category"] = "fjackets";
            Response.Redirect("men.aspx");

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Session["category"] = "mwatch";
            Response.Redirect("men.aspx");

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Session["category"] = "bags";
            Response.Redirect("men.aspx");

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
            if (TextBox1.Text == "" || TextBox1.Text == null)
            {
                TextBox1.Text = "Enter items to search";
                TextBox1.Focus();

            }
            else if (TextBox1.Text == "men" || TextBox1.Text == "boys" || TextBox1.Text == "boy" || TextBox1.Text == "man" || TextBox1.Text == "mans" || TextBox1.Text == "mens")
            {
                Session["category"] = null;
                Session["gender"] = "male";
                Response.Redirect("men.aspx");

            }
            else if (TextBox1.Text == "women" || TextBox1.Text == "female" || TextBox1.Text == "woman" || TextBox1.Text == "womans" || TextBox1.Text == "females" || TextBox1.Text == "girl" || TextBox1.Text == "girls" || TextBox1.Text == "female")
            {
                Session["category"] = null;
                Session["gender"] = "female";
                Response.Redirect("men.aspx");
            }
            else if (TextBox1.Text == "jeans" || TextBox1.Text == "jeans" || TextBox1.Text == "pants" || TextBox1.Text == "pant" || TextBox1.Text == "lower" || TextBox1.Text == "bottom")
            {
                Session["category"] = "mbottom";
                Session["gender"] = null;
                Response.Redirect("men.aspx");

            }
            else if (TextBox1.Text == "tops" || TextBox1.Text == "top" || TextBox1.Text == "upper" || TextBox1.Text == "shirt" || TextBox1.Text == "shirts" || TextBox1.Text == "tshirts" || TextBox1.Text == "tshirt")
            {
                Session["category"] = "mtop";
                Response.Redirect("men.aspx");
            }
            else if (TextBox1.Text == "kids" || TextBox1.Text == "kid" || TextBox1.Text == "child" || TextBox1.Text == "children" || TextBox1.Text == "childs")
            {
                Session["gender"] = "kids";
                Response.Redirect("men.aspx");

            }

            else
            {
                TextBox1.Text = "Enter search item";
                TextBox1.Focus();

            }


        }
    }
}