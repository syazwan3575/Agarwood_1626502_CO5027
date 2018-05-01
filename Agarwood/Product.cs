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
    public class Product
    {
        public string ProductName, ProductImage, ProductPrice;
        public Control control1;
        public Control control2;

        public Product(Control img, Control pr)
        {
            this.control1 = img;
            this.control2 = pr;
        }

        public Product(string na, string img, string pr)
        {
            ProductName = na;
            ProductImage = img;
            ProductPrice = pr;
        }
    }
}