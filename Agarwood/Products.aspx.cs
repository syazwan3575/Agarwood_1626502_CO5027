﻿using System;
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
                Response.Redirect("ShoppingCart.aspx?id= { 0 }" + e.CommandArgument.ToString());

           }          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                Response.Redirect("ProductView.aspx ? Id ={ 0}");
        }
    }
}