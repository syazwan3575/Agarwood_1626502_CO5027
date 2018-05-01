using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Agarwood
{
    public partial class AddtoCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("ProductID");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("ProductPrice");
                dt.Columns.Add("ProductImage");
                dt.Columns.Add("cost");
                dt.Columns.Add("totalcost");

                if (Request.QueryString["Id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = "Data Source=SQL2016.FSE.Network;Initial Catalog=user_db_1626502_co5027_asg;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from view product where ProductID=" + Request.QueryString["Id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["ProductPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=SQL2016.FSE.Network;Initial Catalog=user_db_1626502_co5027_asg;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from view product where ProductID=" + Request.QueryString["Id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["ProductID"] = ds.Tables[0].Rows[0]["ProductID"].ToString();
                        dr["ProductName"] = ds.Tables[0].Rows[0]["ProductName"].ToString();
                        dr["ProductImage"] = ds.Tables[0].Rows[0]["ProductImage"].ToString();
                        dr["ProductPrice"] = ds.Tables[0].Rows[0]["ProductPrice"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }

            }
        }
    }
}