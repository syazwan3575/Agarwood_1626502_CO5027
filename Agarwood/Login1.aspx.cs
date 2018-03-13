using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Agarwood
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityEntityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityEntityDbContext);
            var usermanager = new UserManager<IdentityUser>(userStore);
            var user = usermanager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if(user != null)
            {
                LogUserIn();
            }
            else
            {
                litLoginError.Text = "Invalid username or password";
            }
        }
       private void LogUserIn(UserManager<IdentityUser>userManager, IdentityUser user) { 
            var authenticationmanager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            var authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);
                }
    }
}