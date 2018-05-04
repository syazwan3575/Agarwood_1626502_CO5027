using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Agarwood
{
    //code adapted from: http://www.coderbaba.in/2017/08/shopping-website-project-in-aspnet-with.html#comments
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {
            decimal postagePackaginCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityOfProduct = int.Parse(DropDownList1.SelectedValue);
            decimal subtotal = (quantityOfProduct * productPrice);
            decimal total = subtotal + postagePackaginCost;


            //authenticate paypal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential("AZGz4xOzBaj274iK3gb-SOqdmI3pr3tuQTjpveHlsAhLjuc8fmAHaY99xVXNEE22p_7AjDjbyMIcxb4B", "EKq9GvIOlzxZ58JdRSTTfIKRdOhEzDDe2a1vWPtP0Dc6j0LqRZHd_W0BSyIA4eNxP2lFu3OrU5SE0RQO").GetAccessToken();

            //Get APIcontext 
            var apiContext = new APIContext(accessToken);
            apiContext.Config = config;

            //items transaction and payment objects
            var ProductItem = new Item();
            ProductItem.name = "Oud one";
            ProductItem.currency = "GBP";
            ProductItem.price = productPrice.ToString();
            ProductItem.sku = "PEPCO5027";
            ProductItem.quantity = quantityOfProduct.ToString();

            //subtotal
            var transactionDets = new Details();
            transactionDets.tax = "0";
            transactionDets.shipping = postagePackaginCost.ToString();
            transactionDets.subtotal = subtotal.ToString();

            //amount object compromising total amount
            var transactionAmount = new Amount();
            transactionAmount.currency = "GBP";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDets;

            //transaction object
            var transobj = new Transaction();
            transobj.description = "your items";
            transobj.invoice_number = Guid.NewGuid().ToString();
            transobj.amount = transactionAmount;
            transobj.item_list = new ItemList
            {
                items = new List<Item> { ProductItem }
            };

            //buyer object
            var buyer = new Payer();
            buyer.payment_method = "paypal";

            //redirect to avoid error 404
            var redirection = new RedirectUrls();
            redirection.cancel_url = "http://1626502.studentwebserver.co.uk/CO5027/Products.aspx";
            redirection.return_url = "http://1626502.studentwebserver.co.uk/CO5027/CompletePurchase.aspx";

            //payment object
            var pay = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = buyer,
                transactions = new List<Transaction> { transobj },
                redirect_urls = redirection
            }
                );

            //create session
            Session["paymentId"] = pay.id;

            //URL to send user to from the links in the payment object
            foreach (var link in pay.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //send user to the appropritate link if link is found
                    Response.Redirect(link.href);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Products.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] price = { "", "25", "25", "25", "25", "25", "25", "35", "25" };
            Item.ImageUrl = "pics/" + DropDownList2.Text + ".jpg";
            int i = DropDownList2.SelectedIndex;
            Name.Text = "BND" + price[i];
            Button2.Visible = true;
        }


        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (ItemAdded(DropDownList2.Text))
            {
                Response.Write("<script>alert('selected item is already added in cart')</script>");
                return;
            }
            Session["ctr"] = (int)Session["ctr"] + 1;
            Product proj = new Product(DropDownList2.Text, Item.ImageUrl, Name.Text);
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

                if (name == p.name)
                {
                    found = true;
                    break;
                }
            }
            return found;

        }
    }
}