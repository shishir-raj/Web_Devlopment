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
    public partial class logintest1 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string s = "select password from userdata where username ='" + TextBox1.Text + "'  ";
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "Invalid username";
                Label1.BackColor = System.Drawing.Color.Red;
            }
            else if ((ds.Tables[0].Rows[0][0].ToString()) == TextBox2.Text)
            {
                Session["user"] = TextBox1.Text;
                
                Response.Redirect("homepage.aspx");


            }
            else
            {
                Label1.Text = "Invalid credentials. Please try again";
                Label1.BackColor = System.Drawing.Color.Red;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("passwordreset.aspx");

        }
    }
}