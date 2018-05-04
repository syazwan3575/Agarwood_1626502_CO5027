using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;


namespace Agarwood.Admins
{
    //code adapted from: http://www.coderbaba.in/2017/08/shopping-website-project-in-aspnet-with.html#comments
    public partial class ShoppingCart : System.Web.UI.Page
    {
        static int c;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["p1"] == null)
                {
                    pd.Visible = false;
                    Label3.Visible = true;
                    return;
                }
                Button1.Visible = true;
                Button2.Visible = true;
                c = 1;
                showItem(c);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (c == 1)
            {
                Response.Write("<script>alert('this is first product')</script>");
                return;
            }
            showItem(--c);
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (c == (int)Session["ctr"])
            {
                Response.Write("<script>alert('this is LAST product')</script>");
                return;
            }
            showItem(++c);
        }
        void showItem(int pn)
        {
            Label4.Text = pn + "of" + Session["ctr"];
            Product pd = (Product)Session["p" + pn];
            Label2.Text = pd.name;
            Image1.ImageUrl = pd.image;
            Label1.Text = pd.price;

        }
    }
}
