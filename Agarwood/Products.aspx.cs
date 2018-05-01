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
    public partial class ViewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {

                Label3.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label3.Text = "0";
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        

        protected void Productlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Productlist_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "AddtoCart")
            {
                Response.Redirect("AddtoCart.aspx?id= { 0 }" + e.CommandArgument.ToString());

           }          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                Response.Redirect("ProductView.aspx ? Id ={ 0}");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["ctr"] = (int)Session["ctr"] + 1;
            Image img = (Image)Productlist.FindControl("Image1");
            Label lbl = (Label)Productlist.FindControl("Label2");
            
            Product proj = new Product(Productlist.FindControl("Image1"), Productlist.FindControl("Label2"));
            Session["p" + Session["ctr"]] = proj;
            Server.Transfer("Add.aspx");
        }
        bool ItemAdded(string name)
        {
            bool found = false;
            Session["ctr"] = 0;
            for (int c = 1; c <= (int)Session["ctr"]; c++)
            {
                Product p = (Product)Session["p" + c];

                if (name == p.ProductName)
                {
                    found = true;
                    break;
                }
            }
            return found;

        }

    }
}
