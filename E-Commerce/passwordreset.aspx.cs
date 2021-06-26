using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Globalization;

namespace ecom
{
    public partial class passwordreset : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;


        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
            con.Open();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int j=2;

            DataSet ds = new DataSet();
            da = new SqlDataAdapter("select username from userdata", con);
            da.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr[0].ToString() == TextBox1.Text)
                {
                    Response.Redirect("pass2.aspx");
                    j = 0;
                }
            }

            if (j == 2)
            {

                if (TextBox1.Text == "")
                    Label1.Text = "Please Enter username";
                else
                {
                    Label1.Text = "Username not found!";
                    Label1.BackColor = System.Drawing.Color.Red;
                }

            }
          
        }
    }
}