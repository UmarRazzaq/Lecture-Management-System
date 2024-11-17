using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accounts
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["info"] != null)
            {
                Session["userID"] = Request.Cookies["info"]["userID"];
                Session["FirstName"] = Request.Cookies["info"]["FirstName"];
                Session.Timeout = 720;

                Response.Redirect("home.aspx");
            }  
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            using (AccountEntities db = new AccountEntities())
            {
                var query = db.doLogin(txtemail.Text, txtpass.Text).ToList();
                if (query.Count > 0)
                {
                    Session["userID"] = query[0].userID;
                    Session["FirstName"] = query[0].FirstName;
                    Session.Timeout = 720;

                    Response.Cookies["info"]["userID"] = query[0].userID.ToString();
                    Response.Cookies["info"]["FirstName"] = query[0].FirstName;
                    Response.Cookies["info"].Expires = DateTime.Now.AddDays(1);

                    Response.Redirect("home.aspx");
                }
                else
                {
                    lbl_error.Text = "Invalid email address and password";
                }
            }
        }
    }
}