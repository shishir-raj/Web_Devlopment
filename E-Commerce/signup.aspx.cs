using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading;

namespace ecom
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (TextBox1.Text == null || TextBox2.Text == null)
            {
                Label1.Text = "Please enter a valid username and password";
                Label1.BackColor = System.Drawing.Color.Red;

            }
            if(TextBox1.Text=="" || TextBox2.Text =="")
            {
                Label1.Text = "Please enter a valid username and password";
                Label1.BackColor = System.Drawing.Color.Red; 

            }
            

            if (TextBox2.Text == TextBox3.Text)
            {
                string gender;
                string s1 = "select username from userdata";
                da = new SqlDataAdapter(s1, con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                int j=2;
                foreach (DataRow dr in ds1.Tables[0].Rows)
                {

                    if (dr[0].ToString() == TextBox1.Text)
                    {
                        Label1.Text = "Sorry the username exists. Please select a differnt username.";
                        Label1.BackColor = System.Drawing.Color.Red;
                        TextBox1.Text = "";
                        TextBox1.Focus();
                        j=1;




                    }
                }
                if (j != 1)
                {




                    if (RadioButton1.Checked)
                    {
                        gender = "male";


                        string s = "insert into userdata values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + gender + "')";
                        cmd = new SqlCommand(s, con);
                        cmd.ExecuteNonQuery();
                        Session["user"] = TextBox1.Text;
                        Response.Redirect("homepage.aspx");


                    }
                    else if (RadioButton2.Checked)
                    {
                        gender = "female";
                        string s = "insert into userdata values=('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + gender + "')";
                        cmd = new SqlCommand(s, con);
                        cmd.ExecuteNonQuery();
                        Session["user"] = TextBox1.Text;
                        Response.Redirect("homepage.aspx");

                    }
                    else
                        Label1.Text = "please select gender";
                }
                
            }
            else
            {
                Label1.Text = "Passwords do not match, please try again";
                Label1.BackColor = System.Drawing.Color.Red;

            }


        }
    }
}