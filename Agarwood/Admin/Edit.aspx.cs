using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agarwood.Admins
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

      

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Add.aspx/");
        }

        protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView3.FindControl("FileUpload3") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/Admin/ProductImages" + fle.FileName));
                Label l1 = (Label)FormView3.FindControl("Label3") as Label;
                l1.Text = "~/Admin/ProductImages" + fle.FileName;
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView3.FindControl("FileUpload4") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/Admin/ProductImages" + fle.FileName));
                Label l1 = (Label)FormView3.FindControl("Label4") as Label;
                l1.Text = "~/Admin/ProductImages" + fle.FileName;
            }
        }
    }
    }