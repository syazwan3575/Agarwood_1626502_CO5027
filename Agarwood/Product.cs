using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agarwood
{
    //code from: http://www.coderbaba.in/2017/08/shopping-website-project-in-aspnet-with.html#comments
    public class Product
    {
        public string name, image, price;
        public Product(string na, string img, string pr)
        {
            name = na;
            image = img;
            price = pr;
        }
    }
}