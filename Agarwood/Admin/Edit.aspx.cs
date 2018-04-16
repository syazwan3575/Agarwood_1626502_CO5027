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

        protected void LinkButton1_Click2(object sender, EventArgs e)
        {
            FileUpload fle = (FileUpload)FormView2.FindControl("FileUpload1") as FileUpload;
            if (fle.HasFile)
            {
                fle.SaveAs(Server.MapPath("~/Admin/ProductImages" + fle.FileName));
                Label l1 = (Label)FormView2.FindControl("Label1") as Label;
                l1.Text = "~/Admin/ProductImages" + fle.FileName;
            }
        }
    }
}