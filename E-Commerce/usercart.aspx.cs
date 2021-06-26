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
    public partial class usercart : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        protected void shishir()
        {
           
            if ((Session["user"] != null))
            {
                
                Label1.Text = "Welcome " + Session["user"];
                string s = "select item from cartitems where username='" + Session["user"] + "' ";
                da = new SqlDataAdapter(s, con);

                DataSet ds = new DataSet();
                da.Fill(ds);

                int rowneeded;
                rowneeded = ds.Tables[0].Rows.Count;
                if (rowneeded == 0)
                {
                    Panel2.Visible = true;
                    Label2.Visible = true;
                    Label2.Enabled = true;

                    Label2.Text = "No item added to cart currently";

                    Button14.Visible = true;
                    Button14.Enabled = true;



                }
                else
                {
                    Panel2.Visible = false;
                    Label2.Visible = false;
                    Button14.Visible = false;
                    Button14.Enabled = false;


                    Panel1.Visible = true;
                    Panel1.Enabled = true;

                    DataSet ds1 = new DataSet();
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        da = new SqlDataAdapter("select id,name,price,image,[desc] from master_data where id = '" + dr[0] + "'", con);
                    
                        da.Fill(ds1);



                    }

                    DataList1.DataSource = ds1;
                    DataList1.DataBind();





                }

            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
                con.Open();
                shishir();
            }

            
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

      
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
        }

        protected void Button15_Click(object sender, CommandEventArgs e)
        {

            if (e.CommandName.ToString() == "remove_item")
            {
                con = new SqlConnection(@"Data Source=LAPTOP-H5KP0AKL\SQLEXPRESS;Initial Catalog=ecart;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("delete from cartitems where item='" + e.CommandArgument.ToString() + "' AND username='" + Session["user"] + "'",con);
                cmd.ExecuteNonQuery();
                shishir();
               


            }

        }
    }
}