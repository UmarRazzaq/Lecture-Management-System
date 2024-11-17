using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accounts
{
    public partial class accounts : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public static void EmptyTextBoxes(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if (c.GetType() == typeof(TextBox))
                {
                    ((TextBox)(c)).Text = string.Empty;
                }
            }
        }

        protected void lnkbtn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void lnkbtn_signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }

        protected void img_home_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void footerimg_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void lnkbtn_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }
    }
}